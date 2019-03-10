package com.miui.screenrecorder.activity;

import android.app.ActionBar;
import android.app.ActionBar.LayoutParams;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.provider.MediaStore.Video.Media;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.aeonax.PermissionsAsker;
import com.miui.screenrecorder.R;
import com.miui.screenrecorder.ScreenRecorderApplication;
import com.miui.screenrecorder.config.ScreenRecorderConfig;
import com.miui.screenrecorder.controller.MiuiScreenRecorderScannerController;
import com.miui.screenrecorder.controller.MiuiScreenRecorderScannerController.ScannerListener;
import com.miui.screenrecorder.data.GridItem;
import com.miui.screenrecorder.data.ScreenRecorderHomeAdapter;
import com.miui.screenrecorder.service.RecorderService;
import com.miui.screenrecorder.tools.DisplayUtils;
import com.miui.screenrecorder.tools.KoreaRegionUtils;
import com.miui.screenrecorder.tools.LogUtil;
import com.miui.screenrecorder.tools.MediaFileUtils;
import com.miui.screenrecorder.tools.MiStatInterfaceUtils;
import com.miui.screenrecorder.tools.MiStatKey;
import com.miui.screenrecorder.tools.ScreenRecorderUtils;
import com.miui.screenrecorder.view.ScreenRecordAlertDialog;
import com.miui.screenrecorder.widget.StickyGridHeadersGridView;
import com.xiaomi.stat.MiStatParams;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import miui.util.AttributeResolver;
import miui.widget.FloatingActionButton;

public class ScreenRecorderHomeActivity extends Activity {
    private static final float DEFAULT_SCREEN_RADIO = 1.778f;
    private static final int FRESH_DATA = 1;
    private static final Uri MEDIA_URL = Media.EXTERNAL_CONTENT_URI;
    private static final String MIME_TYPE = "video/mp4";
    private static final int REQUEST_CODE_SEND = 1;
    private static final String SETTINGS_ACTION = "miui.intent.action.SCREENRECORDER_SETTINGS";
    private static final String TAG = "ScreenRecorderHomeActivity";
    private TextView mActionBarLeft;
    private TextView mActionBarRight;
    private TextView mActionBarTitle;
    private ScreenRecorderHomeAdapter mAdapter;
    private ContentObserver mContentObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean selfChange, Uri uri) {
            super.onChange(selfChange, uri);
            if (uri == null) {
                LogUtil.i(ScreenRecorderHomeActivity.TAG, " mContentObserver.onChange unknown uri");
            } else if (MediaFileUtils.isVideoUri(uri).booleanValue()) {
                Message msg = new Message();
                msg.what = 1;
                ScreenRecorderHomeActivity.this.mHandler.removeMessages(1);
                ScreenRecorderHomeActivity.this.mHandler.sendMessage(msg);
                LogUtil.i(ScreenRecorderHomeActivity.TAG, "ContentObserver has deal wirh uri " + uri);
            } else {
                LogUtil.i(ScreenRecorderHomeActivity.TAG, " mContentObserver.onChange, current uri is" + uri + ", we only deal changes with content://media/external");
            }
        }
    };
    private ArrayList<GridItem> mDataList = new ArrayList();
    private ScreenRecordAlertDialog mDeleteDialog;
    private RelativeLayout mEmptyView;
    private Handler mHandler;
    private boolean mHasClickSendAction = false;
    private StickyGridHeadersGridView mHeadGridView;
    private boolean mIsFromSendAction = false;
    private boolean mIsInAllSelectMode = false;
    private boolean mIsInEditMode;
    private Locale mLocale;
    private View mProgressBar;
    private MiuiScreenRecorderScannerController mScannerController;
    private ScannerListener mScannerListener = new ScannerListener() {
        public void beforeScanner() {
            ScreenRecorderHomeActivity.this.startLoading();
        }

        public void scannerComplete(ArrayList<GridItem> dataList) {
            MiStatParams miStatParams = new MiStatParams();
            if (ScreenRecorderHomeActivity.this.mDataList != null) {
                ScreenRecorderHomeActivity.this.mDataList.clear();
            } else {
                ScreenRecorderHomeActivity.this.mDataList = new ArrayList();
            }
            ScreenRecorderHomeActivity.this.stopLoading();
            if (dataList == null || dataList.size() == 0) {
                miStatParams.putLong(MiStatKey.PARAM_FILE_COUNT, 0);
                MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_HOMEPAGE, MiStatKey.EVENT_RECORDER_FILE_COUNT, miStatParams);
                ScreenRecorderHomeActivity.this.showEmptyView();
                return;
            }
            int i;
            if (ScreenRecorderHomeActivity.this.mSelectedItem == null || ScreenRecorderHomeActivity.this.mSelectedItem.size() == 0) {
                for (i = 0; i < dataList.size(); i++) {
                    ScreenRecorderHomeActivity.this.mDataList.add(new GridItem((GridItem) dataList.get(i)));
                }
            } else {
                HashSet<String> tempSelected = new HashSet();
                for (i = 0; i < dataList.size(); i++) {
                    GridItem item = new GridItem((GridItem) dataList.get(i));
                    ScreenRecorderHomeActivity.this.mDataList.add(item);
                    if (ScreenRecorderHomeActivity.this.mSelectedItem.contains(item.getPath())) {
                        tempSelected.add(item.getPath());
                    }
                }
                ScreenRecorderHomeActivity.this.mSelectedItem.clear();
                ScreenRecorderHomeActivity.this.mSelectedItem = tempSelected;
                ScreenRecorderHomeActivity.this.mAdapter.setSelectedItem(ScreenRecorderHomeActivity.this.mSelectedItem);
                ScreenRecorderHomeActivity.this.updateActionBarTitle();
            }
            miStatParams.putLong(MiStatKey.PARAM_FILE_COUNT, (long) ScreenRecorderHomeActivity.this.mDataList.size());
            MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_HOMEPAGE, MiStatKey.EVENT_RECORDER_FILE_COUNT, miStatParams);
            ScreenRecorderHomeActivity.this.showDataView();
        }
    };
    private HashSet<String> mSelectedItem;
    private boolean mStopForSending = false;

    private static class DeleteRecordersTask extends AsyncTask<Void, Void, Boolean> {
        private WeakReference<ScreenRecorderHomeActivity> mContextRef;
        private HashSet<String> mOuterSelectedItem;

        /* synthetic */ DeleteRecordersTask(ScreenRecorderHomeActivity x0, HashSet x1, AnonymousClass1 x2) {
            this(x0, x1);
        }

        private DeleteRecordersTask(ScreenRecorderHomeActivity activity, HashSet<String> selectedItem) {
            this.mOuterSelectedItem = new HashSet();
            this.mContextRef = new WeakReference(activity);
            this.mOuterSelectedItem.addAll(selectedItem);
        }

        protected void onPreExecute() {
            if (this.mContextRef != null) {
                ScreenRecorderHomeActivity activity = (ScreenRecorderHomeActivity) this.mContextRef.get();
                if (activity != null) {
                    activity.startLoading();
                }
            }
        }

        protected Boolean doInBackground(Void... params) {
            if (this.mContextRef == null) {
                return Boolean.valueOf(false);
            }
            ScreenRecorderHomeActivity activity = (ScreenRecorderHomeActivity) this.mContextRef.get();
            if (activity == null) {
                return Boolean.valueOf(false);
            }
            ContentResolver contentResolver = activity.getContentResolver();
            Iterator it = this.mOuterSelectedItem.iterator();
            while (it.hasNext()) {
                MediaFileUtils.deleteFile(new File((String) it.next()));
                contentResolver.delete(ScreenRecorderHomeActivity.MEDIA_URL, "_data = '" + path + "'", null);
            }
            for (String path : MediaFileUtils.getMediaDirStrList()) {
                MediaFileUtils.scanFolder(activity, path);
            }
            return Boolean.valueOf(true);
        }

        protected void onPostExecute(Boolean result) {
            super.onPostExecute(result);
            if (this.mContextRef != null) {
                ScreenRecorderHomeActivity activity = (ScreenRecorderHomeActivity) this.mContextRef.get();
                if (activity != null) {
                    activity.cancelEdit();
                }
            }
        }
    }

    private static class HomeHandler extends Handler {
        private WeakReference<ScreenRecorderHomeActivity> mContextRef;

        /* synthetic */ HomeHandler(ScreenRecorderHomeActivity x0, AnonymousClass1 x1) {
            this(x0);
        }

        private HomeHandler(ScreenRecorderHomeActivity activity) {
            this.mContextRef = new WeakReference(activity);
        }

        public void handleMessage(Message msg) {
            if (this.mContextRef != null) {
                ScreenRecorderHomeActivity activity = (ScreenRecorderHomeActivity) this.mContextRef.get();
                if (activity != null) {
                    switch (msg.what) {
                        case 1:
                            activity.refreshData();
                            return;
                        default:
                            return;
                    }
                }
            }
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        PermissionsAsker.Ask(this);
        this.mLocale = ScreenRecorderUtils.getLocaleFromConfig(getResources().getConfiguration());
        initActionBarInNormal();
        setContentView(R.layout.screenrecorder_home);
        this.mHandler = new HomeHandler(this, null);
        getContentResolver().registerContentObserver(MEDIA_URL, true, this.mContentObserver);
        startLoading();
        setDefaultValue();
        init();
    }

    private void initActionBarInNormal() {
        if (this.mActionBarTitle == null || this.mActionBarLeft == null || this.mActionBarRight == null) {
            LayoutParams lp = new LayoutParams(-1, -1, 17);
            View actionBarView = LayoutInflater.from(this).inflate(R.layout.edit_mode_title, null, false);
            this.mActionBarTitle = (TextView) actionBarView.findViewById(16908310);
            this.mActionBarLeft = (TextView) actionBarView.findViewById(16908313);
            this.mActionBarRight = (TextView) actionBarView.findViewById(16908314);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setCustomView(actionBarView, lp);
            } else {
                return;
            }
        }
        this.mActionBarTitle.setText(getString(R.string.app_name));
        this.mActionBarLeft.setBackgroundResource(R.drawable.actionbar_setting);
        this.mActionBarLeft.setText(null);
        this.mActionBarLeft.setVisibility(4);
        this.mActionBarRight.setBackgroundResource(R.drawable.actionbar_setting);
        this.mActionBarRight.setText(null);
        this.mActionBarRight.setContentDescription(getString(R.string.settings));
        this.mActionBarRight.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ScreenRecorderHomeActivity.this.goSettings();
            }
        });
    }

    private void updateActionBarTitle() {
        if (this.mSelectedItem == null || this.mSelectedItem.size() == 0) {
            this.mActionBarTitle.setText(getString(R.string.home_title_none));
            return;
        }
        this.mActionBarTitle.setText(getResources().getQuantityString(R.plurals.home_title_selected, this.mSelectedItem.size(), new Object[]{Integer.valueOf(this.mSelectedItem.size())}));
    }

    private void initActionBarInEdit() {
        if (this.mActionBarTitle == null || this.mActionBarLeft == null || this.mActionBarRight == null) {
            LayoutParams lp = new LayoutParams(-1, -1, 17);
            View actionBarView = LayoutInflater.from(this).inflate(R.layout.edit_mode_title, null, false);
            this.mActionBarTitle = (TextView) actionBarView.findViewById(16908310);
            this.mActionBarLeft = (TextView) actionBarView.findViewById(16908313);
            this.mActionBarRight = (TextView) actionBarView.findViewById(16908314);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setCustomView(actionBarView, lp);
            } else {
                return;
            }
        }
        updateActionBarTitle();
        this.mActionBarLeft.setVisibility(0);
        this.mActionBarLeft.setBackground(getDrawable(R.drawable.miui_action_bar_cancel));
        this.mActionBarLeft.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ScreenRecorderHomeActivity.this.cancelEdit();
            }
        });
        this.mActionBarRight.setContentDescription(getString(R.string.select_all));
        this.mActionBarRight.setBackground(getDrawable(R.drawable.miui_ic_select_all));
        this.mActionBarRight.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (ScreenRecorderHomeActivity.this.mIsInAllSelectMode) {
                    ScreenRecorderHomeActivity.this.deselect();
                } else {
                    ScreenRecorderHomeActivity.this.selectAll();
                }
            }
        });
    }

    private void init() {
        int i;
        float radio;
        int i2 = 1;
        this.mIsInEditMode = false;
        this.mIsInAllSelectMode = false;
        this.mHasClickSendAction = false;
        this.mEmptyView = (RelativeLayout) findViewById(R.id.empty_view);
        ((FloatingActionButton) findViewById(R.id.start_recorder)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ScreenRecorderHomeActivity.this.startRecordService();
            }
        });
        findViewById(R.id.click_btn).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                ScreenRecorderHomeActivity.this.startRecordService();
            }
        });
        this.mHeadGridView = (StickyGridHeadersGridView) findViewById(R.id.grid_view);
        Display display = getWindowManager().getDefaultDisplay();
        DisplayMetrics dm = new DisplayMetrics();
        display.getRealMetrics(dm);
        if (dm.heightPixels == 0) {
            i = 1;
        } else {
            i = 0;
        }
        if (dm.widthPixels != 0) {
            i2 = 0;
        }
        if ((i | i2) != 0) {
            radio = DEFAULT_SCREEN_RADIO;
        } else {
            radio = ((float) dm.heightPixels) / ((float) dm.widthPixels);
            if (radio < 1.0f) {
                radio = 1.0f / radio;
            }
        }
        int gridViewWidth = (Math.min(dm.heightPixels, dm.widthPixels) / 2) - DisplayUtils.dip2px(this, 17.0f);
        this.mHeadGridView.setColumnWidth(gridViewWidth);
        this.mHeadGridView.setHorizontalSpacing(DisplayUtils.dip2px(this, 8.0f));
        this.mAdapter = new ScreenRecorderHomeAdapter(this, radio, gridViewWidth);
        this.mSelectedItem = new HashSet();
        this.mAdapter.setSelectedItem(this.mSelectedItem);
        this.mHeadGridView.setAdapter(this.mAdapter);
        this.mHeadGridView.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                if (ScreenRecorderHomeActivity.this.mDataList == null) {
                    return;
                }
                if (position < 0 && position >= ScreenRecorderHomeActivity.this.mDataList.size()) {
                    return;
                }
                if (ScreenRecorderHomeActivity.this.mIsInEditMode) {
                    ScreenRecorderHomeActivity.this.selectOneItem(position);
                } else {
                    ScreenRecorderHomeActivity.this.playVideo(position);
                }
            }
        });
        this.mHeadGridView.setOnItemLongClickListener(new OnItemLongClickListener() {
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, int position, long id) {
                if (ScreenRecorderHomeActivity.this.mIsInEditMode) {
                    ScreenRecorderHomeActivity.this.selectOneItem(position);
                    return false;
                }
                ScreenRecorderHomeActivity.this.launchEdit(position);
                return true;
            }
        });
    }

    private void showPermissionsForKorea() {
        KoreaRegionUtils.showPermissionsForKorea(this);
    }

    private void showEmptyView() {
        cancelEdit();
        this.mEmptyView.setVisibility(0);
        hideDataView();
    }

    private void hideEmptyView() {
        this.mEmptyView.setVisibility(8);
    }

    private void hideDataView() {
        this.mHeadGridView.setVisibility(8);
    }

    private void showDataView() {
        this.mHeadGridView.setVisibility(0);
        hideEmptyView();
        this.mAdapter.notifyDataSetChanged(this.mDataList);
    }

    private void startRecordService() {
        startService(new Intent(this, RecorderService.class));
        finish();
    }

    private void goSettings() {
        Intent intent = new Intent();
        intent.setAction(SETTINGS_ACTION);
        startActivity(intent);
    }

    private void playVideo(int position) {
        if (this.mDataList == null) {
            return;
        }
        if (position >= 0 || position < this.mDataList.size()) {
            MiStatParams miStatParams = new MiStatParams();
            miStatParams.putString(MiStatKey.PARAM_APP_ACTION, MiStatKey.VALUE_PLAY_VIDEO);
            MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_HOMEPAGE, MiStatKey.EVENT_HOMEPAGE_ACTION, miStatParams);
            ScreenRecorderUtils.playVideoInHome(this, ((GridItem) this.mDataList.get(position)).getPath());
        }
    }

    private void launchEdit(int position) {
        this.mIsInEditMode = true;
        initActionBarInEdit();
        invalidateOptionsMenu();
        this.mAdapter.setIsEditMode(this.mIsInEditMode);
        selectOneItem(position);
    }

    private void selectOneItem(int position) {
        if (this.mDataList == null) {
            return;
        }
        if (position >= 0 || position < this.mDataList.size()) {
            if (this.mSelectedItem == null) {
                this.mSelectedItem = new HashSet();
                this.mAdapter.setSelectedItem(this.mSelectedItem);
            }
            String path = ((GridItem) this.mDataList.get(position)).getPath();
            if (this.mSelectedItem.contains(path)) {
                this.mSelectedItem.remove(path);
            } else {
                this.mSelectedItem.add(path);
            }
            this.mIsInAllSelectMode = this.mSelectedItem.size() == this.mDataList.size();
            updateSelectBtnText();
            updateActionBarTitle();
            this.mAdapter.notifyDataSetChanged();
            invalidateOptionsMenu();
        }
    }

    private void cancelEdit() {
        this.mIsInEditMode = false;
        this.mIsInAllSelectMode = false;
        initActionBarInNormal();
        invalidateOptionsMenu();
        this.mAdapter.setIsEditMode(false);
        if (this.mSelectedItem != null) {
            this.mSelectedItem.clear();
        }
        this.mAdapter.notifyDataSetChanged();
    }

    private void startLoading() {
        if (this.mProgressBar == null) {
            this.mProgressBar = findViewById(R.id.progressBar);
        }
        this.mProgressBar.setVisibility(0);
    }

    private void stopLoading() {
        if (this.mProgressBar == null) {
            this.mProgressBar = findViewById(R.id.progressBar);
        }
        this.mProgressBar.setVisibility(8);
    }

    private void deleteRecorders() {
        if (this.mSelectedItem != null && this.mSelectedItem.size() != 0) {
            new DeleteRecordersTask(this, this.mSelectedItem, null).execute(new Void[0]);
        }
    }

    private void sendRecorder() {
        if (this.mSelectedItem != null && !this.mSelectedItem.isEmpty()) {
            boolean multiple;
            Intent intent;
            MiStatParams miStatParams = new MiStatParams();
            miStatParams.putString(MiStatKey.PARAM_APP_ACTION, MiStatKey.VALUE_SEND_VIDEO);
            MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_HOMEPAGE, MiStatKey.EVENT_HOMEPAGE_ACTION, miStatParams);
            ArrayList<Uri> uris = new ArrayList();
            Iterator<String> iter = this.mSelectedItem.iterator();
            while (iter.hasNext()) {
                uris.add(Uri.fromFile(new File((String) iter.next())));
            }
            if (this.mSelectedItem.size() > 1) {
                multiple = true;
            } else {
                multiple = false;
            }
            if (multiple) {
                intent = new Intent("android.intent.action.SEND_MULTIPLE");
                intent.putParcelableArrayListExtra("android.intent.extra.STREAM", uris);
            } else {
                intent = new Intent("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.STREAM", (Parcelable) uris.get(0));
            }
            intent.setFlags(1);
            intent.setType(MIME_TYPE);
            startActivityForResult(Intent.createChooser(intent, getString(R.string.operation_send)), 1);
            this.mHasClickSendAction = true;
        }
    }

    private void selectAll() {
        if (this.mDataList != null) {
            if (this.mSelectedItem == null) {
                this.mSelectedItem = new HashSet();
                this.mAdapter.setSelectedItem(this.mSelectedItem);
            }
            for (int i = 0; i < this.mDataList.size(); i++) {
                this.mSelectedItem.add(((GridItem) this.mDataList.get(i)).getPath());
            }
            this.mIsInAllSelectMode = true;
            updateSelectBtnText();
            updateActionBarTitle();
            this.mAdapter.notifyDataSetChanged();
            invalidateOptionsMenu();
        }
    }

    private void deselect() {
        if (this.mDataList != null && this.mSelectedItem != null) {
            this.mSelectedItem.clear();
            this.mIsInAllSelectMode = false;
            updateSelectBtnText();
            updateActionBarTitle();
            this.mAdapter.notifyDataSetChanged();
            invalidateOptionsMenu();
        }
    }

    private void deleteDialog() {
        if (this.mSelectedItem != null && this.mSelectedItem.size() != 0) {
            if (this.mDeleteDialog == null || !this.mDeleteDialog.isShowing()) {
                if (this.mDeleteDialog == null) {
                    int dialogTheme = 5;
                    if (DisplayUtils.isNightMode(ScreenRecorderApplication.getContext())) {
                        dialogTheme = 4;
                    }
                    this.mDeleteDialog = new ScreenRecordAlertDialog(this, dialogTheme);
                    this.mDeleteDialog.setCanceledOnTouchOutside(false);
                    this.mDeleteDialog.setCancelable(true);
                }
                this.mDeleteDialog.setTitle(getString(R.string.operation_delete));
                this.mDeleteDialog.setMessage(getResources().getQuantityString(R.plurals.delete_confirm_text, this.mSelectedItem.size(), new Object[]{Integer.valueOf(this.mSelectedItem.size())}));
                this.mDeleteDialog.setButton(-1, getString(R.string.operation_delete), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        ScreenRecorderHomeActivity.this.mDeleteDialog.dismiss();
                        ScreenRecorderHomeActivity.this.mDeleteDialog = null;
                        MiStatParams miStatParams = new MiStatParams();
                        miStatParams.putString(MiStatKey.PARAM_APP_ACTION, MiStatKey.VALUE_DELETE_VIDEO);
                        MiStatInterfaceUtils.trackEvent(MiStatKey.GROUP_HOMEPAGE, MiStatKey.EVENT_HOMEPAGE_ACTION, miStatParams);
                        ScreenRecorderHomeActivity.this.deleteRecorders();
                    }
                });
                this.mDeleteDialog.setButton(-2, getString(R.string.cancel_edit), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        ScreenRecorderHomeActivity.this.mDeleteDialog.dismiss();
                        ScreenRecorderHomeActivity.this.mDeleteDialog = null;
                    }
                });
                this.mDeleteDialog.show();
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 16908313, 0, getString(R.string.operation_send)).setIcon(AttributeResolver.resolve(this, miui.R.attr.actionBarSendIcon)).setShowAsAction(1);
        menu.add(0, 16908314, 0, getString(R.string.operation_delete)).setIcon(AttributeResolver.resolve(this, miui.R.attr.actionBarDeleteIcon)).setShowAsAction(1);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 16908313) {
            sendRecorder();
            cancelEdit();
        } else if (item.getItemId() == 16908314) {
            deleteDialog();
        }
        return super.onOptionsItemSelected(item);
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        if (menu != null) {
            boolean isEnable = this.mIsInEditMode && this.mSelectedItem.size() > 0;
            for (int i = 0; i < menu.size(); i++) {
                menu.getItem(i).setVisible(this.mIsInEditMode);
                menu.getItem(i).setEnabled(isEnable);
            }
        }
        return super.onPrepareOptionsMenu(menu);
    }

    private void updateSelectBtnText() {
        if (this.mIsInAllSelectMode) {
            this.mActionBarRight.setBackground(getDrawable(R.drawable.miui_ic_deselect_all));
            this.mActionBarRight.setContentDescription(getString(R.string.deselect_all));
            return;
        }
        this.mActionBarRight.setBackground(getDrawable(R.drawable.miui_ic_select_all));
        this.mActionBarRight.setContentDescription(getString(R.string.select_all));
    }

    protected void onStop() {
        super.onStop();
        if (this.mHasClickSendAction && this.mIsInEditMode) {
            this.mHasClickSendAction = false;
            this.mStopForSending = true;
        }
    }

    protected void onStart() {
        super.onStart();
        if (!this.mIsFromSendAction) {
            this.mStopForSending = false;
        }
        refreshData();
    }

    protected void onResume() {
        super.onResume();
        MiStatInterfaceUtils.recordPageStart("ScreenRecorderHomePage");
        showPermissionsForKorea();
        if (this.mStopForSending && this.mIsFromSendAction && this.mIsInEditMode) {
            cancelEdit();
        }
        this.mStopForSending = false;
        this.mIsFromSendAction = false;
        this.mHasClickSendAction = false;
    }

    protected void onPause() {
        super.onPause();
        MiStatInterfaceUtils.recordPageEnd("ScreenRecorderHomePage");
    }

    protected void onDestroy() {
        super.onDestroy();
        this.mHandler.removeMessages(1);
        getContentResolver().unregisterContentObserver(this.mContentObserver);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || event.getRepeatCount() != 0 || !this.mIsInEditMode) {
            return super.onKeyDown(keyCode, event);
        }
        cancelEdit();
        return true;
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        KoreaRegionUtils.processCallBack(requestCode, resultCode);
    }

    private void refreshData() {
        if (this.mScannerController == null) {
            this.mScannerController = new MiuiScreenRecorderScannerController();
        }
        ArrayList<GridItem> dataList = new ArrayList();
        dataList.addAll(this.mDataList);
        this.mScannerController.scanRecorders(this.mScannerListener, dataList);
    }

    private void setDefaultValue() {
        if (TextUtils.isEmpty(ScreenRecorderConfig.defaultResolution)) {
            ScreenRecorderConfig.setDefaultValue(this);
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        Locale locale = ScreenRecorderUtils.getLocaleFromConfig(newConfig);
        if (!this.mLocale.equals(locale)) {
            this.mLocale = locale;
            ScreenRecorderConfig.setDefaultValue(this);
            if (this.mActionBarTitle != null) {
                this.mActionBarTitle.setText(getString(R.string.app_name));
            }
            if (this.mEmptyView != null) {
                ((TextView) this.mEmptyView.findViewById(R.id.tv_tip1)).setText(R.string.no_recorder_info);
                ((TextView) this.mEmptyView.findViewById(R.id.tv_tip2)).setText(R.string.no_recorder_info2);
            }
        }
    }
}

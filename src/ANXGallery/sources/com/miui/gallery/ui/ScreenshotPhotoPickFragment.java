package com.miui.gallery.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter;
import com.miui.gallery.adapter.AlbumDetailSimpleAdapter.AlbumType;
import com.miui.gallery.adapter.AlbumDetailTimeLineAdapter;
import com.miui.gallery.cleaner.ScannerManager;
import com.miui.gallery.cleaner.ScreenshotScanner;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.SortByHeader.SortBy;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.miui.gallery.widget.editwrapper.SimpleMultiChoiceModeListener;
import java.util.HashMap;
import miui.gallery.support.MiuiSdkCompat;
import miui.hybrid.Response;

public class ScreenshotPhotoPickFragment extends PhotoListFragmentBase {
    public static final int[] DELETE_COUNT_STAGE = new int[]{20, 50, 100, Response.CODE_GENERIC_ERROR, 500, 1000};
    private AlbumDetailTimeLineAdapter mAdapter;
    private DataSetObserver mDataSetObserver = new DataSetObserver() {
        public void onChanged() {
            if (ScreenshotPhotoPickFragment.this.mIsFirstLoadFinish && ScreenshotPhotoPickFragment.this.mAdapter.getCount() > 0) {
                ScreenshotPhotoPickFragment.this.mIsFirstLoadFinish = false;
                ScreenshotPhotoPickFragment.this.mGridViewWrapper.setAllItemsCheckState(true);
            }
            ScreenshotPhotoPickFragment.this.onItemSelectedChanged();
        }
    };
    private Button mDeleteButton;
    private OnClickListener mDeleteButtonClickListener = new OnClickListener() {
        public void onClick(View v) {
            long[] ids = ScreenshotPhotoPickFragment.this.mGridViewWrapper.getCheckedItemIds();
            if (ids != null && ids.length > 0) {
                MediaAndAlbumOperations.delete(ScreenshotPhotoPickFragment.this.mActivity, "ScreenshotPhotoPickFragmentDeleteMediaDialogFragment", new OnDeletionCompleteListener() {
                    public void onDeleted(int count, long[] deleteIds) {
                        if (ScreenshotPhotoPickFragment.this.mActivity != null) {
                            ToastUtils.makeText(ScreenshotPhotoPickFragment.this.mActivity, ScreenshotPhotoPickFragment.this.getString(R.string.delete_finish_format, new Object[]{Integer.valueOf(count)}));
                            if (count > 0) {
                                SoundUtils.playSoundForOperation(ScreenshotPhotoPickFragment.this.mActivity, 0);
                            }
                            ScreenshotPhotoPickFragment.this.mScanner.removeItems(deleteIds);
                            ScreenshotPhotoPickFragment.this.mScanResultIds = ScreenshotPhotoPickFragment.this.mScanner.getScanResultIds();
                            ScreenshotPhotoPickFragment.this.mGridViewWrapper.setAllItemsCheckState(false);
                            if (ScreenshotPhotoPickFragment.this.mScanResultIds.length <= 0) {
                                ScreenshotPhotoPickFragment.this.mActivity.finish();
                            }
                            HashMap<String, String> params = new HashMap();
                            params.put("deleteCount", BaseSamplingStatHelper.formatValueStage((float) count, ScreenshotPhotoPickFragment.DELETE_COUNT_STAGE));
                            BaseSamplingStatHelper.recordCountEvent("cleaner", "cleaner_screenshot_used", params);
                        }
                    }
                }, -1, "", 2, 46, ids);
            }
        }
    };
    private EditableListViewWrapperDeprecated mGridViewWrapper;
    private boolean mIsFirstLoadFinish = true;
    private SimpleMultiChoiceModeListener mMultiChoiceModeListener = new SimpleMultiChoiceModeListener() {
        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            ScreenshotPhotoPickFragment.this.onItemSelectedChanged();
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            ScreenshotPhotoPickFragment.this.onItemSelectedChanged();
        }
    };
    private long[] mScanResultIds;
    private ScreenshotScanner mScanner;
    private Button mSelectButton;
    private OnClickListener mSelectListener = new OnClickListener() {
        public void onClick(View v) {
            boolean checked = !ScreenshotPhotoPickFragment.this.mGridViewWrapper.isAllItemsChecked();
            ScreenshotPhotoPickFragment.this.mGridViewWrapper.setAllItemsCheckState(checked);
            if (!checked) {
                BaseSamplingStatHelper.recordCountEvent("cleaner", "screenshot_select_all_cancel");
            }
        }
    };

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onInflateView(inflater, container, savedInstanceState);
        this.mActivity.getActionBar().setTitle(R.string.cleaner_screen_shot_title);
        this.mAdapter = new AlbumDetailTimeLineAdapter(this.mActivity);
        this.mAdapter.setCurrentSortBy(SortBy.DATE);
        this.mAdapter.setAlbumType(AlbumType.SCREENSHOT);
        this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
        this.mGridViewWrapper = new EditableListViewWrapperDeprecated(this.mAlbumDetailGridView);
        this.mGridViewWrapper.setAdapter(this.mAdapter);
        this.mGridViewWrapper.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mGridViewWrapper.setEmptyView(this.mEmptyView);
        this.mGridViewWrapper.setMultiChoiceModeListener(this.mMultiChoiceModeListener);
        this.mGridViewWrapper.startChoiceMode();
        this.mDeleteButton = (Button) view.findViewById(R.id.delete);
        this.mDeleteButton.setOnClickListener(this.mDeleteButtonClickListener);
        this.mSelectButton = (Button) this.mActivity.getActionBar().getCustomView().findViewById(R.id.do_select);
        MiuiSdkCompat.setEditActionModeButton(this.mActivity, this.mSelectButton, 0);
        this.mSelectButton.setOnClickListener(this.mSelectListener);
        this.mScanner = (ScreenshotScanner) ScannerManager.getInstance().getScanner(1);
        this.mScanResultIds = this.mScanner.getScanResultIds();
        return view;
    }

    private void onItemSelectedChanged() {
        int i = 1;
        if (this.mAdapter.getCount() > 0) {
            this.mDeleteButton.setEnabled(this.mGridViewWrapper.getCheckedItemCount() > 0);
            this.mSelectButton.setVisibility(0);
            Context context = this.mActivity;
            Button button = this.mSelectButton;
            if (!this.mGridViewWrapper.isAllItemsChecked()) {
                i = 0;
            }
            MiuiSdkCompat.setEditActionModeButton(context, button, i);
            return;
        }
        this.mDeleteButton.setEnabled(false);
        this.mSelectButton.setVisibility(8);
    }

    protected int getLayoutSource() {
        return R.layout.screenshot_photo_pick_layout;
    }

    protected AlbumDetailSimpleAdapter getAdapter() {
        return this.mAdapter;
    }

    protected Uri getUri() {
        return Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("generate_headers", String.valueOf(true)).build();
    }

    protected String getSelection() {
        return String.format("%s IN (%s) AND %s", new Object[]{"_id", TextUtils.join(",", MiscUtil.arrayToList(this.mScanResultIds)), ScreenshotScanner.VALID_FILE});
    }

    protected String[] getSelectionArgs() {
        return null;
    }

    public String getPageName() {
        return "cleaner_screenshot_photo_pick";
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (newConfig.orientation == 2) {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbScreenshotColumnsLand);
        } else {
            this.mAlbumDetailGridView.setNumColumns(ThumbConfig.get().sMicroThumbScreenshotColumnsPortrait);
        }
    }
}

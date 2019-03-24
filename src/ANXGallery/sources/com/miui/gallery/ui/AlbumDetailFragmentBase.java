package com.miui.gallery.ui;

import android.accounts.Account;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.google.common.collect.Lists;
import com.miui.account.AccountHelper;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.adapter.CheckableAdapter.CheckedItem;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.picker.PickGalleryActivity;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.provider.ShareMediaManager;
import com.miui.gallery.scanner.MediaScannerUtil;
import com.miui.gallery.share.Path;
import com.miui.gallery.share.UIHelper;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.CopyOrMoveDialog.OnOperationSelectedListener;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.util.AppFocusedCheckHelper;
import com.miui.gallery.util.AppFocusedCheckHelper.OnAppFocusedListener;
import com.miui.gallery.util.BuildUtil;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.MediaAndAlbumOperations.OnAddAlbumListener;
import com.miui.gallery.util.MediaAndAlbumOperations.OnCompleteListener;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.SortByHeader.SortBy;
import com.miui.gallery.widget.editwrapper.EditableListViewWrapperDeprecated;
import com.miui.gallery.widget.editwrapper.MultiChoiceModeListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import miui.app.AlertDialog;

public abstract class AlbumDetailFragmentBase extends PhotoListFragmentBase implements OnAppFocusedListener {
    private static final String SELECTION_ONLY_LOCAL = (" AND " + Cloud.ALIAS_LOCAL_MEDIA);
    protected EditableListViewWrapperDeprecated mAlbumDetailGridViewWrapper;
    protected String mAlbumLocalPath;
    private AppFocusedCheckHelper mAppFocusedCheckHelper;
    private MultiChoiceModeListener mChoiceModeListener = new MultiChoiceModeListener() {
        private MenuItem mAddToAlbum;
        private MenuItem mCreativity;
        private MenuItem mDelete;
        private ActionMode mMode;
        private MenuItem mRemoveSecret;
        private MenuItem mSend;

        public void onAllItemsCheckedStateChanged(ActionMode mode, boolean checked) {
            updateMenuState();
        }

        public void onItemCheckedStateChanged(ActionMode mode, int position, long id, boolean checked) {
            updateMenuState();
        }

        public boolean onCreateActionMode(ActionMode mode, Menu menu) {
            this.mMode = mode;
            if (AlbumDetailFragmentBase.this.isSecretAlbum()) {
                mode.getMenuInflater().inflate(R.menu.secret_page_menu, menu);
                this.mRemoveSecret = menu.findItem(R.id.remove_secret);
            } else {
                mode.getMenuInflater().inflate(BuildUtil.isMiuiSdkGte15(AlbumDetailFragmentBase.this.mActivity) ? R.menu.v15_home_page_menu : R.menu.home_page_menu, menu);
                this.mAddToAlbum = menu.findItem(R.id.add_to_album);
                this.mCreativity = menu.findItem(R.id.action_produce);
            }
            this.mDelete = menu.findItem(R.id.delete);
            if (this.mCreativity != null) {
                this.mCreativity.setVisible(!AlbumDetailFragmentBase.this.isVideoAlbum());
            }
            if (this.mDelete != null) {
                this.mDelete.setVisible(true);
            }
            this.mSend = menu.findItem(R.id.action_send);
            BaseSamplingStatHelper.recordCountEvent("album_detail", "action_mode_create");
            AlbumDetailFragmentBase.this.onEnterActionMode();
            return true;
        }

        public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
            return false;
        }

        public boolean onActionItemClicked(final ActionMode mode, MenuItem item) {
            switch (item.getItemId()) {
                case R.id.delete /*2131886699*/:
                    AlbumDetailFragmentBase.this.doDelete(mode);
                    break;
                case R.id.action_produce /*2131886849*/:
                    MediaAndAlbumOperations.doProduceCreation(AlbumDetailFragmentBase.this.mActivity, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            List<CheckedItem> selectedItems = AlbumDetailFragmentBase.this.mAlbumDetailGridViewWrapper.getCheckedItems();
                            int bestImageCount = 0;
                            for (int i = 0; i < selectedItems.size(); i++) {
                                if (ImageFeatureCacheManager.getInstance().isBestImage(((CheckedItem) selectedItems.get(i)).getId(), false)) {
                                    bestImageCount++;
                                }
                            }
                            Map map = new HashMap();
                            map.put("count", Integer.valueOf(selectedItems.size()));
                            map.put("best_image_count", Integer.valueOf(bestImageCount));
                            BaseSamplingStatHelper.recordCountEvent("album_detail", "produce", map);
                            mode.finish();
                        }
                    }, AlbumDetailFragmentBase.this.mAlbumDetailGridViewWrapper.getCheckedItems());
                    break;
                case R.id.action_send /*2131886850*/:
                    AlbumDetailFragmentBase.this.onSend(null, null);
                    break;
                case R.id.add_to_album /*2131886852*/:
                    boolean z;
                    Activity activity = AlbumDetailFragmentBase.this.mActivity;
                    OnAddAlbumListener anonymousClass1 = new OnAddAlbumListener() {
                        public void onComplete(long[] result, boolean deleteOrigin) {
                            AnonymousClass8.this.mMode.finish();
                            BaseSamplingStatHelper.recordCountEvent("album_detail", "add_to_album");
                        }
                    };
                    if (AlbumDetailFragmentBase.this.isVirtualAlbum()) {
                        z = false;
                    } else {
                        z = true;
                    }
                    MediaAndAlbumOperations.addToAlbum(activity, anonymousClass1, 0, z, AlbumDetailFragmentBase.this.canAddSecret(), AlbumDetailFragmentBase.this.mAlbumDetailGridViewWrapper.getCheckedItemIds());
                    break;
                case R.id.remove_secret /*2131886869*/:
                    MediaAndAlbumOperations.removeFromSecretAlbum(AlbumDetailFragmentBase.this.mActivity, new OnCompleteListener() {
                        public void onComplete(long[] result) {
                            mode.finish();
                            BaseSamplingStatHelper.recordCountEvent("album_detail", "remove_from_secret");
                        }
                    }, AlbumDetailFragmentBase.this.mAlbumDetailGridViewWrapper.getCheckedItemIds());
                    break;
                default:
                    return false;
            }
            return true;
        }

        public void onDestroyActionMode(ActionMode mode) {
        }

        private void updateMenuState() {
            if (AlbumDetailFragmentBase.this.mAlbumDetailGridViewWrapper.getCheckedItemCount() < 1) {
                if (isMenuItemVisible(this.mDelete)) {
                    this.mDelete.setEnabled(false);
                }
                if (isMenuItemVisible(this.mAddToAlbum)) {
                    this.mAddToAlbum.setEnabled(false);
                }
                if (isMenuItemVisible(this.mCreativity)) {
                    this.mCreativity.setEnabled(false);
                }
                if (isMenuItemVisible(this.mRemoveSecret)) {
                    this.mRemoveSecret.setEnabled(false);
                }
                if (isMenuItemVisible(this.mSend)) {
                    this.mSend.setEnabled(false);
                    return;
                }
                return;
            }
            if (isMenuItemVisible(this.mDelete)) {
                this.mDelete.setEnabled(true);
            }
            if (isMenuItemVisible(this.mAddToAlbum)) {
                this.mAddToAlbum.setEnabled(true);
            }
            if (isMenuItemVisible(this.mCreativity)) {
                this.mCreativity.setEnabled(true);
            }
            if (isMenuItemVisible(this.mRemoveSecret)) {
                this.mRemoveSecret.setEnabled(true);
            }
            if (isMenuItemVisible(this.mSend)) {
                this.mSend.setEnabled(true);
            }
        }

        private boolean isMenuItemVisible(MenuItem item) {
            return item != null && item.isVisible();
        }
    };
    protected int mDailyAlbumDate;
    private Dialog mDialog;
    private boolean mEnableAutoUploadPending;
    protected boolean mIsDailyAlbum;
    protected boolean mIsFavoritesAlbum;
    protected boolean mIsLocalAlbum;
    protected boolean mIsOtherShareAlbum;
    protected boolean mIsPanoAlbum;
    protected boolean mIsScreenshotAlbum;
    private boolean mIsShareAlbum;
    protected String mScreenshotAppName;
    private boolean mSharePending;
    private VoiceAssistantReceiver mVoiceAssistantReceiver;

    private static class AlbumScanTask implements Job<Void> {
        private final long mAlbumId;
        private final String mAlbumLocalPath;

        public AlbumScanTask(String albumLocalPath, long albumId) {
            this.mAlbumLocalPath = albumLocalPath;
            this.mAlbumId = albumId;
        }

        public Void run(JobContext jc) {
            Context context = GalleryApp.sGetAndroidContext();
            Object[] paths = StorageUtils.getAbsolutePath(context, this.mAlbumLocalPath);
            if (paths != null && paths.length > 0) {
                MediaScannerUtil.scanDirectories(context, Lists.newArrayList(paths), 3, false);
            }
            if (this.mAlbumId > 0) {
                MediaScannerUtil.cleanupByAlbumId(context, 4, Lists.newArrayList(String.valueOf(this.mAlbumId)));
            }
            return null;
        }
    }

    private class VoiceAssistantReceiver extends BroadcastReceiver {
        private VoiceAssistantReceiver() {
        }

        /* synthetic */ VoiceAssistantReceiver(AlbumDetailFragmentBase x0, AnonymousClass1 x1) {
            this();
        }

        public void onReceive(Context context, Intent intent) {
            if (AlbumDetailFragmentBase.this.mAlbumDetailGridViewWrapper.isInActionMode()) {
                AlbumDetailFragmentBase.this.onSend(intent.getStringExtra("assistant_target_package"), intent.getStringExtra("assistant_target_class"));
            }
        }
    }

    protected abstract String getCreatorIdByPosition(int i);

    protected abstract long getMediaIdByPosition(int i);

    protected abstract boolean needEnableAutoUpload();

    protected abstract void onEnterActionMode();

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = super.onInflateView(inflater, container, savedInstanceState);
        Intent intent = this.mActivity.getIntent();
        this.mAlbumName = intent.getStringExtra("album_name");
        this.mAlbumId = intent.getLongExtra("album_id", -1);
        this.mIsOtherShareAlbum = intent.getBooleanExtra("other_share_album", false);
        this.mIsLocalAlbum = intent.getBooleanExtra("is_local_album", false);
        this.mIsScreenshotAlbum = intent.getBooleanExtra("screenshot_album", false);
        this.mScreenshotAppName = intent.getStringExtra("screenshot_app_name");
        boolean z = this.mIsOtherShareAlbum || intent.getBooleanExtra("owner_share_album", false);
        this.mIsShareAlbum = z;
        this.mIsPanoAlbum = intent.getBooleanExtra("pano_album", false);
        this.mIsDailyAlbum = intent.getBooleanExtra("daily_album", false);
        if (this.mIsDailyAlbum) {
            this.mDailyAlbumDate = intent.getIntExtra("daily_album_date", -1);
            if (this.mDailyAlbumDate <= 0) {
                finish();
            }
        }
        this.mIsFavoritesAlbum = intent.getBooleanExtra("favorites_album", false);
        this.mAlbumDetailGridViewWrapper = new EditableListViewWrapperDeprecated(this.mAlbumDetailGridView);
        this.mAlbumDetailGridViewWrapper.setEmptyView(this.mEmptyView);
        if (this.mIsScreenshotAlbum || this.mIsPanoAlbum) {
            this.mAlbumDetailGridViewWrapper.disableScaleImageViewAniWhenInActionMode();
        }
        this.mEmptyView.setVisibility(8);
        this.mAlbumDetailGridViewWrapper.setOnItemClickListener(getGridViewOnItemClickListener());
        this.mAlbumDetailGridViewWrapper.setChoiceMode(3);
        this.mAlbumDetailGridViewWrapper.setMultiChoiceModeListener(this.mChoiceModeListener);
        updateConfiguration(getResources().getConfiguration());
        return view;
    }

    private void scanAlbumFolderIfNeeded() {
        if (!this.mIsOtherShareAlbum && !isVirtualAlbum() && this.mAlbumLocalPath != null) {
            ThreadManager.getMiscPool().submit(new AlbumScanTask(this.mAlbumLocalPath, this.mAlbumId));
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mAlbumLocalPath = this.mActivity.getIntent().getStringExtra("album_local_path");
        this.mAppFocusedCheckHelper = new AppFocusedCheckHelper(this);
    }

    public void onStart() {
        super.onStart();
        this.mAppFocusedCheckHelper.onStart();
    }

    public void onStop() {
        super.onStop();
        this.mAppFocusedCheckHelper.onStop();
    }

    public void onResume() {
        super.onResume();
        consumePendingEvent();
        if (this.mVoiceAssistantReceiver == null) {
            this.mVoiceAssistantReceiver = new VoiceAssistantReceiver(this, null);
            LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.mVoiceAssistantReceiver, new IntentFilter("com.miui.gallery.action.VOICE_ASSISTANT_SELECT_SHARE"));
        }
    }

    public void onPause() {
        super.onPause();
        if (this.mVoiceAssistantReceiver != null) {
            LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.mVoiceAssistantReceiver);
            this.mVoiceAssistantReceiver = null;
        }
    }

    public void onDestroy() {
        this.mAppFocusedCheckHelper.onDestroy();
        super.onDestroy();
        if (this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.dismiss();
        }
    }

    protected void consumePendingEvent() {
        if (this.mEnableAutoUploadPending) {
            if (!SyncUtil.existXiaomiAccount(this.mActivity)) {
                ToastUtils.makeText(this.mActivity, (int) R.string.xiaomi_account_not_exists_toast);
            } else if (!ContentResolver.getMasterSyncAutomatically()) {
                ToastUtils.makeText(this.mActivity, (int) R.string.sync_diabled_toast);
            } else if (doChangeAutoUpload(true) && this.mSharePending) {
                doShare();
            }
        }
        this.mEnableAutoUploadPending = false;
        this.mSharePending = false;
    }

    protected boolean isSecretAlbum() {
        return this.mAlbumId == -1000;
    }

    public boolean isDailyAlbum() {
        return this.mIsDailyAlbum;
    }

    protected boolean isOthersShareAlbum() {
        return this.mIsOtherShareAlbum;
    }

    protected boolean isVideoAlbum() {
        return this.mAlbumId == 2147483647L;
    }

    protected boolean isPanoAlbum() {
        return this.mAlbumId == 2147483645;
    }

    protected boolean isFavoritesAlbum() {
        return this.mAlbumId == 2147483642;
    }

    protected boolean isVirtualAlbum() {
        return isVideoAlbum() || isPanoAlbum() || isSecretAlbum() || isDailyAlbum() || isFavoritesAlbum();
    }

    private boolean isOnlyShowLocal() {
        return LocalMode.isOnlyShowLocalPhoto();
    }

    protected String getSelection() {
        if (isOthersShareAlbum()) {
            return null;
        }
        StringBuilder builder = new StringBuilder();
        if (isVideoAlbum()) {
            builder.append("serverType = ? AND ");
            builder.append("alias_hidden = ?");
        } else if (isPanoAlbum()) {
            builder.append("title LIKE ? AND ");
            builder.append("alias_hidden = ?");
        } else if (isDailyAlbum()) {
            builder.append("alias_create_date = ? AND ");
            builder.append("alias_hidden = ? AND ");
            builder.append("localGroupId != ?");
        } else if (isFavoritesAlbum()) {
            builder.append("alias_is_favorite = ? AND ");
            builder.append("alias_hidden = ? AND ");
            builder.append("localGroupId != ?");
        } else if (this.mIsScreenshotAlbum) {
            if (!TextUtils.isEmpty(this.mScreenshotAppName)) {
                builder.append("location").append(" = ? AND ").append("title").append(" like '").append("Screenshot").append("%' AND ");
            }
            builder.append("localGroupId = ?");
        } else {
            builder.append("localGroupId = ?");
        }
        if (isOnlyShowLocal() && !isSecretAlbum()) {
            builder.append(SELECTION_ONLY_LOCAL);
        }
        return builder.toString();
    }

    protected Uri getUri() {
        return getUri(SortBy.NONE);
    }

    protected Uri getUri(SortBy sortBy) {
        if (isOthersShareAlbum()) {
            return ContentUris.withAppendedId(Media.URI_OTHER_ALBUM_MEDIA, this.mAlbumId);
        }
        Uri uri = Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(isVirtualAlbum())).build();
        if (sortBy != SortBy.DATE || isSecretAlbum() || isDailyAlbum()) {
            return uri;
        }
        return uri.buildUpon().appendQueryParameter("generate_headers", String.valueOf(true)).build();
    }

    protected String[] getSelectionArgs() {
        if (isVideoAlbum()) {
            return new String[]{String.valueOf(2), String.valueOf(0)};
        } else if (isPanoAlbum()) {
            return new String[]{"PANO_.*", String.valueOf(0)};
        } else if (isOthersShareAlbum()) {
            return null;
        } else {
            if (isDailyAlbum()) {
                return new String[]{String.valueOf(this.mDailyAlbumDate), String.valueOf(0), String.valueOf(-1000)};
            } else if (isFavoritesAlbum()) {
                return new String[]{String.valueOf(1), String.valueOf(0), String.valueOf(-1000)};
            } else if (!this.mIsScreenshotAlbum || TextUtils.isEmpty(this.mScreenshotAppName)) {
                return new String[]{String.valueOf(this.mAlbumId)};
            } else {
                return new String[]{this.mScreenshotAppName, String.valueOf(this.mAlbumId)};
            }
        }
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.menu_add_photos /*2131886821*/:
                pickPhotos();
                return true;
            case R.id.menu_share /*2131886828*/:
                showAlbumShareInfo();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    private void pickPhotos() {
        Intent intent = new Intent(this.mActivity, PickGalleryActivity.class);
        intent.putExtra("pick-upper-bound", -1);
        intent.putExtra("pick-need-id", true);
        startActivityForResult(intent, 7);
    }

    private void doAddPhotos(final long[] ids) {
        if (isOthersShareAlbum()) {
            Log.d("AlbumDetailFragmentBase", "Is other shared album, do copy operation for default");
            CopyMoveDialogFragment.show(this.mActivity, this.mAlbumId, ids, 0, false, null);
            recordCopyMoveAction(false);
            return;
        }
        CopyOrMoveDialog dialog = new CopyOrMoveDialog();
        dialog.setOnOperationSelectedListener(new OnOperationSelectedListener() {
            public void onOperationSelected(int ops) {
                switch (ops) {
                    case 1:
                        CopyMoveDialogFragment.show(AlbumDetailFragmentBase.this.mActivity, AlbumDetailFragmentBase.this.mAlbumId, ids, 0, false, null);
                        AlbumDetailFragmentBase.this.recordCopyMoveAction(false);
                        return;
                    case 2:
                        return;
                    default:
                        CopyMoveDialogFragment.show(AlbumDetailFragmentBase.this.mActivity, AlbumDetailFragmentBase.this.mAlbumId, ids, 0, true, null);
                        AlbumDetailFragmentBase.this.recordCopyMoveAction(true);
                        return;
                }
            }
        });
        dialog.showAllowingStateLoss(getFragmentManager(), "CopyOrMoveDialog");
    }

    private void recordCopyMoveAction(boolean deleteOrigin) {
        HashMap<String, String> params = new HashMap();
        params.put("move", String.valueOf(deleteOrigin));
        params.put("from", getClass().getSimpleName());
        BaseSamplingStatHelper.recordCountEvent("organize_photos", "move_or_copy", params);
    }

    private void doShare() {
        UIHelper.showAlbumShareInfo(this.mActivity, new Path(this.mIsOtherShareAlbum ? ShareAlbumManager.getOriginalAlbumId(this.mAlbumId) : this.mAlbumId, this.mIsOtherShareAlbum, getAdapter().isBabyAlbum()), this.mIsOtherShareAlbum ? 6 : 0);
    }

    private void showAlbumShareInfo() {
        if (needEnableAutoUpload()) {
            showDialog(R.string.auto_upload_before_share_title, R.string.auto_upload_before_share_message, 17039370, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    AlbumDetailFragmentBase.this.onEnableAutoUpload(true);
                }
            });
        } else {
            doShare();
        }
    }

    protected void showDialog(int titleId, int msgId, int positiveBottonTextId, OnClickListener positiveButtonListener) {
        if (this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.dismiss();
        }
        this.mDialog = new Builder(this.mActivity).setTitle(titleId).setMessage(msgId).setPositiveButton(positiveBottonTextId, positiveButtonListener).setNegativeButton(17039360, null).create();
        this.mDialog.show();
    }

    protected void removeFromOtherAlbums() {
        new AlertDialog.Builder(getActivity()).setTitle((int) R.string.operation_remove_from_other_albums).setMessage((int) R.string.remove_from_other_albums_tip).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                AlbumDetailFragmentBase.this.doChangeShowInOtherAlbums(false);
            }
        }).setNegativeButton(17039360, null).show();
    }

    protected void enableAutoUpload() {
        DialogUtil.showInfoDialog(getActivity(), (int) R.string.enable_auto_upload_tip, (int) R.string.enable_auto_upload_title, 17039370, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                AlbumDetailFragmentBase.this.onEnableAutoUpload(false);
            }
        }, null);
    }

    protected void onEnableAutoUpload(final boolean sharePending) {
        if (!SyncUtil.existXiaomiAccount(this.mActivity)) {
            Bundle args = new Bundle();
            args.putSerializable("cloud_guide_source", CloudGuideSource.AUTOBACKUP);
            args.putLong("autobackup_album_id", this.mAlbumId);
            IntentUtil.guideToLoginXiaomiAccount(this.mActivity, args);
            this.mEnableAutoUploadPending = true;
            this.mSharePending = sharePending;
        } else if (!ContentResolver.getMasterSyncAutomatically()) {
            showDialog(R.string.to_enable_sync_dialog_title, R.string.to_enable_sync_dialog_message, R.string.to_enable_sync_dialog_positive_button_text, new OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    AlbumDetailFragmentBase.this.mActivity.startActivity(new Intent("com.xiaomi.action.MICLOUD_MAIN"));
                    AlbumDetailFragmentBase.this.mEnableAutoUploadPending = true;
                    AlbumDetailFragmentBase.this.mSharePending = sharePending;
                }
            });
        } else if (doChangeAutoUpload(true) && sharePending) {
            doShare();
        }
    }

    protected void doChangeShowInOtherAlbums(boolean showInOtherAlbums) {
        MediaAndAlbumOperations.doChangeShowInOtherAlbums(this.mActivity, this.mAlbumId, showInOtherAlbums);
        ToastUtils.makeTextLong(getActivity(), showInOtherAlbums ? R.string.show_in_other_albums_enable_toast_long_press_menu : R.string.show_in_other_albums_disable_toast_long_press_menu);
    }

    protected void moveToOtherAlbums() {
        new AlertDialog.Builder(getActivity()).setTitle((int) R.string.operation_move_to_other_albums).setMessage((int) R.string.move_to_other_albums_tip).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                AlbumDetailFragmentBase.this.doChangeShowInOtherAlbums(true);
            }
        }).setNegativeButton(17039360, null).show();
    }

    protected void disableAutoUpload() {
        DialogUtil.showInfoDialog(getActivity(), (int) R.string.disable_auto_upload_tip, (int) R.string.disable_auto_upload_title, 17039370, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                AlbumDetailFragmentBase.this.doChangeAutoUpload(false);
            }
        }, null);
    }

    protected boolean doChangeAutoUpload(boolean enable) {
        if (enable || !this.mIsShareAlbum) {
            Account account = AccountHelper.getXiaomiAccount(this.mActivity);
            if (account == null) {
                return false;
            }
            if (enable && !ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider")) {
                if (!SyncUtil.setSyncAutomatically(this.mActivity, true)) {
                    return false;
                }
                getAdapter().updateGalleryCloudSyncableState();
            }
            MediaAndAlbumOperations.doChangeAutoUpload(this.mActivity, this.mAlbumId, enable);
            ToastUtils.makeTextLong(this.mActivity, enable ? R.string.auto_upload_enable_toast_long_press_menu : R.string.auto_upload_disable_toast_long_press_menu);
            return true;
        }
        ToastUtils.makeText(this.mActivity, (int) R.string.share_album_needs_auto_upload_tip);
        return false;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 6:
                if (resultCode == -1) {
                    finish();
                    return;
                }
                return;
            case 7:
                if (resultCode == -1 && data != null) {
                    ArrayList<Long> idList = (ArrayList) data.getSerializableExtra("pick-result-data");
                    if (idList != null && !idList.isEmpty()) {
                        long[] ids = new long[idList.size()];
                        for (int i = 0; i < idList.size(); i++) {
                            ids[i] = ((Long) idList.get(i)).longValue();
                        }
                        doAddPhotos(ids);
                        return;
                    }
                    return;
                }
                return;
            default:
                super.onActivityResult(requestCode, resultCode, data);
                return;
        }
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateConfiguration(newConfig);
        this.mAlbumDetailGridView.setSelection(this.mAlbumDetailGridView.getFirstVisiblePosition());
    }

    private void updateConfiguration(Configuration newConfig) {
        int columns;
        if (newConfig.orientation == 2) {
            if (this.mIsScreenshotAlbum) {
                columns = ThumbConfig.get().sMicroThumbScreenshotColumnsLand;
                this.mAlbumDetailGridView.setVerticalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_screenshots_spacing));
                this.mAlbumDetailGridView.setHorizontalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_screenshots_spacing));
            } else if (this.mIsPanoAlbum) {
                ThumbConfig.get().getClass();
                columns = 1;
                this.mAlbumDetailGridView.setVerticalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_pano_vertical_spacing));
            } else {
                columns = ThumbConfig.get().sMicroThumbColumnsLand;
            }
        } else if (this.mIsScreenshotAlbum) {
            columns = ThumbConfig.get().sMicroThumbScreenshotColumnsPortrait;
            this.mAlbumDetailGridView.setVerticalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_screenshots_spacing));
            this.mAlbumDetailGridView.setHorizontalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_screenshots_spacing));
        } else if (this.mIsPanoAlbum) {
            ThumbConfig.get().getClass();
            columns = 1;
            this.mAlbumDetailGridView.setVerticalSpacing(getResources().getDimensionPixelSize(R.dimen.micro_thumb_pano_vertical_spacing));
        } else {
            columns = ThumbConfig.get().sMicroThumbColumnsPortrait;
        }
        this.mAlbumDetailGridView.setNumColumns(columns);
    }

    private boolean canAddSecret() {
        return (isVideoAlbum() || isOthersShareAlbum()) ? false : true;
    }

    protected int getDupType() {
        if (isVideoAlbum() || isPanoAlbum() || isDailyAlbum() || isFavoritesAlbum()) {
            return 3;
        }
        if (getUri().getBooleanQueryParameter("remove_duplicate_items", false)) {
            return 2;
        }
        return 0;
    }

    private void doDelete(ActionMode mode) {
        long[] ids = null;
        boolean containsOthersShareMedias = false;
        if (isOthersShareAlbum()) {
            int i;
            Map<Long, String> entries = null;
            SparseBooleanArray positions = this.mAlbumDetailGridViewWrapper.getCheckedItemPositions();
            if (positions != null && positions.size() > 0) {
                for (i = 0; i < positions.size(); i++) {
                    if (positions.valueAt(i)) {
                        int position = positions.keyAt(i);
                        if (entries == null) {
                            entries = new HashMap();
                        }
                        entries.put(Long.valueOf(getMediaIdByPosition(position)), getCreatorIdByPosition(position));
                    }
                }
            }
            if (entries != null) {
                List<Long> selectedIds = ShareMediaManager.getOwnerSharedImageIds(entries);
                if (selectedIds != null && selectedIds.size() > 0) {
                    ids = new long[selectedIds.size()];
                    for (i = 0; i < selectedIds.size(); i++) {
                        ids[i] = ((Long) selectedIds.get(i)).longValue();
                    }
                }
            }
            containsOthersShareMedias = positions != null && positions.size() > 0 && (ids == null || ids.length < positions.size());
        } else {
            ids = this.mAlbumDetailGridViewWrapper.getCheckedItemIds();
        }
        if (ids == null || ids.length <= 0) {
            if (containsOthersShareMedias) {
                ToastUtils.makeText(getActivity(), getString(R.string.delete_other_shared_images));
            }
            mode.finish();
            return;
        }
        final ActionMode actionMode = mode;
        MediaAndAlbumOperations.delete(this.mActivity, "AlbumDetailFragmentBaseDeleteMediaDialogFragment", new OnDeletionCompleteListener() {
            public void onDeleted(int count, long[] deleteIds) {
                if (AlbumDetailFragmentBase.this.mActivity != null) {
                    ToastUtils.makeText(AlbumDetailFragmentBase.this.mActivity, AlbumDetailFragmentBase.this.getString(R.string.delete_finish_format, new Object[]{Integer.valueOf(count)}));
                    if (count > 0) {
                        SoundUtils.playSoundForOperation(AlbumDetailFragmentBase.this.mActivity, 0);
                    }
                    actionMode.finish();
                    Map map = new HashMap();
                    map.put("count", Integer.valueOf(count));
                    BaseSamplingStatHelper.recordCountEvent("album_detail", "delete_photo", map);
                }
            }
        }, this.mAlbumId, this.mAlbumName, getDupType(), 23, ids);
    }

    public void onAppFocused() {
        Log.d("AlbumDetailFragmentBase", "onAppFocused");
        scanAlbumFolderIfNeeded();
    }

    private void onSend(String targetPackage, String targetClass) {
        int i;
        int initPos = Integer.MAX_VALUE;
        SparseBooleanArray selectedItems = this.mAlbumDetailGridViewWrapper.getCheckedItemPositions();
        ArrayList<Integer> arrayList = new ArrayList(selectedItems.size());
        ArrayList<Long> arrayList2 = new ArrayList(selectedItems.size());
        for (i = 0; i < selectedItems.size(); i++) {
            int key = selectedItems.keyAt(i);
            if (selectedItems.get(key)) {
                arrayList.add(Integer.valueOf(key));
                arrayList2.add(Long.valueOf(getAdapter().getItemKey(key)));
                if (key < initPos) {
                    initPos = key;
                }
            }
        }
        if (arrayList.size() != 0) {
            int[] selectedPos = new int[arrayList.size()];
            long[] selectedId = new long[arrayList2.size()];
            for (i = 0; i < arrayList.size(); i++) {
                selectedPos[i] = ((Integer) arrayList.get(i)).intValue();
                selectedId[i] = ((Long) arrayList2.get(i)).longValue();
            }
            if (initPos == Integer.MAX_VALUE) {
                initPos = 0;
            }
            IntentUtil.gotoPreviewSelectPage(this, getUri(), initPos, getAdapter().getCount(), getSelection(), getSelectionArgs(), getCurrentSortOrder(), new ImageLoadParams(getAdapter().getItemKey(initPos), getAdapter().getLocalPath(initPos), ThumbConfig.get().sMicroTargetSize, getAdapter().getItemDecodeRectF(initPos), initPos, getAdapter().getMimeType(initPos), getAdapter().getItemSecretKey(initPos), getAdapter().getFileLength(initPos)), selectedId, selectedPos, targetPackage, targetClass);
            this.mAlbumDetailGridViewWrapper.stopActionMode();
            Map map = new HashMap();
            map.put("count", Integer.valueOf(selectedItems.size()));
            BaseSamplingStatHelper.recordCountEvent("album_detail", "send", map);
        }
    }
}

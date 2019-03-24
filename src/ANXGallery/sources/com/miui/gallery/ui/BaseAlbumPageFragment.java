package com.miui.gallery.ui;

import android.accounts.Account;
import android.app.Activity;
import android.app.DialogFragment;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import com.miui.account.AccountHelper;
import com.miui.gallery.R;
import com.miui.gallery.adapter.AlbumPageAdapter;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy;
import com.miui.gallery.loader.AlbumConvertCallback;
import com.miui.gallery.loader.CursorConvertCallback;
import com.miui.gallery.model.Album;
import com.miui.gallery.model.Album.AlbumType;
import com.miui.gallery.model.AlbumList;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.ShareAlbumManager;
import com.miui.gallery.share.Path;
import com.miui.gallery.share.UIHelper;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.ConfirmDialog.ConfirmDialogInterface;
import com.miui.gallery.ui.DeletionTask.OnDeletionCompleteListener;
import com.miui.gallery.ui.DeletionTask.Param;
import com.miui.gallery.util.DialogUtil;
import com.miui.gallery.util.GalleryIntent.CloudGuideSource;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaAndAlbumOperations;
import com.miui.gallery.util.SoundUtils;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView;
import com.miui.gallery.widget.recyclerview.GalleryRecyclerView.RecyclerContextMenuInfo;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.HashMap;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;
import miui.util.PlayerActions.Out;

public abstract class BaseAlbumPageFragment extends BaseFragment {
    protected CursorConvertCallback<AlbumList> mAlbumConvertCallback = new AlbumConvertCallback();
    protected AlbumPageAdapter mAlbumPageAdapter;
    private OnDeletionCompleteListener mCompleteListener = new OnDeletionCompleteListener() {
        public void onDeleted(int count, long[] ids) {
            if (BaseAlbumPageFragment.this.getActivity() != null) {
                if (count >= 0) {
                    ToastUtils.makeText(BaseAlbumPageFragment.this.getActivity(), BaseAlbumPageFragment.this.getActivity().getString(R.string.delete_album_success));
                    SoundUtils.playSoundForOperation(BaseAlbumPageFragment.this.getActivity(), 0);
                    return;
                }
                ToastUtils.makeText(BaseAlbumPageFragment.this.getActivity(), BaseAlbumPageFragment.this.getActivity().getString(R.string.delete_album_failed));
            }
        }
    };
    protected GalleryRecyclerView mRecyclerView;
    protected Album mSelectedAlbum;

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (resultCode == -1) {
            switch (requestCode) {
                case 29:
                    if (this.mSelectedAlbum == null) {
                        Log.w("BaseAlbumPageFragment", "The selected album entity is null!");
                        return;
                    }
                    int checkFor = data.getIntExtra("check_login_and_sync", -1);
                    if (checkFor == 1) {
                        doChangeAutoUpload(true);
                        return;
                    } else if (checkFor == 2 && doChangeAutoUpload(true)) {
                        share();
                        return;
                    } else {
                        return;
                    }
                default:
                    return;
            }
        }
    }

    public void onStart() {
        super.onStart();
        this.mAlbumPageAdapter.updateGalleryCloudSyncableState();
        if (this.mRecyclerView != null) {
            registerForContextMenu(this.mRecyclerView);
        }
    }

    public void onStop() {
        super.onStop();
        if (this.mRecyclerView != null) {
            unregisterForContextMenu(this.mRecyclerView);
        }
    }

    public void onCreateContextMenu(ContextMenu menu, View v, ContextMenuInfo menuInfo) {
        if (menuInfo != null) {
            setContextMenuItems(menu, ((RecyclerContextMenuInfo) menuInfo).position);
        }
    }

    protected void setContextMenuItems(ContextMenu contextMenu, int position) {
        Album entity = this.mAlbumPageAdapter.getItem(position);
        if (entity == null) {
            Log.e("BaseAlbumPageFragment", "album entity should not be null!!!");
            return;
        }
        if (entity.getAlbumType() != AlbumType.OTHER_ALBUMS) {
            this.mSelectedAlbum = entity;
            this.mActivity.getMenuInflater().inflate(R.menu.album_list_menu, contextMenu);
            contextMenu.setHeaderTitle(this.mSelectedAlbum.getAlbumName());
            MenuItem forceTopItem = contextMenu.findItem(R.id.force_top);
            MenuItem unforceTopItem = contextMenu.findItem(R.id.unforce_top);
            MenuItem deleteItem = contextMenu.findItem(R.id.delete);
            MenuItem shareItem = contextMenu.findItem(R.id.share);
            MenuItem removeFromOtherAlbumsItem = contextMenu.findItem(R.id.remove_from_other_albums);
            MenuItem moveToOtherAlbumsItem = contextMenu.findItem(R.id.move_to_other_albums);
            MenuItem enableAutoUploadItem = contextMenu.findItem(R.id.enable_auto_upload);
            MenuItem disableAutoUploadItem = contextMenu.findItem(R.id.disable_auto_upload);
            MenuItem enablePhotosTabItem = contextMenu.findItem(R.id.enable_show_in_photos_tab);
            MenuItem disablePhotosTabItem = contextMenu.findItem(R.id.disable_show_in_photos_tab);
            MenuItem hideItem = contextMenu.findItem(R.id.hide);
            MenuItem unhideItem = contextMenu.findItem(R.id.unhide);
            MenuItem renameItem = contextMenu.findItem(R.id.rename);
            if (this.mAlbumPageAdapter.isForceTypeTime(position)) {
                unforceTopItem.setVisible(true);
            } else {
                forceTopItem.setVisible(true);
            }
            boolean isGalleryCloudSyncable = SyncUtil.isGalleryCloudSyncable(this.mActivity);
            if (this.mAlbumPageAdapter.isSystemAlbum(position)) {
                if (this.mAlbumPageAdapter.isScreenshotsAlbum(position)) {
                    if (isGalleryCloudSyncable) {
                        if (this.mAlbumPageAdapter.isAutoUploadedAlbum(position)) {
                            disableAutoUploadItem.setVisible(true);
                        } else {
                            enableAutoUploadItem.setVisible(true);
                        }
                    }
                    if (this.mAlbumPageAdapter.isShowedPhotosTabAlbum(position)) {
                        disablePhotosTabItem.setVisible(true);
                    } else {
                        enablePhotosTabItem.setVisible(true);
                    }
                }
            } else if (this.mAlbumPageAdapter.isOtherShareAlbum(position)) {
                if (ApplicationHelper.supportShare()) {
                    shareItem.setVisible(true);
                }
                if (this.mAlbumPageAdapter.isHiddenAlbum(position)) {
                    unhideItem.setVisible(true);
                } else {
                    hideItem.setVisible(true);
                }
            } else if (!this.mAlbumPageAdapter.albumUnwriteable(position)) {
                deleteItem.setVisible(true);
                if (ApplicationHelper.supportShare()) {
                    shareItem.setVisible(true);
                }
                if (!this.mAlbumPageAdapter.isBabyAlbum(position)) {
                    if (isGalleryCloudSyncable) {
                        if (this.mAlbumPageAdapter.isAutoUploadedAlbum(position)) {
                            disableAutoUploadItem.setVisible(true);
                        } else {
                            enableAutoUploadItem.setVisible(true);
                        }
                    }
                    if (this.mAlbumPageAdapter.isHiddenAlbum(position)) {
                        unhideItem.setVisible(true);
                    } else {
                        hideItem.setVisible(true);
                    }
                    renameItem.setVisible(!isManualRenameRestricted(this.mSelectedAlbum.getLocalPath()));
                }
                if (this.mAlbumPageAdapter.isOtherAlbum(position)) {
                    removeFromOtherAlbumsItem.setVisible(true);
                } else {
                    moveToOtherAlbumsItem.setVisible(true);
                }
                if (this.mAlbumPageAdapter.isShowedPhotosTabAlbum(position)) {
                    disablePhotosTabItem.setVisible(true);
                } else {
                    enablePhotosTabItem.setVisible(true);
                }
            } else if (this.mAlbumPageAdapter.isHiddenAlbum(position)) {
                unhideItem.setVisible(true);
            } else {
                hideItem.setVisible(true);
            }
        }
    }

    private void statAlbumOperation(Album entity, String operation) {
        HashMap<String, String> params = new HashMap();
        params.put(nexExportFormat.TAG_FORMAT_PATH, entity.getLocalPath());
        BaseSamplingStatHelper.recordCountEvent(Out.KEY_ALBUM, operation, params);
    }

    public boolean onContextItemSelected(MenuItem item) {
        if (item == null) {
            return false;
        }
        switch (item.getItemId()) {
            case R.id.delete /*2131886699*/:
                doDelete(this.mSelectedAlbum.getAlbumName());
                statAlbumOperation(this.mSelectedAlbum, "delete_album");
                break;
            case R.id.force_top /*2131886830*/:
                doForceTop(true);
                statAlbumOperation(this.mSelectedAlbum, "force_top");
                break;
            case R.id.unforce_top /*2131886831*/:
                doForceTop(false);
                statAlbumOperation(this.mSelectedAlbum, "unforce_top");
                break;
            case R.id.hide /*2131886832*/:
                doHideOrUnhide(true);
                statAlbumOperation(this.mSelectedAlbum, "hide_album");
                break;
            case R.id.unhide /*2131886833*/:
                doHideOrUnhide(false);
                statAlbumOperation(this.mSelectedAlbum, "unhide_album");
                break;
            case R.id.share /*2131886834*/:
                showAlbumShareInfo();
                statAlbumOperation(this.mSelectedAlbum, "share_album");
                break;
            case R.id.rename /*2131886835*/:
                doRename();
                statAlbumOperation(this.mSelectedAlbum, "rename_album");
                break;
            case R.id.remove_from_other_albums /*2131886836*/:
                removeFromOtherAlbums();
                statAlbumOperation(this.mSelectedAlbum, "show_in_others_disable");
                break;
            case R.id.move_to_other_albums /*2131886837*/:
                moveToOtherAlbums();
                statAlbumOperation(this.mSelectedAlbum, "show_in_others_enable");
                break;
            case R.id.enable_show_in_photos_tab /*2131886838*/:
                doChangeShowInPhotosTab(true);
                statAlbumOperation(this.mSelectedAlbum, "show_in_home_enable");
                break;
            case R.id.disable_show_in_photos_tab /*2131886839*/:
                doChangeShowInPhotosTab(false);
                statAlbumOperation(this.mSelectedAlbum, "show_in_home_disable");
                break;
            case R.id.enable_auto_upload /*2131886840*/:
                enableAutoUpload();
                statAlbumOperation(this.mSelectedAlbum, "auto_upload_enable");
                break;
            case R.id.disable_auto_upload /*2131886841*/:
                disableAutoUpload();
                statAlbumOperation(this.mSelectedAlbum, "auto_upload_disable");
                break;
            default:
                return false;
        }
        return true;
    }

    private boolean isManualRenameRestricted(String localPath) {
        if (TextUtils.isEmpty(localPath)) {
            return false;
        }
        AlbumsStrategy.Album album = CloudControlStrategyHelper.getAlbumByPath(StorageUtils.ensureCommonRelativePath(localPath));
        if (album == null || album.getAttributes() == null || !album.getAttributes().isManualRenameRestricted()) {
            return false;
        }
        return true;
    }

    private void doForceTop(boolean forceTop) {
        MediaAndAlbumOperations.doForceTop(getActivity(), this.mSelectedAlbum.getId(), forceTop);
    }

    private void doHideOrUnhide(boolean hide) {
        MediaAndAlbumOperations.doHideOrUnhide(getActivity(), this.mSelectedAlbum.getId(), hide);
    }

    private void doRename() {
        AlbumRenameDialogFragment.newInstance(this.mSelectedAlbum.getId(), this.mSelectedAlbum.getAlbumName(), null).showAllowingStateLoss(getFragmentManager(), "AlbumRenameDialogFragment");
    }

    private void doDelete(String albumName) {
        boolean addDeleteCloudOption;
        int itemCount = this.mSelectedAlbum.getCount();
        boolean existXiaomiAccount = SyncUtil.existXiaomiAccount(getActivity());
        if (existXiaomiAccount && this.mAlbumPageAdapter.isAutoUploadedAlbum(this.mSelectedAlbum.getAttributes(), this.mSelectedAlbum.getServerId(), this.mSelectedAlbum.getId()) && LocalMode.isOnlyShowLocalPhoto()) {
            addDeleteCloudOption = true;
        } else {
            addDeleteCloudOption = false;
        }
        Resources resources = getActivity().getResources();
        Object[] objArr = new Object[3];
        String string = (!existXiaomiAccount || addDeleteCloudOption) ? "" : getString(R.string.delete_from_all_devices_and_cloud);
        objArr[0] = string;
        objArr[1] = albumName;
        if (itemCount > 0) {
            string = getResources().getQuantityString(R.plurals.album_item_msg_format, itemCount, new Object[]{Integer.valueOf(itemCount)});
        } else {
            string = "";
        }
        objArr[2] = string;
        CharSequence msg = resources.getString(R.string.delete_album_msg_format, objArr);
        Builder builder = new Builder(getActivity());
        if (addDeleteCloudOption) {
            builder.setCheckBox(false, getString(R.string.delete_from_cloud));
        }
        builder.setTitle((int) R.string.delete).setMessage(msg).setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                int deleteOptions = 0;
                if (addDeleteCloudOption && !((AlertDialog) dialog).isChecked()) {
                    deleteOptions = 1;
                }
                Param param = new Param(new long[]{BaseAlbumPageFragment.this.mSelectedAlbum.getId()}, deleteOptions, 22);
                DeletionTask task = new DeletionTask();
                task.setOnDeletionCompleteListener(BaseAlbumPageFragment.this.mCompleteListener);
                task.showProgress(BaseAlbumPageFragment.this.getActivity());
                task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Param[]{param});
            }
        }).setNegativeButton(17039360, null).show();
    }

    private void removeFromOtherAlbums() {
        DialogUtil.showInfoDialog(getActivity(), (int) R.string.remove_from_other_albums_tip, (int) R.string.operation_remove_from_other_albums, 17039370, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                BaseAlbumPageFragment.this.doChangeShowInOtherAlbums(false);
            }
        }, null);
    }

    private void moveToOtherAlbums() {
        DialogUtil.showInfoDialog(getActivity(), (int) R.string.move_to_other_albums_tip, (int) R.string.operation_move_to_other_albums, 17039370, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                BaseAlbumPageFragment.this.doChangeShowInOtherAlbums(true);
            }
        }, null);
    }

    protected void enableAutoUpload() {
        DialogUtil.showInfoDialog(getActivity(), (int) R.string.enable_auto_upload_tip, (int) R.string.enable_auto_upload_title, 17039370, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                BaseAlbumPageFragment.this.onEnableAutoUpload(false);
            }
        }, null);
    }

    private void onEnableAutoUpload(boolean sharePending) {
        Bundle data = new Bundle();
        if (sharePending) {
            data.putInt("check_login_and_sync", 2);
        } else {
            data.putInt("check_login_and_sync", 1);
        }
        data.putSerializable("cloud_guide_source", CloudGuideSource.AUTOBACKUP);
        data.putLong("autobackup_album_id", this.mSelectedAlbum.getId());
        LoginAndSyncCheckFragment.checkLoginAndSyncState(this, data);
    }

    protected void disableAutoUpload() {
        DialogUtil.showInfoDialog(getActivity(), (int) R.string.disable_auto_upload_tip, (int) R.string.disable_auto_upload_title, 17039370, 17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                BaseAlbumPageFragment.this.doChangeAutoUpload(false);
            }
        }, null);
    }

    protected boolean doChangeAutoUpload(boolean enable) {
        if (enable || !this.mAlbumPageAdapter.isShareAlbum(this.mSelectedAlbum.getId())) {
            Account account = AccountHelper.getXiaomiAccount(getActivity());
            if (account == null) {
                return false;
            }
            if (enable && !ContentResolver.getSyncAutomatically(account, "com.miui.gallery.cloud.provider")) {
                if (!SyncUtil.setSyncAutomatically(getActivity(), true)) {
                    return false;
                }
                this.mAlbumPageAdapter.updateGalleryCloudSyncableState();
            }
            MediaAndAlbumOperations.doChangeAutoUpload(getActivity(), this.mSelectedAlbum.getId(), enable);
            ToastUtils.makeTextLong(getActivity(), enable ? R.string.auto_upload_enable_toast_long_press_menu : R.string.auto_upload_disable_toast_long_press_menu);
            return true;
        }
        ToastUtils.makeText(getActivity(), (int) R.string.share_album_needs_auto_upload_tip);
        return false;
    }

    private void doChangeShowInPhotosTab(boolean showInPhotosTab) {
        MediaAndAlbumOperations.doChangeShowInPhotosTab(getActivity(), this.mSelectedAlbum.getId(), showInPhotosTab);
    }

    private void doChangeShowInOtherAlbums(boolean showInOtherAlbums) {
        MediaAndAlbumOperations.doChangeShowInOtherAlbums(getActivity(), this.mSelectedAlbum.getId(), showInOtherAlbums);
        ToastUtils.makeTextLong(getActivity(), showInOtherAlbums ? R.string.show_in_other_albums_enable_toast_long_press_menu : R.string.show_in_other_albums_disable_toast_long_press_menu);
    }

    private void showAlbumShareInfo() {
        if (this.mAlbumPageAdapter.isAutoUploadedAlbum(this.mSelectedAlbum.getAttributes(), this.mSelectedAlbum.getServerId(), this.mSelectedAlbum.getId())) {
            share();
        } else {
            ConfirmDialog.showConfirmDialog(getFragmentManager(), getResources().getString(R.string.auto_upload_before_share_title), getResources().getString(R.string.auto_upload_before_share_message), getResources().getString(17039360), getResources().getString(17039370), new ConfirmDialogInterface() {
                public void onConfirm(DialogFragment dialog) {
                    BaseAlbumPageFragment.this.onEnableAutoUpload(true);
                }

                public void onCancel(DialogFragment dialog) {
                }
            });
        }
    }

    protected void share() {
        boolean isBabyAlbum;
        int i = 0;
        boolean isOtherShareAlbum = ShareAlbumManager.isOtherShareAlbumId(this.mSelectedAlbum.getId());
        long albumId = this.mSelectedAlbum.getId();
        if (isOtherShareAlbum) {
            albumId = ShareAlbumManager.getOriginalAlbumId(albumId);
        }
        if (TextUtils.isEmpty(this.mSelectedAlbum.getBabyInfo())) {
            isBabyAlbum = false;
        } else {
            isBabyAlbum = true;
        }
        Activity activity = getActivity();
        Path path = new Path(albumId, isOtherShareAlbum, isBabyAlbum);
        if (isOtherShareAlbum) {
            i = 6;
        }
        UIHelper.showAlbumShareInfo(activity, path, i);
    }
}

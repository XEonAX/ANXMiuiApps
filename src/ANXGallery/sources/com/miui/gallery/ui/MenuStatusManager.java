package com.miui.gallery.ui;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.AlbumsStrategy.Album;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;

/* compiled from: AlbumDetailFragment */
class MenuStatusManager {
    private String mAlbumServerId;
    private boolean mAlbumUnwriteable;
    private boolean mAutoUpload;
    private Context mContext;
    private boolean mIsManualRenameRestricted;
    private boolean mIsOtherShareAlbum;
    private boolean mShowInOtherAlbums;
    private boolean mShowInPhotosTab;

    MenuStatusManager(Context context, String albumServerId, long attributes, boolean albumUnwriteable, boolean isOtherShareAlbum, String localPath) {
        boolean z;
        boolean z2 = false;
        this.mContext = context;
        this.mAlbumServerId = albumServerId;
        this.mAutoUpload = (1 & attributes) != 0;
        if ((4 & attributes) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mShowInPhotosTab = z;
        if ((64 & attributes) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mShowInOtherAlbums = z;
        this.mAlbumUnwriteable = albumUnwriteable;
        this.mIsOtherShareAlbum = isOtherShareAlbum;
        if (isSystemAlbum(albumServerId) || isOtherShareAlbum || albumUnwriteable || isManualRenameRestricted(localPath)) {
            z2 = true;
        }
        this.mIsManualRenameRestricted = z2;
    }

    protected boolean isUnWriteable() {
        return this.mAlbumUnwriteable;
    }

    boolean canEnableAutoUpload() {
        if (isSystemAlbumButNotScreenshots(this.mAlbumServerId) || this.mAlbumUnwriteable || this.mIsOtherShareAlbum) {
            return false;
        }
        if (SyncUtil.isGalleryCloudSyncable(this.mContext) && this.mAutoUpload) {
            return false;
        }
        return true;
    }

    boolean canDisableAutoUpload() {
        if (isSystemAlbumButNotScreenshots(this.mAlbumServerId) || this.mAlbumUnwriteable || this.mIsOtherShareAlbum || !SyncUtil.isGalleryCloudSyncable(this.mContext)) {
            return false;
        }
        return this.mAutoUpload;
    }

    private boolean isVirtualAlbum(String serverId) {
        return String.valueOf(-2147483646).equals(serverId) || String.valueOf(-2147483647L).equals(serverId) || String.valueOf(1000).equals(serverId) || String.valueOf(-2147483645).equals(serverId) || String.valueOf(-2147483643).equals(serverId) || String.valueOf(-2147483642).equals(serverId);
    }

    private boolean isSystemAlbumButNotScreenshots(String serverId) {
        return String.valueOf(-2147483646).equals(serverId) || String.valueOf(-2147483647L).equals(serverId) || String.valueOf(1).equals(serverId) || String.valueOf(1000).equals(serverId) || String.valueOf(-2147483645).equals(serverId) || String.valueOf(-2147483643).equals(serverId) || String.valueOf(-2147483642).equals(serverId) || String.valueOf(-2147483644).equals(serverId);
    }

    private boolean isSystemAlbum(String serverId) {
        return isSystemAlbumButNotScreenshots(serverId) || String.valueOf(2).equals(serverId);
    }

    boolean canEnableShowInOtherAlbums() {
        if (isSystemAlbum(this.mAlbumServerId) || this.mIsOtherShareAlbum || this.mAlbumUnwriteable || this.mShowInOtherAlbums) {
            return false;
        }
        return true;
    }

    boolean canDisableShowInOtherAlbums() {
        if (isSystemAlbum(this.mAlbumServerId) || this.mIsOtherShareAlbum || this.mAlbumUnwriteable) {
            return false;
        }
        return this.mShowInOtherAlbums;
    }

    boolean canEnableShowInPhotosTab() {
        if (isSystemAlbumButNotScreenshots(this.mAlbumServerId) || this.mIsOtherShareAlbum || this.mAlbumUnwriteable || this.mShowInPhotosTab) {
            return false;
        }
        return true;
    }

    boolean canDisableShowInPhotosTab() {
        if (isSystemAlbumButNotScreenshots(this.mAlbumServerId)) {
            return false;
        }
        return this.mShowInPhotosTab;
    }

    boolean canShowInPhotosTab() {
        return this.mShowInPhotosTab;
    }

    boolean canShare() {
        return (isSystemAlbum(this.mAlbumServerId) || this.mAlbumUnwriteable || !ApplicationHelper.supportShare()) ? false : true;
    }

    boolean canAddPhotos() {
        return (isVirtualAlbum(this.mAlbumServerId) || this.mAlbumUnwriteable) ? false : true;
    }

    void onAutoUploadStatusChanged(boolean enable) {
        this.mAutoUpload = enable;
    }

    void onShowInPhotosTabStatusChanged(boolean enable) {
        this.mShowInPhotosTab = enable;
    }

    void onShowInOtherAlbumsStatusChanged(boolean enable) {
        this.mShowInOtherAlbums = enable;
    }

    private boolean isManualRenameRestricted(String localPath) {
        if (TextUtils.isEmpty(localPath)) {
            return false;
        }
        Album album = CloudControlStrategyHelper.getAlbumByPath(StorageUtils.ensureCommonRelativePath(localPath));
        if (album == null || album.getAttributes() == null || !album.getAttributes().isManualRenameRestricted()) {
            return false;
        }
        return true;
    }

    boolean canRename() {
        return (isSystemAlbum(this.mAlbumServerId) || this.mAlbumUnwriteable || this.mIsOtherShareAlbum || this.mIsManualRenameRestricted) ? false : true;
    }
}

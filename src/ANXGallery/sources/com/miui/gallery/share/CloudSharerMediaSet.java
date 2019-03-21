package com.miui.gallery.share;

import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBItem;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.share.AlbumShareOperations.IncomingInvitation;

public class CloudSharerMediaSet {
    private static final Uri BASE_OTHER_SET_URI = GalleryCloudUtils.SHARE_ALBUM_URI;
    private static final Uri BASE_OWNER_SET_URI = GalleryCloudUtils.CLOUD_URI;
    private DBItem mItem;
    private InnerNullItemImp mNullItem;
    private Path mPath;

    class InnerNullItemImp implements DBItem {
        InnerNullItemImp() {
        }

        public String getId() {
            return "";
        }

        protected BabyInfo getBabyInfo() {
            return null;
        }

        public String getShareUrl() {
            return "";
        }

        public String getShareUrlLong() {
            return "";
        }

        public String getSharerInfo() {
            return "";
        }

        public String getShareAlbumId() {
            return "";
        }

        public String getAlbumStatus() {
            return "";
        }

        public String getCreatorId() {
            return "";
        }

        public boolean isPublic() {
            return false;
        }

        public String getPublicUrl() {
            return "";
        }

        public String getDisplayName() {
            return "";
        }
    }

    public CloudSharerMediaSet(Path path) {
        this.mPath = path;
        reloadItem(path);
    }

    private void reloadItem(Path path) {
        if (path.isOtherShared()) {
            this.mItem = CloudUtils.getDBShareAlbumByLocalId(String.valueOf(path.getId()));
        } else {
            this.mItem = CloudUtils.getItem(BASE_OWNER_SET_URI, GalleryApp.sGetAndroidContext(), "_id", String.valueOf(path.getId()));
        }
        if (this.mItem == null) {
            this.mNullItem = new InnerNullItemImp();
        }
    }

    public void rereloadItem() {
        reloadItem(this.mPath);
    }

    protected Path getPath() {
        return this.mPath;
    }

    public boolean isNormalStatus() {
        return "normal".equals(getAlbumStatus());
    }

    public synchronized int getAlbumShareState(String uiState) {
        return AlbumShareState.getState(getAlbumStatus(), uiState, hasShareDetailInfo());
    }

    public synchronized boolean hasShareDetailInfo() {
        boolean z = false;
        synchronized (this) {
            String longUrl = getShareUrlLong();
            if (!TextUtils.isEmpty(longUrl)) {
                if (TextUtils.isEmpty(getSharerInfo())) {
                    IncomingInvitation invitation = AlbumShareOperations.parseInvitation(longUrl);
                    if (invitation == null || !invitation.hasSharerInfo()) {
                        z = true;
                    }
                } else {
                    z = true;
                }
            }
        }
        return z;
    }

    public static Path buildPathById(long id) {
        return new Path(id, true);
    }

    public String getAlbumId() {
        return getShareAlbumId();
    }

    public void setLongUrl(String longUrl) {
    }

    public void setSharerInfo(String sharerInfo) {
    }

    public boolean isSharerAlbum() {
        return this.mPath.isOtherShared();
    }

    protected long getId() {
        if (this.mItem == null) {
            return 0;
        }
        return Long.parseLong(this.mItem.getId());
    }

    protected BabyInfo getBabyInfo() {
        if (this.mItem == null) {
            return this.mNullItem.getBabyInfo();
        }
        if (this.mPath.isOtherShared()) {
            return BabyInfo.fromJSON(((DBShareAlbum) this.mItem).getBabyInfoJson());
        }
        return BabyInfo.fromJSON(((DBCloud) this.mItem).getBabyInfoJson());
    }

    public String getShareUrl() {
        if (this.mItem == null) {
            return this.mNullItem.getShareUrl();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getShareUrl();
        }
        return ((DBCloud) this.mItem).getShareUrl();
    }

    public String getShareUrlLong() {
        if (this.mItem == null) {
            return this.mNullItem.getShareUrlLong();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getShareUrlLong();
        }
        return "";
    }

    public String getSharerInfo() {
        if (this.mItem == null) {
            return this.mNullItem.getSharerInfo();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getSharerInfo();
        }
        return "";
    }

    public String getShareAlbumId() {
        if (this.mItem == null) {
            return this.mNullItem.getShareAlbumId();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getAlbumId();
        }
        return ((DBCloud) this.mItem).getServerId();
    }

    public String getAlbumStatus() {
        if (this.mItem == null) {
            return this.mNullItem.getAlbumStatus();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getAlbumStatus();
        }
        return "";
    }

    public String getCreatorId() {
        if (this.mItem == null) {
            return this.mNullItem.getCreatorId();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getCreatorId();
        }
        return ((DBCloud) this.mItem).getCreatorId();
    }

    public boolean isPublic() {
        if (this.mItem == null) {
            return this.mNullItem.isPublic();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getIsPublic();
        }
        return ((DBCloud) this.mItem).isPublic();
    }

    public String getPublicUrl() {
        if (this.mItem == null) {
            return this.mNullItem.getPublicUrl();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getPublicUri();
        }
        return ((DBCloud) this.mItem).getPublicUrl();
    }

    public String getDisplayName() {
        if (this.mItem == null) {
            return this.mNullItem.getDisplayName();
        }
        if (this.mPath.isOtherShared()) {
            return ((DBShareAlbum) this.mItem).getFileName();
        }
        return ((DBCloud) this.mItem).getFileName();
    }
}

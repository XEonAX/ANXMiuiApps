package com.miui.gallery.cloud;

import com.miui.gallery.cloud.HostManager.OwnerImage;
import com.miui.gallery.cloud.HostManager.OwnerMedia;
import com.miui.gallery.cloud.HostManager.OwnerVideo;
import com.miui.gallery.cloud.HostManager.ShareImage;
import com.miui.gallery.cloud.HostManager.ShareMedia;
import com.miui.gallery.cloud.HostManager.ShareVideo;

public abstract class CloudUrlProvider {
    private static final CloudUrlProvider sOwnerImage = new OwnerImageUrlProvider();
    private static final CloudUrlProvider sOwnerVideo = new OwnerVideoUrlProvider();
    private static final CloudUrlProvider sSharerImage = new SharerImageUrlProvider();
    private static final CloudUrlProvider sSharerVideo = new SharerVideoUrlProvider();

    private static class OwnerImageUrlProvider extends CloudUrlProvider {
        private OwnerImageUrlProvider() {
        }

        public String getCommitUrl(String userId, String requestId) {
            return OwnerMedia.getCommitUrl(requestId);
        }

        public String getCreateUrl(String userId, String albumId) {
            return OwnerImage.getCreateUrl();
        }

        public String getRequestDownloadUrl(String userId, String requestId) {
            return OwnerImage.getDownloadUrl(requestId);
        }

        public String getCopyUrl(String userId, String requestId) {
            return OwnerImage.getCopyUrl(requestId);
        }

        public String getDeleteUrl(String userId, String requestId) {
            return OwnerImage.getDeleteUrl(requestId);
        }

        public String getMoveUrl(String userId, String requestId) {
            return OwnerImage.getMoveUrl(requestId);
        }

        public String getCreateSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return OwnerImage.getCreateSubUbiUrl(requestId, ubiIndex);
        }

        public String getCommitSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return OwnerImage.getCommitSubUbiUrl(requestId, ubiIndex);
        }

        public String getEditUrl(String userId, String requestId) {
            return OwnerImage.getEditUrl(requestId);
        }

        public String getHideMoveUrl(String userId, String requestId) {
            return OwnerImage.getHideMoveUrl(requestId);
        }

        public String getUnHideMoveUrl(String userId, String requestId) {
            return OwnerImage.getUnHideMoveUrl(requestId);
        }

        public String getHideCopyUrl(String userId, String requestId) {
            return OwnerImage.getHideCopyUrl(requestId);
        }

        public String getUnhideCopyUrl(String userId, String requestId) {
            return OwnerImage.getUnHideCopyUrl(requestId);
        }

        public String getUpdateUrl(String userId, String requestId) {
            return OwnerMedia.getUpdateUrl(requestId);
        }
    }

    private static class OwnerVideoUrlProvider extends CloudUrlProvider {
        private OwnerVideoUrlProvider() {
        }

        public String getCommitUrl(String userId, String requestId) {
            return OwnerMedia.getCommitUrl(requestId);
        }

        public String getCreateUrl(String userId, String albumId) {
            return OwnerVideo.getCreateUrl();
        }

        public String getRequestDownloadUrl(String userId, String requestId) {
            return OwnerVideo.getDownloadUrl(requestId);
        }

        public String getCopyUrl(String userId, String requestId) {
            return OwnerVideo.getCopyUrl(requestId);
        }

        public String getDeleteUrl(String userId, String requestId) {
            return OwnerVideo.getDeleteUrl(requestId);
        }

        public String getMoveUrl(String userId, String requestId) {
            return OwnerVideo.getMoveUrl(requestId);
        }

        public String getCreateSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return null;
        }

        public String getCommitSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return null;
        }

        public String getEditUrl(String userId, String requestId) {
            return null;
        }

        public String getHideMoveUrl(String userId, String requestId) {
            return OwnerVideo.getHideMoveUrl(requestId);
        }

        public String getUnHideMoveUrl(String userId, String requestId) {
            return OwnerVideo.getUnHideMoveUrl(requestId);
        }

        public String getHideCopyUrl(String userId, String requestId) {
            return OwnerVideo.getHideCopyUrl(requestId);
        }

        public String getUnhideCopyUrl(String userId, String requestId) {
            return OwnerVideo.getUnHideCopyUrl(requestId);
        }

        public String getUpdateUrl(String userId, String requestId) {
            return OwnerMedia.getUpdateUrl(requestId);
        }
    }

    private static class SharerImageUrlProvider extends CloudUrlProvider {
        private SharerImageUrlProvider() {
        }

        public String getCommitUrl(String userId, String requestId) {
            return ShareMedia.getCommitUrl();
        }

        public String getCreateUrl(String userId, String albumId) {
            return ShareImage.getCreateUrl();
        }

        public String getRequestDownloadUrl(String userId, String requestId) {
            return ShareImage.getDownloadUrl();
        }

        public String getCopyUrl(String userId, String requestId) {
            return ShareImage.getCopyUrl();
        }

        public String getDeleteUrl(String userId, String requestId) {
            return ShareImage.getDeleteUrl();
        }

        public String getMoveUrl(String userId, String requestId) {
            return ShareImage.getMoveUrl(requestId);
        }

        public String getCreateSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return ShareImage.getCreateSubUbiUrl(ubiIndex);
        }

        public String getCommitSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return ShareImage.getCommitSubUbiUrl(ubiIndex);
        }

        public String getEditUrl(String userId, String requestId) {
            return null;
        }

        public String getHideMoveUrl(String userId, String requestId) {
            return null;
        }

        public String getUnHideMoveUrl(String userId, String requestId) {
            return null;
        }

        public String getHideCopyUrl(String userId, String requestId) {
            return null;
        }

        public String getUnhideCopyUrl(String userId, String requestId) {
            return null;
        }

        public String getUpdateUrl(String userId, String requestId) {
            return null;
        }
    }

    private static class SharerVideoUrlProvider extends CloudUrlProvider {
        private SharerVideoUrlProvider() {
        }

        public String getCommitUrl(String userId, String requestId) {
            return ShareMedia.getCommitUrl();
        }

        public String getCreateUrl(String userId, String albumId) {
            return ShareVideo.getCreateUrl();
        }

        public String getRequestDownloadUrl(String userId, String requestId) {
            return ShareVideo.getDownloadUrl();
        }

        public String getCopyUrl(String userId, String requestId) {
            return ShareVideo.getCopyUrl();
        }

        public String getDeleteUrl(String userId, String requestId) {
            return ShareVideo.getDeleteUrl();
        }

        public String getMoveUrl(String userId, String requestId) {
            return ShareVideo.getMoveUrl(requestId);
        }

        public String getCreateSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return null;
        }

        public String getCommitSubUbiUrl(String userId, String requestId, int ubiIndex) {
            return null;
        }

        public String getEditUrl(String userId, String requestId) {
            return null;
        }

        public String getHideMoveUrl(String userId, String requestId) {
            return null;
        }

        public String getUnHideMoveUrl(String userId, String requestId) {
            return null;
        }

        public String getHideCopyUrl(String userId, String requestId) {
            return null;
        }

        public String getUnhideCopyUrl(String userId, String requestId) {
            return null;
        }

        public String getUpdateUrl(String userId, String requestId) {
            return null;
        }
    }

    public abstract String getCommitSubUbiUrl(String str, String str2, int i);

    public abstract String getCommitUrl(String str, String str2);

    public abstract String getCopyUrl(String str, String str2);

    public abstract String getCreateSubUbiUrl(String str, String str2, int i);

    public abstract String getCreateUrl(String str, String str2);

    public abstract String getDeleteUrl(String str, String str2);

    public abstract String getEditUrl(String str, String str2);

    public abstract String getHideCopyUrl(String str, String str2);

    public abstract String getHideMoveUrl(String str, String str2);

    public abstract String getMoveUrl(String str, String str2);

    public abstract String getRequestDownloadUrl(String str, String str2);

    public abstract String getUnHideMoveUrl(String str, String str2);

    public abstract String getUnhideCopyUrl(String str, String str2);

    public abstract String getUpdateUrl(String str, String str2);

    public static CloudUrlProvider getUrlProvider(boolean isShared, boolean isVideo) {
        return isShared ? isVideo ? sSharerVideo : sSharerImage : isVideo ? sOwnerVideo : sOwnerImage;
    }
}

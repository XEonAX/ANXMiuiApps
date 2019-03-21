package com.miui.gallery.cloud;

import com.miui.gallery.cloud.HostManager.OwnerAlbum;
import com.miui.gallery.cloud.HostManager.ShareAlbum;

public abstract class CloudGroupUrlProvider {

    private static class OwnerCloudGroupUrlProvider extends CloudGroupUrlProvider {
        private OwnerCloudGroupUrlProvider() {
        }

        public String getThumbnailInfoUrl(String userId, String albumId) {
            return OwnerAlbum.getThumbnailInfoUrl(albumId);
        }

        public String getEditGroupUrl(String userId, String albumId) {
            return OwnerAlbum.getEditAlbumUrl(albumId);
        }
    }

    private static class OwnerInstanceHolder {
        private static final CloudGroupUrlProvider sOwnerUrlProvider = new OwnerCloudGroupUrlProvider();
    }

    private static class SharerCloudGroupUrlProvider extends CloudGroupUrlProvider {
        private SharerCloudGroupUrlProvider() {
        }

        public String getThumbnailInfoUrl(String userId, String albumId) {
            return ShareAlbum.getThumbnailInfoUrl();
        }

        public String getEditGroupUrl(String userId, String albumId) {
            throw new UnsupportedOperationException("sharer album doesn't support to be edited!");
        }
    }

    private static class SharerInstanceHolder {
        private static final CloudGroupUrlProvider sSharerUrlProvider = new SharerCloudGroupUrlProvider();
    }

    public abstract String getEditGroupUrl(String str, String str2);

    public abstract String getThumbnailInfoUrl(String str, String str2);

    public static CloudGroupUrlProvider getUrlProvider(boolean isSharer) {
        if (isSharer) {
            return SharerInstanceHolder.sSharerUrlProvider;
        }
        return OwnerInstanceHolder.sOwnerUrlProvider;
    }
}

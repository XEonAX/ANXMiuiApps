package com.miui.gallery.cloud;

import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import java.util.Locale;

public class HostManager {
    private static final String BASE_FACE_HOST = (FACE_URL_BASE + "/mic/gallery/face/v1");
    private static final String BASE_HOST = (ApplicationHelper.getMiCloudProvider().getCloudManager().getGalleryBaseUrl() + "/mic/gallery/v3");
    private static final String BASE_SEARCH_FEEDBACK_HOST = BASE_FACE_HOST;
    private static final String BASE_SEARCH_HOST = (SEARCH_URL_BASE + "/mic/gallery/search/v1");
    private static final String FACE_URL_BASE = (ApplicationHelper.getMiCloudProvider().getCloudManager().usePreview() ? "http://galleryfaceapi.micloud.preview.n.xiaomi.net" : "http://galleryfaceapi.micloud.xiaomi.net");
    private static final String SEARCH_URL_BASE = (ApplicationHelper.getMiCloudProvider().getCloudManager().usePreview() ? "http://gallerysearchapi.micloud.preview.n.xiaomi.net" : "http://gallerysearchapi.micloud.xiaomi.net");

    public static class AlbumShareOperation {
        public static String getBarcodeShareUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s/shareurl/barcode", new Object[]{albumId});
        }

        public static String getSmsShareUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s/shareurl/sms", new Object[]{albumId});
        }

        public static String getChangePublicUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s/webshare", new Object[]{albumId});
        }

        public static String getOwnerRequestPublicUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s/websharelink", new Object[]{albumId});
        }

        public static String getSharerRequestPublicUrl() {
            return HostManager.BASE_HOST + "/user/share/album/websharelink";
        }

        public static String getAcceptInvitationUrl() {
            return HostManager.BASE_HOST + "/user/share/album/shareurl/accept";
        }

        public static String getRefuseInvitationUrl() {
            return HostManager.BASE_HOST + "/anonymous/share/album/shareurl/refuse";
        }

        public static String getExitShareUrl() {
            return HostManager.BASE_HOST + "/user/share/album/sharer/delete";
        }

        public static String getDeleteSharerUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s/sharer/delete", new Object[]{albumId});
        }

        public static String getRequestUserInfoUrl() {
            return HostManager.BASE_HOST + "/user/profile/basic";
        }
    }

    public static class Baby {
        public static String getUpdateBabyInfoUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s", new Object[]{albumId});
        }
    }

    public static class CloudControl {
        public static String getUrl() {
            return HostManager.BASE_HOST + "/user/modules";
        }

        public static String getAnonymousUrl() {
            return HostManager.BASE_HOST + "/anonymous/policies";
        }
    }

    public static class OwnerAlbum {
        public static String getCreateAlbumUrl() {
            return HostManager.BASE_HOST + "/user/full/album";
        }

        public static String getDeleteAlbumUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s/delete", new Object[]{albumId});
        }

        public static String getRenameAlbumUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s", new Object[]{albumId});
        }

        public static String getThumbnailInfoUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/album/%s/thumbnail", new Object[]{albumId});
        }

        public static String getEditAlbumUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s", new Object[]{albumId});
        }
    }

    public static class OwnerMedia {
        public static String getCommitUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/%s/storage", new Object[]{serverId});
        }

        public static String getRequestThumbnailUrl() {
            return HostManager.BASE_HOST + "/user/thumbnails";
        }

        public static String getUpdateUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/%s", new Object[]{serverId});
        }
    }

    public static class OwnerImage extends OwnerMedia {
        public static String getCreateUrl() {
            return HostManager.BASE_HOST + "/user/full";
        }

        public static String getDownloadUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/%s/storage", new Object[]{serverId});
        }

        public static String getCopyUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/image/%s/copy", new Object[]{serverId});
        }

        public static String getDeleteUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/%s/delete", new Object[]{serverId});
        }

        public static String getMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/image/%s/move", new Object[]{serverId});
        }

        public static String getCreateSubUbiUrl(String serverId, int ubiIndex) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/%s/subimage/%s", new Object[]{serverId, Integer.valueOf(ubiIndex)});
        }

        public static String getCommitSubUbiUrl(String serverId, int ubiIndex) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/%s/subimage/%s/storage", new Object[]{serverId, Integer.valueOf(ubiIndex)});
        }

        public static String getEditUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/%s", new Object[]{serverId});
        }

        public static String getHideMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/image/%s/hide/move", new Object[]{serverId});
        }

        public static String getUnHideMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/image/%s/unhide/move", new Object[]{serverId});
        }

        public static String getHideCopyUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/image/%s/hide/copy", new Object[]{serverId});
        }

        public static String getUnHideCopyUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/image/%s/unhide/copy", new Object[]{serverId});
        }
    }

    public static class OwnerVideo extends OwnerMedia {
        public static String getCreateUrl() {
            return HostManager.BASE_HOST + "/user/full/video";
        }

        public static String getDownloadUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/storage", new Object[]{serverId});
        }

        public static String getCopyUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/copy", new Object[]{serverId});
        }

        public static String getDeleteUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/delete", new Object[]{serverId});
        }

        public static String getMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/move", new Object[]{serverId});
        }

        public static String getHideMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/hide/move", new Object[]{serverId});
        }

        public static String getUnHideMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/unhide/move", new Object[]{serverId});
        }

        public static String getHideCopyUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/hide/copy", new Object[]{serverId});
        }

        public static String getUnHideCopyUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/unhide/copy", new Object[]{serverId});
        }
    }

    public static class PeopleFace {
        public static String getPeopleFaceSyncUrl() {
            return HostManager.BASE_FACE_HOST + "/user";
        }

        public static String getPeopleCreateUrl() {
            return HostManager.BASE_FACE_HOST + "/user/people/create";
        }

        public static String getPeopleIgnoreUrl(String peopleId) {
            return HostManager.BASE_FACE_HOST + String.format(Locale.US, "/user/people/%s/ignore", new Object[]{peopleId});
        }

        public static String getPeopleMergeUrl() {
            return HostManager.BASE_FACE_HOST + "/user/people/merge";
        }

        public static String getPeopleRenameUrl(String peopleId) {
            return HostManager.BASE_FACE_HOST + String.format(Locale.US, "/user/people/%s/updatename", new Object[]{peopleId});
        }

        public static String getPeopleRecoveryUrl(String peopleId) {
            return HostManager.BASE_FACE_HOST + String.format(Locale.US, "/user/people/%s/recovery", new Object[]{peopleId});
        }

        public static String getPeopleRecommendUrl(String peopleId) {
            return HostManager.BASE_FACE_HOST + String.format(Locale.US, "/user/people/%s/recommend", new Object[]{peopleId});
        }

        public static String getPeopleFeedBackUrl() {
            return HostManager.BASE_FACE_HOST + "/user/feedback";
        }

        public static String getFaceInfoSyncUrl() {
            return HostManager.BASE_FACE_HOST + "/user/faceinfo";
        }

        public static String getFaceDeleteUrl(String faceId) {
            return HostManager.BASE_FACE_HOST + String.format(Locale.US, "/user/face/%s/delete", new Object[]{faceId});
        }

        public static String getFaceMoveUrl() {
            return HostManager.BASE_FACE_HOST + "/user/face/batchmove";
        }
    }

    public static class Search {
        public static String getSearchUrlHost() {
            return HostManager.BASE_SEARCH_HOST;
        }

        public static String getSearchFeedbackUrlHost() {
            return HostManager.BASE_SEARCH_FEEDBACK_HOST;
        }
    }

    public static class Setting {
        public static String getSyncUrl() {
            return HostManager.BASE_HOST + "/user/setting";
        }
    }

    public static class ShareAlbum {
        public static String getEditAlbumUrl() {
            return HostManager.BASE_HOST + "/user/share/album/relation";
        }

        public static String getThumbnailInfoUrl() {
            return HostManager.BASE_HOST + "/user/share/album/thumbnail";
        }
    }

    public static class ShareMedia {
        public static String getCommitUrl() {
            return HostManager.BASE_HOST + "/user/share/storage";
        }

        public static String getRequestThumbnailUrl() {
            return HostManager.BASE_HOST + "/user/share/thumbnails";
        }
    }

    public static class ShareImage extends ShareMedia {
        public static String getCreateUrl() {
            return HostManager.BASE_HOST + "/user/share/album";
        }

        public static String getDownloadUrl() {
            return HostManager.BASE_HOST + "/user/share/storage";
        }

        public static String getCopyUrl() {
            return HostManager.BASE_HOST + "/user/share/copy";
        }

        public static String getDeleteUrl() {
            return HostManager.BASE_HOST + "/user/share/delete";
        }

        public static String getMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/image/%s/move", new Object[]{serverId});
        }

        public static String getCreateSubUbiUrl(int ubiIndex) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/share/subimage/%s", new Object[]{Integer.valueOf(ubiIndex)});
        }

        public static String getCommitSubUbiUrl(int ubiIndex) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/share/subimage/%s/storage", new Object[]{Integer.valueOf(ubiIndex)});
        }
    }

    public static class ShareVideo extends ShareMedia {
        public static String getCreateUrl() {
            return HostManager.BASE_HOST + "/user/share/album/video";
        }

        public static String getDownloadUrl() {
            return HostManager.BASE_HOST + "/user/share/video/storage";
        }

        public static String getCopyUrl() {
            return HostManager.BASE_HOST + "/user/share/video/copy";
        }

        public static String getDeleteUrl() {
            return HostManager.BASE_HOST + "/user/share/video/delete";
        }

        public static String getMoveUrl(String serverId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/video/%s/move", new Object[]{serverId});
        }
    }

    public static class Story {
        public static String getCardInfosUrl() {
            return HostManager.BASE_HOST + "/user/cardinfo";
        }

        public static String getCreateCardUrl() {
            return HostManager.BASE_HOST + "/user/cardinfo";
        }

        public static String getUpdateCardUrl() {
            return HostManager.BASE_HOST + "/user/cardinfo/update";
        }

        public static String getDeleteCardUrl() {
            return HostManager.BASE_HOST + "/user/cardinfo/delete";
        }

        public static String getOperationCardUrl() {
            return HostManager.BASE_HOST + "/user/operationcard";
        }

        public static String getOperationCardAnonymousUrl() {
            return HostManager.BASE_HOST + "/anonymous/operationcard";
        }
    }

    public static class SyncPull {
        public static String getPullOwnerAlbumUrl() {
            return HostManager.BASE_HOST + "/user/full/album_v2";
        }

        public static String getPullOwnerAllUrl() {
            return HostManager.BASE_HOST + "/user/full";
        }

        public static String getPullOwnerPrivateUrl() {
            return HostManager.BASE_HOST + "/user/full/hide";
        }

        public static String getPullOwnerShareUserUrl(String albumId) {
            return HostManager.BASE_HOST + String.format(Locale.US, "/user/full/album/%s/sharer", new Object[]{albumId});
        }

        public static String getPullShareAll() {
            return HostManager.BASE_HOST + "/user/share/album/changes";
        }

        public static String getPullShareAlbumImage() {
            return HostManager.BASE_HOST + "/user/share/album";
        }

        public static String getPullShareUserUrl() {
            return HostManager.BASE_HOST + "/user/share/album/sharer";
        }
    }

    public static class Upgrade {
        public static String getUpgradeUrl() {
            return HostManager.BASE_HOST + "/user/upgrade";
        }
    }
}

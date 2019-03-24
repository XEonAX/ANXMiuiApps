package com.miui.gallery.provider;

import android.net.Uri;
import com.miui.internal.hybrid.HybridManager;
import miui.util.PlayerActions.Out;

public class GalleryContract {
    public static final Uri AUTHORITY_URI = Uri.parse("content://com.miui.gallery.cloud.provider");
    public static final Uri HTTPS_AUTHORITY_URI = Uri.parse("https://gallery.i.mi.com");

    public interface Album {
        public static final Long[] ALL_SYSTEM_ALBUM_SERVER_IDS = new Long[]{Long.valueOf(-2147483647L), Long.valueOf(-2147483645), Long.valueOf(-2147483644), Long.valueOf(-2147483646), Long.valueOf(1), Long.valueOf(2), Long.valueOf(-2147483642), Long.valueOf(-2147483643), Long.valueOf(1000), Long.valueOf(4)};
        public static final int[] ALL_VIRTUAL_ALBUM_IDS = new int[]{Integer.MAX_VALUE, 2147483646, 2147483645, 2147483644, 2147483643, 2147483642};
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath(Out.KEY_ALBUM).build();
        public static final Uri URI_ALL = URI.buildUpon().appendQueryParameter("join_face", "true").appendQueryParameter("join_video", "true").appendQueryParameter("join_share", "true").appendQueryParameter("join_recent", "true").appendQueryParameter("join_favorites", "true").build();
        public static final Uri URI_ALL_EXCEPT_DELETED = URI_ALL.buildUpon().appendQueryParameter("all_except_deleted", "true").appendQueryParameter("join_pano", "true").build();
        public static final Uri URI_NO_COVERS = URI.buildUpon().appendQueryParameter("fill_covers", "false").build();
        public static final Uri URI_SHARE_ALL = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("owner_and_other_album").build();
    }

    public interface Cloud {
        public static final Uri CLOUD_SUBUBI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("cloud_owner_sububi").build();
        public static final Uri CLOUD_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("gallery_cloud").build();
    }

    public interface CloudControl {
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("cloudControl").build();
    }

    public interface CloudUser {
        public static final Uri CLOUD_USER_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("cloud_user").build();
    }

    public interface CloudWriteBulkNotify {
        public static final Uri CLOUD_WRITE_BULK_NOTIFY_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("cloud_write_bulk_notify").build();
    }

    public interface Common {
        public static final Uri URI_ALBUM_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath(Out.KEY_ALBUM).build();
        public static final Uri URI_CARD_ACTION = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("card_action").build();
        public static final Uri URI_CLEANER_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("cleaner").build();
        public static final Uri URI_CLOUD_GUIDE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("cloud_guide").build();
        public static final Uri URI_COLLAGE_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("collage").build();
        public static final Uri URI_HYBRID_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath(HybridManager.TAG).build();
        public static final Uri URI_PEOPLE_LIST_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("peoples").build();
        public static final Uri URI_PEOPLE_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("people").build();
        public static final Uri URI_PHOTO_MOVIE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("photo_movie").build();
        public static final Uri URI_PUSH_LANDING_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("push_landing").build();
        public static final Uri URI_SECRET_ALBUM = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("secret_album").build();
        public static final Uri URI_SYNC_SWITCH = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("sync_switch").build();
        public static final Uri URI_TRASH_BIN = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("trash_bin").build();
    }

    public interface DiscoveryMessage {
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("discovery_message").build();
    }

    public interface ExtendedCloud {
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("extended_cloud").build();
    }

    public interface Favorites {
        public static final Uri DELAY_NOTIFY_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("favorites").appendQueryParameter("delay_notify", String.valueOf(true)).build();
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("favorites").build();
    }

    public interface Media {
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("media").build();
        public static final Uri URI_ALL = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("cloud_and_share").build();
        public static final Uri URI_MONTH_MEDIA = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("month_media").build();
        public static final Uri URI_OTHER_ALBUM_MEDIA = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("share_album_media").build();
        public static final Uri URI_OWNER_ALBUM_MEDIA = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("album_media").build();
        public static final Uri URI_PICKER = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("pick_cloud_and_share").build();
    }

    public interface PeopleFace {
        public static final Uri IGNORE_PERSONS_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("ignore_persons").build();
        public static final Uri IMAGE_FACE_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("image_face").build();
        public static final Uri ONE_PERSON_ITEM_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("person_item").build();
        public static final Uri ONE_PERSON_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("person").build();
        public static final Uri PEOPLE_COVER_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("people_cover").build();
        public static final Uri PEOPLE_FACE_COVER_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("people_face_cover").build();
        public static final Uri PEOPLE_FACE_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("peopleFace").build();
        public static final Uri PEOPLE_TAG_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("people_tag").build();
        public static final Uri PERSONS_ITEM_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("persons_item").build();
        public static final Uri PERSONS_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("persons").build();
        public static final Uri RECOMMEND_FACES_OF_ONE_PERSON_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("person_recommend").build();
    }

    public interface RecentAlbum {
        public static final Uri VIEW_PAGE_URI = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("recent-album/").build();
    }

    public interface RecentDiscoveredMedia {
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("recent_discovered_media").build();
        public static final Uri URI_COVER = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("recent_discovered_cover").build();
    }

    public interface Search {
        public static final Uri URI_LIKELY_RESULT_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("likelyResults").appendQueryParameter("inFeedbackTaskMode", String.valueOf(true)).build();
        public static final Uri URI_LOCATION_LIST_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("locations").build();
        public static final Uri URI_RESULT_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("result").build();
        public static final Uri URI_SEARCH_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath(miui.yellowpage.YellowPageContract.Search.DIRECTORY).build();
        public static final Uri URI_TAG_LIST_PAGE = GalleryContract.HTTPS_AUTHORITY_URI.buildUpon().appendPath("tags").build();
    }

    public interface SearchResultPhoto {
        public static final Uri URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("searchResultPhoto").build();
    }

    public interface ShareAlbum {
        public static final Uri OTHER_SHARE_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("other_share_album").build();
    }

    public interface ShareImage {
        public static final Uri SHARE_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("share_image").build();
        public static final Uri SHARE_URI_SUBUBI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("share_image_sububi").build();
    }

    public interface ShareUser {
        public static final Uri SHARE_USER_URI = GalleryContract.AUTHORITY_URI.buildUpon().appendPath("share_user").build();
    }
}

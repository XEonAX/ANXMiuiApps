package com.miui.gallery.search;

import android.net.Uri;

public class SearchContract {
    public static final Uri AUTHORITY_URI = Uri.parse("content://com.miui.gallery.search");

    public interface History {
        public static final Uri URI = SearchContract.AUTHORITY_URI.buildUpon().appendPath("history").build();
    }

    public interface Icon {
        public static final Uri ALBUM_COVER_URI = Uri.parse("image://album");
        public static final Uri LOCAL_IMAGE_URI = Uri.parse("image://image");
        public static final Uri PEOPLE_COVER_URI = Uri.parse("image://people");
        public static final Uri URI = SearchContract.AUTHORITY_URI.buildUpon().appendPath("icon").build();
        public static final Uri WEB_IMAGE_URI = Uri.parse("image://web");
    }
}

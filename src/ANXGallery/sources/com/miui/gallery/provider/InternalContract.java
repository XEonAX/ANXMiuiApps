package com.miui.gallery.provider;

import android.text.TextUtils;
import com.miui.gallery.provider.GalleryContract.Album;
import java.io.File;
import java.util.Locale;

public interface InternalContract {

    public interface Cloud {
        public static final String ALIAS_ALBUM_CLASSIFICATION = (" CASE  WHEN (attributes&64<>0 AND " + ALIAS_NON_SYSTEM_ALBUM + ")" + " THEN " + 1 + " ELSE " + 0 + " END ");
        public static final String ALIAS_CLEAR_FIRST = (" CASE WHEN " + ALIAS_ORIGIN_FILE_VALID + " THEN " + "localFile" + " " + "WHEN " + ALIAS_THUMBNAIL_VALID + " THEN " + "thumbnailFile" + " " + "ELSE " + "microthumbfile" + " " + "END ");
        public static final String ALIAS_LOCAL_IMAGE = ("(" + ALIAS_ORIGIN_FILE_VALID + " OR " + ALIAS_THUMBNAIL_VALID + ")");
        public static final String ALIAS_LOCAL_MEDIA = ("((serverType=2 AND " + ALIAS_ORIGIN_FILE_VALID + ")" + " OR " + "(" + "serverType" + "=" + 1 + " AND (" + ALIAS_ORIGIN_FILE_VALID + " OR " + ALIAS_THUMBNAIL_VALID + "))" + ")");
        public static final String ALIAS_LOCAL_VIDEO = ("(" + ALIAS_ORIGIN_FILE_VALID + ")");
        public static final String ALIAS_MICRO_VALID = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"microthumbfile", "microthumbfile"});
        public static final String ALIAS_NON_SYSTEM_ALBUM = ("(serverId IS NULL OR serverId NOT IN ('" + TextUtils.join("','", Album.ALL_SYSTEM_ALBUM_SERVER_IDS) + "'))");
        public static final String ALIAS_ORIGIN_FILE_VALID = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"localFile", "localFile"});
        public static final String ALIAS_SIZE_FIRST = (" CASE WHEN " + ALIAS_MICRO_VALID + " THEN " + "microthumbfile" + " " + "WHEN " + ALIAS_THUMBNAIL_VALID + " THEN " + "thumbnailFile" + " " + "ELSE " + "localFile" + " " + "END ");
        public static final String ALIAS_THUMBNAIL_VALID = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"thumbnailFile", "thumbnailFile"});
        public static final String ALIAS_USER_CREATE_ALBUM = ("local_path LIKE 'MIUI/Gallery/cloud/owner" + File.separator + "%' COLLATE NOCASE");
        public static final String INVALID_FILE_PATH_NULL_MARK = null;
    }

    public interface RecentDiscoveredMedia {
        public static final String ALIAS_CLEAR_THUMBNAIL = Cloud.ALIAS_CLEAR_FIRST;
        public static final String ALIAS_MICRO_THUMBNAIL = Cloud.ALIAS_SIZE_FIRST;
    }

    public interface ShareImage {
        public static final String ALIAS_CLEAR_FIRST = Cloud.ALIAS_CLEAR_FIRST;
        public static final String ALIAS_MICRO_THUMBNAIL = (" CASE WHEN " + Cloud.ALIAS_MICRO_VALID + " THEN " + "microthumbfile" + " " + "WHEN " + Cloud.ALIAS_THUMBNAIL_VALID + " THEN " + "thumbnailFile" + " " + "ELSE " + "localFile" + " " + "END ");
        public static final String ALIAS_SIZE_FIRST = Cloud.ALIAS_SIZE_FIRST;
    }
}

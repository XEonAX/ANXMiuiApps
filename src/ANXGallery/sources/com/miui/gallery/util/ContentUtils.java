package com.miui.gallery.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;

public class ContentUtils {
    public static String getValidFilePathForContentUri(Context context, Uri uri) {
        if (context == null || uri == null || !"content".equals(uri.getScheme())) {
            return null;
        }
        String path = uri.getLastPathSegment();
        if (isValidFile(context, path)) {
            return path;
        }
        path = (String) SafeDBUtil.safeQuery(context, uri, new String[]{"_data"}, null, null, null, new QueryHandler<String>() {
            public String handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                return cursor.getString(0);
            }
        });
        return !isValidFile(context, path) ? null : path;
    }

    private static boolean isValidFile(Context context, String path) {
        return FileUtils.isFileExist(path) && StorageUtils.isInExternalStorage(context, path);
    }
}

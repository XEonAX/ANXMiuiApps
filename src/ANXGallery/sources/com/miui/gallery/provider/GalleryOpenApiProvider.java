package com.miui.gallery.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.Locale;

public class GalleryOpenApiProvider extends ContentProvider {
    protected static final UriMatcher sUriMatcher = new UriMatcher(-1);

    static {
        sUriMatcher.addURI("com.miui.gallery.open_api", "check_thumbnail", 1);
        sUriMatcher.addURI("com.miui.gallery.open_api", "search_status", 2);
        sUriMatcher.addURI("com.miui.gallery.open_api", "secret_album", 3);
    }

    public boolean onCreate() {
        return true;
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Cursor cursor;
        switch (sUriMatcher.match(uri)) {
            case 1:
                return CheckThumbnailHelper.checkThumbnail(getContext(), selectionArgs, uri.getBooleanQueryParameter("strict_mode", false));
            case 2:
                int status = AIAlbumStatusHelper.getOpenApiSearchStatus();
                cursor = new MatrixCursor(new String[]{"status"}, 1);
                cursor.addRow(new Object[]{Integer.valueOf(status)});
                return cursor;
            case 3:
                int count = getSecretAlbumUnsyncedCount();
                cursor = new MatrixCursor(new String[]{"unsynced_count"}, 1);
                cursor.addRow(new Object[]{Integer.valueOf(count)});
                return cursor;
            default:
                return null;
        }
    }

    private int getSecretAlbumUnsyncedCount() {
        Integer count = (Integer) SafeDBUtil.safeQuery(getContext(), Cloud.CLOUD_URI, new String[]{"count(_id)"}, String.format(Locale.US, "(%s) AND (%s) AND (%s = %d OR %s = %d)", new Object[]{CloudUtils.SELECTION_OWNER_NEED_SYNC, "(localGroupId=-1000)", "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8)}), null, null, new QueryHandler<Integer>() {
            public Integer handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                return Integer.valueOf(cursor.getInt(0));
            }
        });
        return count != null ? count.intValue() : 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }
}

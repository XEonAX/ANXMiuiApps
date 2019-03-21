package com.miui.gallery.cloud.download;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.miui.gallery.preference.ThumbnailPreference;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class BatchDownloadUtil {
    private static final String[] PROJECTION = new String[]{"_id", "sha1"};

    private static String getFileSelection(DownloadType type) {
        String fileSelection = "";
        switch (type) {
            case THUMBNAIL_BATCH:
                fileSelection = fileSelection + String.format("(%s is null) AND ", new Object[]{"thumbnailFile"});
                break;
            case ORIGIN_BATCH:
                break;
            default:
                return fileSelection;
        }
        return fileSelection + String.format("(%s is null) ", new Object[]{"localFile"});
    }

    private static Uri getUri(boolean isShare) {
        return isShare ? ShareImage.SHARE_URI : Cloud.CLOUD_URI;
    }

    private static String getTableName(boolean isShare) {
        return isShare ? "shareImage" : "cloud";
    }

    public static List<Uri> queryDownload(Context context, DownloadType type, boolean isShare, int limit) {
        String selection;
        List<Uri> uris = new LinkedList();
        Uri uri = getUri(isShare);
        if (limit > 0) {
            selection = String.format(Locale.US, "SELECT_id FROM %s WHERE (localFlag = 0 AND serverStatus = 'custom') AND serverType IN (1,2) AND %s LIMIT %s", new Object[]{getTableName(isShare), getFileSelection(type), Integer.valueOf(limit)});
        } else {
            selection = String.format(Locale.US, "(localFlag = 0 AND serverStatus = 'custom') AND serverType IN (1,2) AND %s", new Object[]{getFileSelection(type)});
        }
        try {
            Cursor cursor = context.getContentResolver().query(uri, PROJECTION, selection, null, "serverTag DESC");
            if (cursor != null) {
                while (cursor.moveToNext()) {
                    if (type != DownloadType.THUMBNAIL_BATCH || !ThumbnailPreference.containsThumbnailKey(cursor.getString(1))) {
                        uris.add(ContentUris.withAppendedId(uri, cursor.getLong(0)));
                    }
                }
            }
            BaseMiscUtil.closeSilently(cursor);
        } catch (Throwable e) {
            Log.e("BatchDownloadUtil", e);
            BaseMiscUtil.closeSilently(null);
        } catch (Throwable th) {
            BaseMiscUtil.closeSilently(null);
            throw th;
        }
        return uris;
    }

    public static void cleanDownloadedMark(Context context) {
        cleanDownloadedMark(context, DownloadType.THUMBNAIL_BATCH, false);
        cleanDownloadedMark(context, DownloadType.ORIGIN_BATCH, false);
        cleanDownloadedMark(context, DownloadType.THUMBNAIL_BATCH, true);
        cleanDownloadedMark(context, DownloadType.ORIGIN_BATCH, true);
    }

    public static void cleanDownloadedMark(Context context, DownloadType type, boolean isShare) {
        String cleanColumn = null;
        switch (type) {
            case THUMBNAIL_BATCH:
                cleanColumn = "thumbnailFile";
                break;
            case ORIGIN_BATCH:
                cleanColumn = "localFile";
                break;
        }
        if (cleanColumn != null) {
            ContentValues values = new ContentValues();
            values.putNull(cleanColumn);
            Log.d("BatchDownloadUtil", "clean %s, result %d", cleanColumn, Integer.valueOf(context.getContentResolver().update(getUri(isShare), values, String.format(Locale.US, "%s=''", new Object[]{cleanColumn}), null)));
        }
    }
}

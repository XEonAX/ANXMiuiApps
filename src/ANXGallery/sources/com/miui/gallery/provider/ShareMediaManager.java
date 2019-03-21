package com.miui.gallery.provider;

import android.accounts.Account;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.DownloadPathHelper;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.provider.InternalContract.ShareImage;
import com.miui.gallery.util.Numbers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class ShareMediaManager {
    private static Map<String, String> sShareMediaMap = new HashMap();

    static {
        sShareMediaMap.put("_id", "1073741823+_id");
        sShareMediaMap.put("sha1", "sha1");
        sShareMediaMap.put("localGroupId", "localGroupId");
        sShareMediaMap.put("microthumbfile", "microthumbfile");
        sShareMediaMap.put("thumbnailFile", "thumbnailFile");
        sShareMediaMap.put("localFile", "localFile");
        sShareMediaMap.put("serverType", "serverType");
        sShareMediaMap.put("title", "title");
        sShareMediaMap.put("duration", "duration");
        sShareMediaMap.put("description", "description");
        sShareMediaMap.put("size", "size");
        sShareMediaMap.put("mimeType", "mimeType");
        sShareMediaMap.put("location", "location");
        sShareMediaMap.put("exifGPSLatitude", "exifGPSLatitude");
        sShareMediaMap.put("exifGPSLatitudeRef", "exifGPSLatitudeRef");
        sShareMediaMap.put("exifGPSLongitude", "exifGPSLongitude");
        sShareMediaMap.put("exifGPSLongitudeRef", "exifGPSLongitudeRef");
        sShareMediaMap.put("alias_micro_thumbnail", ShareImage.ALIAS_MICRO_THUMBNAIL);
        sShareMediaMap.put("alias_create_time", " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END ");
        sShareMediaMap.put("alias_create_date", "STRFTIME('%Y%m%d', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, 'unixepoch', 'localtime')");
        sShareMediaMap.put("alias_sync_state", " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END ");
        sShareMediaMap.put("secretKey", "secretKey");
        sShareMediaMap.put("exifImageWidth", "exifImageWidth");
        sShareMediaMap.put("exifImageLength", "exifImageLength");
        sShareMediaMap.put("serverId", "serverId");
        sShareMediaMap.put("serverTag", "serverTag");
        sShareMediaMap.put("creatorId", "creatorId");
        sShareMediaMap.put("dateModified", "dateModified");
        sShareMediaMap.put("alias_modify_date", "STRFTIME('%Y%m%d',dateModified/1000, 'unixepoch', 'localtime')");
        sShareMediaMap.put("alias_clear_thumbnail", ShareImage.ALIAS_CLEAR_FIRST);
        sShareMediaMap.put("localFlag", "localFlag");
        sShareMediaMap.put("serverStatus", "serverStatus");
        sShareMediaMap.put("alias_is_favorite", "0");
        sShareMediaMap.put("specialTypeFlags", "specialTypeFlags");
        sShareMediaMap.put("alias_sort_time", " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END ");
        sShareMediaMap.put("alias_sort_date", "STRFTIME('%Y%m%d', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, 'unixepoch', 'localtime')");
    }

    public static String getShareMediaTable() {
        StringBuilder sqlShareImageColumns = new StringBuilder();
        for (Entry<String, String> entry : sShareMediaMap.entrySet()) {
            if (sqlShareImageColumns.length() != 0) {
                sqlShareImageColumns.append(",");
            }
            sqlShareImageColumns.append((String) entry.getValue());
            sqlShareImageColumns.append(" AS ");
            sqlShareImageColumns.append((String) entry.getKey());
        }
        StringBuilder sqlTable = new StringBuilder();
        sqlTable.append("(SELECT ");
        sqlTable.append(sqlShareImageColumns);
        sqlTable.append(" FROM ");
        sqlTable.append("shareImage");
        sqlTable.append(" WHERE ");
        sqlTable.append("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))");
        sqlTable.append(")");
        return sqlTable.toString();
    }

    public static Cursor query(SQLiteDatabase db, String[] projection, String selection, String[] selectionArgs, String groupBy, String orderBy) {
        Cursor cursor = db.query(getShareMediaTable(), projection, selection, selectionArgs, groupBy, null, orderBy);
        if (cursor != null && cursor.getCount() > 0 && isSupportTimelineCursor(cursor) && (cursor instanceof AbstractCursor)) {
            Bundle bundle = generateHeaderInfo(cursor);
            if (bundle != null) {
                ((AbstractCursor) cursor).setExtras(bundle);
            }
        }
        return cursor;
    }

    public static boolean isOtherShareMediaId(long id) {
        return id >= 1073741823 && id < 2147483647L;
    }

    public static long getOriginalMediaId(long id) {
        return id - 1073741823;
    }

    public static long convertToMediaId(long id) {
        return 1073741823 + id;
    }

    public static String getMediaFileName(String fileName, String albumId) {
        return DownloadPathHelper.addPostfixToFileName(fileName, albumId);
    }

    public static ArrayList<Long> getOwnerSharedImageIds(Map<Long, String> entries) {
        if (entries == null || entries.size() == 0) {
            return null;
        }
        Account account = AccountHelper.getXiaomiAccount(GalleryApp.sGetAndroidContext());
        if (account == null) {
            return null;
        }
        ArrayList<Long> list = new ArrayList();
        for (Entry<Long, String> entry : entries.entrySet()) {
            if (TextUtils.equals((CharSequence) entry.getValue(), account.name) || isSharedImageUnsynced(((Long) entry.getKey()).longValue())) {
                list.add(entry.getKey());
            }
        }
        return list;
    }

    private static boolean isSharedImageUnsynced(long id) {
        Cursor cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(GalleryContract.ShareImage.SHARE_URI, null, "_id = ? AND serverId IS NULL", new String[]{String.valueOf(getOriginalMediaId(id))}, null);
        if (cursor == null) {
            return false;
        }
        try {
            boolean z = cursor.getCount() > 0;
            cursor.close();
            return z;
        } catch (Throwable th) {
            cursor.close();
        }
    }

    private static int getJulianDay(Cursor cursor) {
        return cursor.getInt(cursor.getColumnIndex("alias_create_date"));
    }

    private static String getLocation(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndex("location"));
    }

    private static boolean isSupportTimelineCursor(Cursor cursor) {
        if (cursor == null || cursor.getColumnIndex("alias_create_date") == -1 || cursor.getColumnIndex("location") == -1) {
            return false;
        }
        return true;
    }

    private static Bundle generateHeaderInfo(Cursor cursor) {
        if (cursor == null || cursor.getCount() <= 0 || cursor.getColumnIndex("alias_create_date") == -1 || cursor.getColumnIndex("location") == -1) {
            return null;
        }
        ArrayList<Integer> counts = new ArrayList();
        ArrayList<Integer> startPos = new ArrayList();
        ArrayList<String> locations = new ArrayList();
        List locationTemp = new ArrayList();
        Number id = Integer.valueOf(-1);
        Integer count = Integer.valueOf(1);
        int index = 0;
        while (cursor.moveToNext()) {
            String cursorLocation = getLocation(cursor);
            if (Numbers.equals(id, -1)) {
                id = Integer.valueOf(getJulianDay(cursor));
                startPos.add(Integer.valueOf(index));
                locationTemp.add(cursorLocation);
            } else if (Numbers.equals(id, getJulianDay(cursor))) {
                count = Integer.valueOf(count.intValue() + 1);
                locationTemp.add(cursorLocation);
            } else {
                counts.add(count);
                count = Integer.valueOf(1);
                locations.add(LocationManager.getInstance().generateTitleLine(locationTemp));
                locationTemp.clear();
                locationTemp.add(cursorLocation);
                id = Integer.valueOf(getJulianDay(cursor));
                startPos.add(Integer.valueOf(index));
            }
            index++;
            if (index == cursor.getCount()) {
                counts.add(count);
                locations.add(LocationManager.getInstance().generateTitleLine(locationTemp));
            }
        }
        Bundle extras = new Bundle();
        extras.putIntegerArrayList("extra_timeline_item_count_in_group", counts);
        extras.putIntegerArrayList("extra_timeline_group_start_pos", startPos);
        extras.putStringArrayList("extra_timeline_group_start_locations", locations);
        return extras;
    }
}

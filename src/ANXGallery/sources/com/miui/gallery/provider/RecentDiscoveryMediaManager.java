package com.miui.gallery.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.discovery.DiscoveryMessageManager;
import com.miui.gallery.discovery.RecentDiscoveryMessageOperator.RecentSaveParams;
import com.miui.gallery.model.BaseAlbumCover;
import com.miui.gallery.preference.GalleryPreferences.HiddenAlbum;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.InternalContract.RecentDiscoveredMedia;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.GalleryDateUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.regex.Pattern;
import miui.date.DateUtils;

public class RecentDiscoveryMediaManager {
    private static final String ALIAS_MICRO_VALID = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"microthumbfile", "microthumbfile"});
    private static final String ALIAS_THUMBNAIL_VALID = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"thumbnailFile", "thumbnailFile"});
    private static final String COVER_ALIAS_DISPLAYABLE = (" CASE WHEN " + ALIAS_MICRO_VALID + " THEN " + "microthumbfile" + " " + "WHEN " + ALIAS_THUMBNAIL_VALID + " THEN " + "thumbnailFile" + " " + "ELSE " + "localFile" + " " + "END ");
    private static final String SQL_ALBUM_COVER = ("_id AS cover_id, " + COVER_ALIAS_DISPLAYABLE + " AS " + "cover_path" + ", " + "sha1" + " AS " + "cover_sha1" + ", " + "alias_sync_state" + " AS " + "cover_sync_state" + ", " + "size" + " AS " + "cover_size");
    private static final String SQL_INCLUDE_LOCAL = (" AND " + Cloud.ALIAS_LOCAL_MEDIA + " ");
    private static Map<String, String> sRecentDiscoveryMediaMap = new HashMap();

    private static class Group {
        public long albumId;
        public List<Integer> cursorPosList = new ArrayList();
        public long endDate;
        public int julianday;
        public long startDate;

        public Group(long dateAdded, int julianday, long albumId, int cursorPos) {
            this.albumId = albumId;
            this.startDate = dateAdded;
            this.endDate = dateAdded;
            this.julianday = julianday;
            this.cursorPosList.add(Integer.valueOf(cursorPos));
        }
    }

    public static class RecentMediaEntry {
        private final long mAlbumId;
        private final long mDateModified;
        private final long mMediaId;
        private final String mThumbPath;

        public RecentMediaEntry(long albumId, long mediaId, String thumbPath, long dateModified) {
            this.mAlbumId = albumId;
            this.mMediaId = mediaId;
            this.mThumbPath = thumbPath;
            this.mDateModified = dateModified;
        }

        public long getMediaId() {
            return this.mMediaId;
        }

        public String getThumbPath() {
            return this.mThumbPath;
        }

        public long getDateModified() {
            return this.mDateModified;
        }
    }

    static {
        sRecentDiscoveryMediaMap.put("_id", "mediaId");
        sRecentDiscoveryMediaMap.put("sha1", "sha1");
        sRecentDiscoveryMediaMap.put("localGroupId", "localGroupId");
        sRecentDiscoveryMediaMap.put("microthumbfile", "microthumbfile");
        sRecentDiscoveryMediaMap.put("thumbnailFile", "thumbnailFile");
        sRecentDiscoveryMediaMap.put("localFile", "localFile");
        sRecentDiscoveryMediaMap.put("serverType", "serverType");
        sRecentDiscoveryMediaMap.put("title", "title");
        sRecentDiscoveryMediaMap.put("duration", "duration");
        sRecentDiscoveryMediaMap.put("description", "description");
        sRecentDiscoveryMediaMap.put("size", "size");
        sRecentDiscoveryMediaMap.put("mimeType", "mimeType");
        sRecentDiscoveryMediaMap.put("location", "location");
        sRecentDiscoveryMediaMap.put("exifGPSLatitude", "exifGPSLatitude");
        sRecentDiscoveryMediaMap.put("exifGPSLatitudeRef", "exifGPSLatitudeRef");
        sRecentDiscoveryMediaMap.put("exifGPSLongitude", "exifGPSLongitude");
        sRecentDiscoveryMediaMap.put("exifGPSLongitudeRef", "exifGPSLongitudeRef");
        sRecentDiscoveryMediaMap.put("alias_micro_thumbnail", RecentDiscoveredMedia.ALIAS_MICRO_THUMBNAIL);
        sRecentDiscoveryMediaMap.put("alias_create_time", " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END ");
        sRecentDiscoveryMediaMap.put("alias_create_date", "STRFTIME('%Y%m%d', CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END /1000, 'unixepoch', 'localtime')");
        sRecentDiscoveryMediaMap.put("alias_sync_state", " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END ");
        sRecentDiscoveryMediaMap.put("secretKey", "secretKey");
        sRecentDiscoveryMediaMap.put("exifImageWidth", "exifImageWidth");
        sRecentDiscoveryMediaMap.put("exifImageLength", "exifImageLength");
        sRecentDiscoveryMediaMap.put("serverId", "serverId");
        sRecentDiscoveryMediaMap.put("serverTag", "serverTag");
        sRecentDiscoveryMediaMap.put("creatorId", "creatorId");
        sRecentDiscoveryMediaMap.put("dateAdded", "dateAdded");
        sRecentDiscoveryMediaMap.put("alias_julianday", "CAST(JULIANDAY(dateModified/1000, 'unixepoch', 'localtime', 'start of day') AS int)");
        sRecentDiscoveryMediaMap.put("dateModified", "dateModified");
        sRecentDiscoveryMediaMap.put("babyInfoJson", "babyInfoJson");
        sRecentDiscoveryMediaMap.put("alias_clear_thumbnail", RecentDiscoveredMedia.ALIAS_CLEAR_THUMBNAIL);
        sRecentDiscoveryMediaMap.put("alias_is_favorite", "isFavorite");
        sRecentDiscoveryMediaMap.put("specialTypeFlags", "specialTypeFlags");
        sRecentDiscoveryMediaMap.put("alias_sort_time", "dateModified");
    }

    private static boolean isInShowHiddenMode() {
        return HiddenAlbum.isShowHiddenAlbum();
    }

    private static String getExcludeHiddenAlbumSelection() {
        return isInShowHiddenMode() ? "" : " AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND attributes&16=0)) ";
    }

    private static boolean isInLocalMode() {
        return LocalMode.isOnlyShowLocalPhoto();
    }

    private static String getExcludeBabyAlbumSelection() {
        return isInLocalMode() ? "AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND babyInfoJson IS NULL )) " : "";
    }

    private static String getIncludeLocalSelection() {
        return isInLocalMode() ? SQL_INCLUDE_LOCAL : "";
    }

    private static String getDaysWithinSelection(int days) {
        return String.format(Locale.US, " AND ( CASE WHEN DATE(dateModified/1000, 'unixepoch', 'localtime') == DATE('now', 'localtime') THEN 0 ELSE CAST(JULIANDAY('now', 'localtime', 'start of day') - JULIANDAY(dateModified/1000, 'unixepoch', 'localtime') AS int) + 1 END < %d)", new Object[]{Integer.valueOf(days)});
    }

    private static String getNotInHiddenAlbumSelection(long albumId) {
        if (isInShowHiddenMode()) {
            return "";
        }
        return String.format(Locale.US, " AND (%s in (SELECT _id FROM cloud WHERE serverType=0 AND attributes&16=0))", new Object[]{Long.valueOf(albumId)});
    }

    private static String getNotSecretSelection(long albumId) {
        return String.format(Locale.US, "(%s !=-1000)", new Object[]{Long.valueOf(albumId)});
    }

    private static boolean isMediaCanShowInMessage(long albumId) {
        boolean z = false;
        Cursor cursor = GalleryDBHelper.getInstance().getReadableDatabase().rawQuery("SELECT " + getNotSecretSelection(albumId) + getNotInHiddenAlbumSelection(albumId), null);
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    if (cursor.getInt(0) != 0) {
                        z = true;
                    }
                    cursor.close();
                } else {
                    cursor.close();
                }
            } catch (Throwable th) {
                cursor.close();
            }
        }
        return z;
    }

    public static void cleanupInvalidRecords() {
        try {
            GalleryDBHelper.getInstance().getWritableDatabase().execSQL("DELETE FROM recentDiscoveredMedia WHERE mediaId IN  (SELECT mediaId FROM (SELECT mediaId, cloud._id AS _id, localFlag, serverStatus FROM (recentDiscoveredMedia LEFT OUTER JOIN cloud ON cloud._id = mediaId)) WHERE (localFlag IN (11, -1, 2) OR (localFlag=0 AND serverStatus<>'custom')) OR (_id IS NULL))");
        } catch (SQLException e) {
            Log.e("RecentDiscoveryMediaManager", "Something wrong happened when cleanup recent table: %s", e.getMessage());
            e.printStackTrace();
        }
    }

    public static String getRecentDiscoveryTable(boolean removeDuplicateItems) {
        StringBuilder sqlRecentMediaColumns = new StringBuilder();
        for (Entry<String, String> entry : sRecentDiscoveryMediaMap.entrySet()) {
            if (sqlRecentMediaColumns.length() != 0) {
                sqlRecentMediaColumns.append(",");
            }
            sqlRecentMediaColumns.append((String) entry.getValue());
            sqlRecentMediaColumns.append(" AS ");
            sqlRecentMediaColumns.append((String) entry.getKey());
        }
        StringBuilder sqlTable = new StringBuilder();
        sqlTable.append("(SELECT ").append(sqlRecentMediaColumns).append(" FROM (").append("recentDiscoveredMedia").append(" JOIN ").append("extended_cloud").append(" ON ").append("extended_cloud").append(".").append("_id").append(" = ").append("mediaId").append(")").append(" WHERE ").append("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))").append(" AND ").append("(localGroupId!=-1000)").append(getExcludeHiddenAlbumSelection()).append(getIncludeLocalSelection()).append(getExcludeBabyAlbumSelection()).append(getDaysWithinSelection(30)).append(removeDuplicateItems ? " GROUP BY sha1" : "").append(")");
        return sqlTable.toString();
    }

    public static Cursor queryAlbumCover(SQLiteDatabase db, int count, boolean removeDuplicateItems) {
        AbstractCursor cursor = new AbstractWindowedCursor() {
            public int getCount() {
                return 0;
            }

            public String[] getColumnNames() {
                return new String[0];
            }
        };
        cursor.setExtras(generateAlbumCover(db, count, removeDuplicateItems));
        return cursor;
    }

    private static Bundle generateAlbumCover(SQLiteDatabase db, int count, boolean removeDuplicateItems) {
        Bundle bundle = null;
        Cursor cursor = db.rawQuery("SELECT " + SQL_ALBUM_COVER + " FROM " + getRecentDiscoveryTable(removeDuplicateItems) + " ORDER BY " + "dateModified" + " DESC ", null);
        if (cursor != null) {
            try {
                ArrayList<BaseAlbumCover> covers = new ArrayList();
                int coverIdIndex = cursor.getColumnIndex("cover_id");
                int coverPathIndex = cursor.getColumnIndex("cover_path");
                int coverSha1Index = cursor.getColumnIndex("cover_sha1");
                int coverSyncStateIndex = cursor.getColumnIndex("cover_sync_state");
                int coverSizeIndex = cursor.getColumnIndex("cover_size");
                while (cursor.moveToNext()) {
                    BaseAlbumCover cover = new BaseAlbumCover();
                    cover.coverId = cursor.getLong(coverIdIndex);
                    cover.coverPath = cursor.getString(coverPathIndex);
                    cover.coverSha1 = cursor.getString(coverSha1Index);
                    cover.coverSyncState = cursor.getInt(coverSyncStateIndex);
                    cover.coverSize = cursor.getLong(coverSizeIndex);
                    covers.add(cover);
                    if (covers.size() >= count) {
                        break;
                    }
                }
                bundle = new Bundle();
                bundle.putParcelableArrayList("album_covers", covers);
                bundle.putInt("album_photo_count", cursor.getCount());
            } finally {
                cursor.close();
            }
        }
        return bundle;
    }

    public static Cursor query(SQLiteDatabase db, String[] projection, String selection, String[] selectionArgs, String groupBy, String orderBy, boolean removeDuplicateItems, boolean generateHeaders) {
        if (generateHeaders) {
            if (projection != null) {
                boolean needAppendProjection = false;
                ArrayList<String> projections = new ArrayList(Arrays.asList(projection));
                if (!projections.contains("localGroupId")) {
                    projections.add("localGroupId");
                    needAppendProjection = true;
                }
                if (!projections.contains("dateModified")) {
                    projections.add("dateModified");
                    needAppendProjection = true;
                }
                if (!projections.contains("alias_julianday")) {
                    projections.add("alias_julianday");
                    needAppendProjection = true;
                }
                if (needAppendProjection) {
                    projection = new String[projections.size()];
                    for (int i = 0; i < projections.size(); i++) {
                        projection[i] = (String) projections.get(i);
                    }
                }
            }
            orderBy = "dateModified DESC ";
        }
        Cursor cursor = db.query(getRecentDiscoveryTable(removeDuplicateItems), projection, selection, selectionArgs, groupBy, null, orderBy);
        if (cursor == null || cursor.getCount() <= 0 || !generateHeaders) {
            return cursor;
        }
        Cursor ret;
        try {
            long start = System.currentTimeMillis();
            ret = resortAndGenerateHeaders(cursor, projection);
            Log.d("RecentDiscoveryMediaManager", "resortAndGenerateHeaders cost %d ms.", Long.valueOf(System.currentTimeMillis() - start));
        } catch (Exception e) {
            Log.e("RecentDiscoveryMediaManager", "resortAndGenerateHeaders failed.");
            e.printStackTrace();
            ret = null;
        } finally {
            BaseMiscUtil.closeSilently(cursor);
        }
        return ret;
    }

    private static Cursor resortAndGenerateHeaders(Cursor cursor, String[] projection) {
        if (cursor != null && cursor.getCount() > 0) {
            if (cursor.getColumnIndex("dateModified") != -1) {
                if (cursor.getColumnIndex("alias_julianday") != -1) {
                    if (cursor.getColumnIndex("localGroupId") != -1) {
                        ArrayList<Group> groups = new ArrayList();
                        while (cursor.moveToNext()) {
                            insertItemToGroupList(getDateModified(cursor), getJulianday(cursor), getAlbumId(cursor), cursor.getPosition(), groups);
                        }
                        Cursor ret = new MatrixCursor(projection);
                        ArrayList<Integer> counts = new ArrayList();
                        ArrayList<Integer> startPosList = new ArrayList();
                        ArrayList<String> timeLabelList = new ArrayList();
                        int index = 0;
                        Iterator it = groups.iterator();
                        while (it.hasNext()) {
                            Group group = (Group) it.next();
                            timeLabelList.add(DateUtils.formatRelativeTime(getDateModified(cursor, ((Integer) group.cursorPosList.get(0)).intValue()), false));
                            counts.add(Integer.valueOf(group.cursorPosList.size()));
                            startPosList.add(Integer.valueOf(index));
                            index += group.cursorPosList.size();
                            for (Integer pos : group.cursorPosList) {
                                if (moveCursorToPosition(cursor, pos.intValue())) {
                                    addOneRowToMatrixCursor(cursor, ret, projection);
                                }
                            }
                        }
                        Bundle extras = new Bundle();
                        extras.putIntegerArrayList("extra_timeline_item_count_in_group", counts);
                        extras.putIntegerArrayList("extra_timeline_group_start_pos", startPosList);
                        extras.putStringArrayList("extra_timeline_group_time_labels", timeLabelList);
                        ret.setExtras(extras);
                        return ret;
                    }
                }
            }
        }
        return null;
    }

    private static void insertItemToGroupList(long dateAdded, int julianday, long albumId, int cursorPos, ArrayList<Group> groupList) {
        if (BaseMiscUtil.isValid(groupList)) {
            boolean isFirstItem = true;
            int i = groupList.size() - 1;
            while (i >= 0) {
                Group group = (Group) groupList.get(i);
                if (group.endDate - dateAdded > 180000) {
                    if (isFirstItem && albumId == group.albumId && julianday == group.julianday) {
                        mergeItemToGroup(dateAdded, cursorPos, group);
                        return;
                    }
                    groupList.add(new Group(dateAdded, julianday, albumId, cursorPos));
                    return;
                } else if (albumId == group.albumId) {
                    mergeItemToGroup(dateAdded, cursorPos, group);
                    return;
                } else {
                    isFirstItem = false;
                    i--;
                }
            }
            groupList.add(new Group(dateAdded, julianday, albumId, cursorPos));
            return;
        }
        if (groupList == null) {
            groupList = new ArrayList();
        }
        groupList.add(new Group(dateAdded, julianday, albumId, cursorPos));
    }

    private static void mergeItemToGroup(long dateAdded, int cursorPos, Group group) {
        group.endDate = dateAdded;
        group.cursorPosList.add(Integer.valueOf(cursorPos));
    }

    private static void addOneRowToMatrixCursor(Cursor fromCursor, MatrixCursor toCursor, String[] projection) {
        int columnsLen = projection.length;
        Object[] columns = new Object[columnsLen];
        for (int index = 0; index < columnsLen; index++) {
            switch (fromCursor.getType(index)) {
                case 0:
                    columns[index] = null;
                    break;
                case 1:
                    columns[index] = Long.valueOf(fromCursor.getLong(index));
                    break;
                case 2:
                    columns[index] = Double.valueOf(fromCursor.getDouble(index));
                    break;
                case 3:
                    columns[index] = fromCursor.getString(index);
                    break;
                case 4:
                    columns[index] = fromCursor.getBlob(index);
                    break;
                default:
                    break;
            }
        }
        toCursor.addRow(columns);
    }

    private static boolean moveCursorToPosition(Cursor cursor, int position) {
        return (cursor == null || cursor.isClosed() || !cursor.moveToPosition(position)) ? false : true;
    }

    private static long getDateModified(Cursor cursor, int position) {
        if (moveCursorToPosition(cursor, position)) {
            return cursor.getLong(cursor.getColumnIndex("dateModified"));
        }
        return 0;
    }

    private static long getDateModified(Cursor cursor) {
        return cursor.getLong(cursor.getColumnIndex("dateModified"));
    }

    private static long getAlbumId(Cursor cursor) {
        return cursor.getLong(cursor.getColumnIndex("localGroupId"));
    }

    private static int getJulianday(Cursor cursor) {
        return cursor.getInt(cursor.getColumnIndex("alias_julianday"));
    }

    public static void insertToRecentDB(Context context, RecentMediaEntry... saveEntries) {
        if (context != null && saveEntries != null && saveEntries.length > 0) {
            HashMap<String, List<RecentMediaEntry>> entryMap = new HashMap();
            for (RecentMediaEntry entry : saveEntries) {
                String albumRelativePath = StorageUtils.getRelativePath(context, FileUtils.getParentFolderPath(entry.getThumbPath()));
                if (TextUtils.isEmpty(albumRelativePath)) {
                    Log.w("RecentDiscoveryMediaManager", "Could't get album path for %s", entry.getThumbPath());
                    return;
                }
                List<RecentMediaEntry> list = (List) entryMap.get(albumRelativePath);
                if (list == null) {
                    list = new ArrayList();
                    entryMap.put(albumRelativePath, list);
                }
                list.add(entry);
            }
            ArrayList<RecentMediaEntry> validEntries = new ArrayList();
            ArrayList<String> validThumbs = new ArrayList();
            for (Entry<String, List<RecentMediaEntry>> entry2 : entryMap.entrySet()) {
                boolean isCameraAlbum = "DCIM/Camera".equalsIgnoreCase((String) entry2.getKey());
                if (!isCameraAlbum && isAlbumInWhiteList((String) entry2.getKey())) {
                    List<RecentMediaEntry> value = (List) entry2.getValue();
                    if (BaseMiscUtil.isValid(value)) {
                        validEntries.addAll(value);
                        if (isMediaCanShowInMessage(((RecentMediaEntry) value.get(0)).mAlbumId)) {
                            for (RecentMediaEntry recentMediaEntry : value) {
                                if (GalleryDateUtils.daysBeforeToday(recentMediaEntry.getDateModified()) < 30) {
                                    validThumbs.add(recentMediaEntry.getThumbPath());
                                }
                            }
                        }
                    }
                } else if (!isCameraAlbum) {
                    recordNotInWhiteListAlbum((String) entry2.getKey());
                }
            }
            int validSize = validEntries.size();
            if (validSize != 0) {
                ContentValues[] valuesArray = new ContentValues[validSize];
                for (int i = 0; i < validSize; i++) {
                    ContentValues values = new ContentValues();
                    values.put("mediaId", Long.valueOf(((RecentMediaEntry) validEntries.get(i)).getMediaId()));
                    values.put("dateAdded", Long.valueOf(System.currentTimeMillis()));
                    values.put("source", Integer.valueOf(0));
                    valuesArray[i] = values;
                }
                context.getContentResolver().bulkInsert(GalleryContract.RecentDiscoveredMedia.URI, valuesArray);
                if (validThumbs.size() > 0) {
                    DiscoveryMessageManager.getInstance().saveMessage(context, 1, new RecentSaveParams(validThumbs.size(), validThumbs));
                }
            }
        }
    }

    private static void recordNotInWhiteListAlbum(String albumRelativePath) {
        HashMap<String, String> params = new HashMap();
        params.put("album_relative_path", albumRelativePath);
        BaseSamplingStatHelper.recordCountEvent("media_scanner", "scanner_directory_not_in_white_list", params);
    }

    private static boolean isAlbumInWhiteList(String albumRelativePath) {
        Iterator it;
        ArrayList<String> whiteList = CloudControlStrategyHelper.getAlbumsInWhiteList();
        if (BaseMiscUtil.isValid(whiteList)) {
            it = whiteList.iterator();
            while (it.hasNext()) {
                String path = (String) it.next();
                if (path != null && path.equalsIgnoreCase(albumRelativePath)) {
                    return true;
                }
            }
        }
        List<Pattern> whiteListPatterns = CloudControlStrategyHelper.getAlbumWhiteListPatterns();
        if (BaseMiscUtil.isValid(whiteListPatterns)) {
            for (Pattern pattern : whiteListPatterns) {
                if (pattern.matcher(albumRelativePath).find()) {
                    return true;
                }
            }
        }
        return false;
    }
}

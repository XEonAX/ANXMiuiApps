package com.miui.gallery.provider;

import android.database.AbstractCursor;
import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.model.FaceAlbumCover;
import com.miui.gallery.preference.GalleryPreferences.Album;
import com.miui.gallery.preference.GalleryPreferences.HiddenAlbum;
import com.miui.gallery.preference.GalleryPreferences.LocalMode;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.InternalContract.ShareImage;
import com.miui.gallery.provider.MediaSortDateHelper.SortDate;
import com.miui.gallery.ui.AIAlbumStatusHelper;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class AlbumManager {
    private static Map<Long, Long> ALBUM_ATTRIBUTES;
    private static List<Long> ALBUM_SYNC_ATTRIBUTES;
    private static final String SQL_ALBUM_BASIC = ("SELECT _id AS _id, attributes AS attributes, " + SQL_ALBUM_NAME + ", " + SQL_ALBUM_LOCAL_PATH + ", " + "localFlag" + " AS " + "flag" + ", " + "dateTaken" + " AS " + "top_time" + ", " + "peopleId" + " AS " + "face_people_id" + ", " + "babyInfoJson" + " AS " + "baby_info" + ", " + "NULL AS " + "baby_sharer_info" + ", " + "serverId" + " AS " + "serverId" + ", " + "thumbnailInfo" + " AS " + "thumbnail_info" + ", " + SQL_ALBUM_SORT_BY + ", " + SQL_ALBUM_IMMUTABLE + " " + "FROM " + "cloud" + " " + "WHERE " + "(serverType=0)" + " " + "AND " + "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))" + " " + "%s " + "%s");
    private static final String SQL_ALBUM_COVER_DEFAULT = (", _id AS cover_id, (" + Cloud.ALIAS_CLEAR_FIRST + ") AS " + "cover_path" + ", " + "sha1" + " AS " + "cover_sha1" + ", " + " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END " + " AS " + "cover_sync_state" + ", " + "size" + " AS " + "cover_size" + ", " + "max(" + " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END " + ") AS latest_photo ");
    private static final String SQL_ALBUM_COVER_FORMAT = (", _id AS cover_id, (" + Cloud.ALIAS_CLEAR_FIRST + ") AS " + "cover_path" + ", " + "sha1" + " AS " + "cover_sha1" + ", " + " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END " + " AS " + "cover_sync_state" + ", " + "size" + " AS " + "cover_size" + ", " + "max(CASE" + " WHEN " + "localGroupId" + " IN " + "(SELECT " + "_id" + " FROM " + "cloud" + " WHERE " + "localFile" + " COLLATE NOCASE IN (%s)" + " AND " + "(serverType=0)" + ")" + " THEN " + "dateModified" + " ELSE (" + " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END " + ") END) " + "AS latest_photo ");
    private static String SQL_ALBUM_IMMUTABLE = "CASE WHEN localFile LIKE '/%%' THEN 1 ELSE 0 END AS immutable";
    private static String SQL_ALBUM_LOCAL_PATH = "localFile AS local_path";
    private static String SQL_ALBUM_NAME = "fileName AS name";
    private static String SQL_ALBUM_NOT_HIDDEN = "AND (attributes & 16 = 0)";
    private static String SQL_ALBUM_SORT_BY = "CASE WHEN sortBy IS NULL THEN CASE WHEN dateTaken >0 THEN 9223372036854775807 - dateTaken ELSE dateTaken END ELSE sortBy END AS sortBy";
    public static final String SQL_BABY_ALBUM_COVER = ("(SELECT * FROM (SELECT cloud.serverId as imageId" + SQL_ALBUM_COVER_DEFAULT + "FROM " + "cloud" + " " + " WHERE " + "localGroupId" + " = %s ))");
    public static final String SQL_BABY_OTHER_SHARED_ALBUM_COVER = ("(SELECT * FROM (SELECT serverId as imageId" + SQL_ALBUM_COVER_DEFAULT + "FROM " + "shareImage" + " " + " WHERE " + "localGroupId" + " = %s ))");
    private static String SQL_EXCLUDE_BABY_ALBUM = "AND (babyInfoJson IS NULL)";
    private static String SQL_EXCLUDE_MEDIA_IN_BABY_ALBUM = "AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND babyInfoJson IS NULL )) ";
    private static final String SQL_RECENT_ALBUM_COVER = (", _id AS cover_id, (" + Cloud.ALIAS_CLEAR_FIRST + ") AS " + "cover_path" + ", " + "sha1" + " AS " + "cover_sha1" + ", " + " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END " + " AS " + "cover_sync_state" + ", " + "size" + " AS " + "cover_size" + ", " + "max(" + "dateModified" + ") AS latest_photo ");
    private static final String SQL_SHARE_ALBUM = ("SELECT * FROM (" + SQL_SHARE_ALBUM_BASIC + ")" + " LEFT JOIN " + "(SELECT " + 2147383647 + "+" + "localGroupId" + " AS " + "_id" + "%s" + SQL_SHARE_ALBUM_COVER + ", 0 AS size " + "FROM " + "shareImage" + " " + "WHERE " + "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom'))" + " " + "%s" + "GROUP BY " + "localGroupId" + ") USING (" + "_id" + ")");
    private static final String SQL_SHARE_ALBUM_BASIC = ("SELECT 2147383647+_id AS _id, attributes AS attributes, sharealbum.fileName AS name, NULL AS local_path, localFlag AS flag, dateTaken AS top_time, peopleId AS face_people_id, babyInfoJson AS baby_info, sharerInfo AS baby_sharer_info, serverId AS serverId, NULL AS thumbnail_info, " + SQL_SHARE_ALBUM_SORT_BY + ", " + 0 + " AS " + "immutable" + " " + "FROM " + "shareAlbum" + " " + "WHERE " + "serverId" + " IS NOT NULL " + "%s");
    private static final String SQL_SHARE_ALBUM_COVER = (", 1073741823+_id AS cover_id, (" + ShareImage.ALIAS_CLEAR_FIRST + ") AS " + "cover_path" + ", " + "sha1" + " AS " + "cover_sha1" + ", " + " CASE WHEN localFlag = 0  THEN 0 WHEN localFlag IN (5, 6, 9) THEN 1 ELSE 3 END " + " AS " + "cover_sync_state" + ", " + "size" + " AS " + "cover_size" + ", " + "max(" + " CASE WHEN mixedDateTime NOT NULL THEN mixedDateTime ELSE dateTaken END " + ") AS latest_photo ");
    private static String SQL_SHARE_ALBUM_NOT_HIDDEN = "AND (attributes & 16 = 0)";
    private static String SQL_SHARE_ALBUM_SORT_BY = "CASE WHEN sortBy IS NULL THEN CASE WHEN dateTaken >0 THEN 9223372036854775807 - dateTaken ELSE dateTaken END ELSE sortBy END AS sortBy";
    private static final String SQL_UNION_SHARE_ALBUM = (" UNION " + SQL_SHARE_ALBUM);

    static {
        Map<Long, Long> attributes = new HashMap();
        attributes.put(Long.valueOf(1), Long.valueOf(2));
        attributes.put(Long.valueOf(4), Long.valueOf(8));
        attributes.put(Long.valueOf(16), Long.valueOf(32));
        attributes.put(Long.valueOf(64), Long.valueOf(128));
        ALBUM_ATTRIBUTES = Collections.unmodifiableMap(attributes);
        List<Long> syncAttributes = new ArrayList();
        syncAttributes.add(Long.valueOf(1));
        syncAttributes.add(Long.valueOf(64));
        ALBUM_SYNC_ATTRIBUTES = Collections.unmodifiableList(syncAttributes);
    }

    public static Cursor query(SQLiteDatabase db, String[] projection, String selection, String[] selectionArgs, String orderBy, boolean joinVideoAlbum, boolean joinFaceAlbum, boolean joinShare, boolean joinPano, boolean joinRecent, boolean joinFavorites, boolean excludeEmptyAlbum, boolean queryAllExceptDeleted, boolean removeDuplicateItems, Integer mediaType, boolean fillCovers, boolean stubForVirtualAlbums, String limit) {
        String albumCover;
        boolean excludeHiddenAlbums = (queryAllExceptDeleted || isInShowHiddenMode()) ? false : true;
        boolean excludeNonLocalAlbums = !queryAllExceptDeleted && isInLocalMode();
        String sqlJoinFaceAlbum = "";
        String sqlJoinVideoAlbum = "";
        String sqlJoinShareAlbum = "";
        String sqlJoinPanoAlbum = "";
        String sqlJoinRecentAlbum = "";
        String sqlJoinFavoritesAlbum = "";
        if (fillCovers) {
            if (BaseMiscUtil.isValid(MediaSortDateHelper.getSortDateProvider().getAlbumPathsBySortDate(SortDate.MODIFY_TIME))) {
                albumCover = String.format(Locale.US, SQL_ALBUM_COVER_FORMAT, new Object[]{"'" + TextUtils.join("', '", MediaSortDateHelper.getSortDateProvider().getAlbumPathsBySortDate(SortDate.MODIFY_TIME)) + "'"});
            } else {
                albumCover = SQL_ALBUM_COVER_DEFAULT;
            }
        } else {
            albumCover = ", -1 AS cover_id, NULL AS cover_path, NULL AS cover_sha1, 0 AS cover_sync_state, 0 AS cover_size, NULL AS latest_photo ";
        }
        if (joinFaceAlbum && ((mediaType == null || mediaType.intValue() == 1) && isIncludeFaceAlbum(excludeNonLocalAlbums))) {
            sqlJoinFaceAlbum = getFaceAlbumColumns();
        }
        if (joinVideoAlbum && (mediaType == null || mediaType.intValue() == 2)) {
            sqlJoinVideoAlbum = getVideoAlbumColumns(albumCover, excludeHiddenAlbums, excludeNonLocalAlbums, stubForVirtualAlbums);
        }
        if (joinShare && !excludeNonLocalAlbums) {
            sqlJoinShareAlbum = getShareAlbumBasicColumns(excludeHiddenAlbums, removeDuplicateItems, mediaType);
        }
        if (joinPano && (mediaType == null || mediaType.intValue() == 1)) {
            sqlJoinPanoAlbum = getPanoAlbumColumns(albumCover, excludeHiddenAlbums, excludeNonLocalAlbums, stubForVirtualAlbums);
        }
        if (joinRecent) {
            sqlJoinRecentAlbum = getRecentAlbumColumns(excludeHiddenAlbums, excludeNonLocalAlbums, removeDuplicateItems, mediaType, fillCovers, stubForVirtualAlbums);
        }
        if (joinFavorites) {
            sqlJoinFavoritesAlbum = getFavoritesAlbumColumns(albumCover, excludeHiddenAlbums, excludeNonLocalAlbums, mediaType, stubForVirtualAlbums);
        }
        String albumBasic = getAlbumBasicColumns(excludeHiddenAlbums, excludeNonLocalAlbums);
        String albumSize = isQueryColumn(projection, "size") ? ", sum(size) AS size " : ", 0 AS size ";
        String str = "(SELECT * FROM (%s) LEFT JOIN (SELECT localGroupId AS _id%s%s%sFROM (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) %s%sGROUP BY localGroupId) USING (_id)%s %s %s %s %s %s)";
        Object[] objArr = new Object[12];
        objArr[0] = albumBasic;
        objArr[1] = removeDuplicateItems ? ", count(DISTINCT sha1) AS media_count" : ", count(_id) AS media_count";
        objArr[2] = albumCover;
        objArr[3] = albumSize;
        objArr[4] = getMediaTypeSelection(mediaType);
        objArr[5] = getExcludeNonLocalSelection(excludeNonLocalAlbums);
        objArr[6] = sqlJoinShareAlbum;
        objArr[7] = sqlJoinVideoAlbum;
        objArr[8] = sqlJoinPanoAlbum;
        objArr[9] = sqlJoinRecentAlbum;
        objArr[10] = sqlJoinFavoritesAlbum;
        objArr[11] = sqlJoinFaceAlbum;
        String table = String.format(str, objArr);
        if (excludeEmptyAlbum) {
            if (TextUtils.isEmpty(selection)) {
                selection = getExcludeEmptyAlbumSelection(excludeNonLocalAlbums);
            } else {
                selection = getExcludeEmptyAlbumSelection(excludeNonLocalAlbums) + " AND (" + selection + ")";
            }
        } else if (!queryAllExceptDeleted && joinRecent) {
            if (TextUtils.isEmpty(selection)) {
                selection = getExcludeEmptyRecentAlbumSelection();
            } else {
                selection = getExcludeEmptyRecentAlbumSelection() + " AND (" + selection + ")";
            }
        }
        return db.query(table, projection, selection, selectionArgs, null, null, orderBy, limit);
    }

    private static boolean isQueryColumn(String[] projection, String column) {
        if (projection != null && projection.length > 0) {
            if ("*".equals(projection[0].trim())) {
                return true;
            }
            for (String ss : projection) {
                if (column.equals(ss.trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Cursor queryFaceAlbumCover(SQLiteDatabase db) {
        AbstractCursor cursor = new AbstractWindowedCursor() {
            public int getCount() {
                return 0;
            }

            public String[] getColumnNames() {
                return new String[0];
            }
        };
        if (isIncludeFaceAlbum(false)) {
            cursor.setExtras(generateFaceAlbumCover(db));
        }
        return cursor;
    }

    private static Bundle generateFaceAlbumCover(SQLiteDatabase db) {
        Bundle bundle = null;
        Cursor cursor = db.rawQuery(FaceManager.buildTopFaceCoverQuery(), null);
        if (cursor != null) {
            try {
                ArrayList<FaceAlbumCover> covers = new ArrayList();
                int coverIdIndex = cursor.getColumnIndex("cover_id");
                int coverPathIndex = cursor.getColumnIndex("cover_path");
                int coverSha1Index = cursor.getColumnIndex("cover_sha1");
                int coverSyncStateIndex = cursor.getColumnIndex("cover_sync_state");
                int coverSizeIndex = cursor.getColumnIndex("cover_size");
                int faceRectIndex = cursor.getColumnIndex("faceRect");
                while (cursor.moveToNext()) {
                    FaceAlbumCover cover = new FaceAlbumCover();
                    cover.coverId = cursor.getLong(coverIdIndex);
                    cover.coverPath = cursor.getString(coverPathIndex);
                    cover.coverSha1 = cursor.getString(coverSha1Index);
                    cover.coverSyncState = cursor.getInt(coverSyncStateIndex);
                    cover.coverSize = cursor.getLong(coverSizeIndex);
                    cover.faceRect = cursor.getString(faceRectIndex);
                    if (!TextUtils.isEmpty(cover.faceRect)) {
                        covers.add(cover);
                    }
                    if (covers.size() == 4) {
                        break;
                    }
                }
                if (covers != null) {
                    bundle = new Bundle();
                    bundle.putParcelableArrayList("face_album_cover", covers);
                    bundle.putInt("face_album_count", cursor.getCount());
                } else {
                    cursor.close();
                }
            } finally {
                cursor.close();
            }
        }
        return bundle;
    }

    private static boolean isIncludeFaceAlbum(boolean excludeNonLocalAlbums) {
        return AIAlbumStatusHelper.isFaceAlbumEnabled() && !excludeNonLocalAlbums;
    }

    private static boolean isInShowHiddenMode() {
        return HiddenAlbum.isShowHiddenAlbum();
    }

    private static String getExcludeHiddenAlbumSelection(boolean excludeHiddenAlbums) {
        return excludeHiddenAlbums ? " AND (localGroupId in (SELECT _id FROM cloud WHERE serverType=0 AND attributes&16=0)) " : "";
    }

    private static String getExcludeHiddenShareAlbumSelection(boolean excludeHiddenAlbums) {
        return excludeHiddenAlbums ? SQL_SHARE_ALBUM_NOT_HIDDEN : "";
    }

    private static String getExcludeMediaInBabyAlbumSelection(boolean excludeNonLocalAlbums) {
        return excludeNonLocalAlbums ? SQL_EXCLUDE_MEDIA_IN_BABY_ALBUM : "";
    }

    private static boolean isInLocalMode() {
        return LocalMode.isOnlyShowLocalPhoto();
    }

    private static String getExcludeNonLocalSelection(boolean excludeNonLocalAlbums) {
        if (!excludeNonLocalAlbums) {
            return "";
        }
        return String.format(" AND %s ", new Object[]{Cloud.ALIAS_LOCAL_MEDIA});
    }

    private static String getExcludeNonLocalSelection(int serverType, boolean excludeNonLocalAlbums) {
        String sql;
        switch (serverType) {
            case 1:
                sql = Cloud.ALIAS_LOCAL_IMAGE;
                break;
            case 2:
                sql = Cloud.ALIAS_LOCAL_VIDEO;
                break;
            default:
                return getExcludeNonLocalSelection(excludeNonLocalAlbums);
        }
        if (!excludeNonLocalAlbums) {
            return "";
        }
        return String.format(" AND %s ", new Object[]{sql});
    }

    private static String getExcludeEmptyRecentAlbumSelection() {
        return "(media_count > 0 OR _id!=2147483644)";
    }

    private static String getExcludeEmptyAlbumSelection(boolean excludeNonLocalAlbums) {
        return "(media_count >0 " + (excludeNonLocalAlbums ? "" : " OR (" + Cloud.ALIAS_USER_CREATE_ALBUM + ")") + " OR " + "_id" + "=" + 2147483646 + ")";
    }

    private static String getAlbumBasicColumns(boolean excludeHiddenAlbums, boolean excludeNonLocalAlbums) {
        String str = SQL_ALBUM_BASIC;
        Object[] objArr = new Object[2];
        objArr[0] = excludeHiddenAlbums ? SQL_ALBUM_NOT_HIDDEN : "";
        objArr[1] = excludeNonLocalAlbums ? SQL_EXCLUDE_BABY_ALBUM : "";
        return String.format(str, objArr);
    }

    private static String getShareAlbumBasicColumns(boolean excludeHiddenAlbums, boolean removeDuplicateItems, Integer mediaType) {
        String str = SQL_UNION_SHARE_ALBUM;
        Object[] objArr = new Object[3];
        objArr[0] = getExcludeHiddenShareAlbumSelection(excludeHiddenAlbums);
        objArr[1] = removeDuplicateItems ? ", count(DISTINCT sha1) AS media_count" : ", count(_id) AS media_count";
        objArr[2] = getMediaTypeSelection(mediaType);
        return String.format(str, objArr);
    }

    private static String getFaceAlbumColumns() {
        long dateTaken = Album.getVirtualAlbumSortBy(2147483646, -997);
        return String.format(Locale.US, " UNION SELECT 2147483646 AS _id, 0 AS attributes, 'FACE' AS name, NULL AS local_path, 0 AS flag, -997 AS top_time,NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, '-2147483646' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS immutable, COUNT(*) AS media_count, 0 AS size , -1 AS cover_id, NULL AS cover_path, NULL AS cover_sha1, 0 AS cover_sync_state, 0 AS cover_size, NULL AS latest_photo FROM peopleFace WHERE ((localFlag=5 OR (localFlag=0 AND serverStatus='normal')) AND type = 'FACE')", new Object[]{Long.valueOf(dateTaken)});
    }

    private static String getVideoAlbumColumns(String albumCover, boolean excludeHiddenAlbums, boolean excludeNonLocalAlbums, boolean stubForVirtualAlbums) {
        long dateTaken = Album.getVirtualAlbumSortBy(2147483647L, -998);
        if (stubForVirtualAlbums) {
            return genPlaceholderAlbumSelection(2147483647L, "VIDEO", -998, -2147483647L, dateTaken);
        }
        return String.format(Locale.US, " UNION SELECT 2147483647 AS _id, 0 AS attributes, 'VIDEO' AS name, NULL AS local_path, 0 AS flag, -998 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, '-2147483647' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS immutable %s %s %sFROM (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud WHERE serverType=2 AND (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (localGroupId!=-1000)%s%s", new Object[]{Long.valueOf(dateTaken), ", count(DISTINCT sha1) AS media_count", albumCover, ", 0 AS size ", getExcludeNonLocalSelection(2, excludeNonLocalAlbums), getExcludeHiddenAlbumSelection(excludeHiddenAlbums)});
    }

    private static String getPanoAlbumColumns(String albumCover, boolean excludeHiddenAlbums, boolean excludeNonLocalAlbums, boolean stubForVirtualAlbums) {
        long dateTaken = Album.getVirtualAlbumSortBy(2147483645, -994);
        if (stubForVirtualAlbums) {
            return genPlaceholderAlbumSelection(2147483645, "PANO", -994, -2147483645, dateTaken);
        }
        return String.format(Locale.US, " UNION SELECT 2147483645 AS _id, 0 AS attributes, 'PANO' AS name, NULL AS local_path, 0 AS flag, -994 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, '-2147483645' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS immutable %s %s %sFROM (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (exifImageWidth > 1080 AND exifImageLength > 0 AND exifImageWidth- 3 * exifImageLength > 0 AND title LIKE 'PANO%%') AND (localGroupId!=-1000)%s%s", new Object[]{Long.valueOf(dateTaken), ", count(DISTINCT sha1) AS media_count", albumCover, ", 0 AS size ", getExcludeNonLocalSelection(1, excludeNonLocalAlbums), getExcludeHiddenAlbumSelection(excludeHiddenAlbums)});
    }

    private static String getRecentAlbumColumns(boolean excludeHiddenAlbums, boolean excludeNonLocalAlbums, boolean removeDuplicateItems, Integer mediaType, boolean fillCovers, boolean stubForVirtualAlbums) {
        long dateTaken = Album.getVirtualAlbumSortBy(2147483644, -1001);
        if (stubForVirtualAlbums) {
            return genPlaceholderAlbumSelection(2147483644, "RECENT", -1001, -2147483644, dateTaken);
        }
        Locale locale = Locale.US;
        String str = " UNION SELECT 2147483644 AS _id, 0 AS attributes, 'RECENT' AS name, NULL AS local_path, 0 AS flag, -1001 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, '-2147483644' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS immutable %s %s %sFROM (SELECT mediaId AS _id, sha1, localFlag, dateModified, serverStatus, localGroupId, thumbnailFile, microthumbfile, localFile, serverType, size, babyInfoJson FROM (recentDiscoveredMedia JOIN (SELECT * FROM cloud ORDER BY mixedDateTime DESC,dateModified DESC,_id DESC ) cloud ON cloud._id = mediaId) WHERE ( CASE WHEN DATE(dateModified/1000, 'unixepoch', 'localtime') == DATE('now', 'localtime') THEN 0 ELSE CAST(JULIANDAY('now', 'localtime', 'start of day') - JULIANDAY(dateModified/1000, 'unixepoch', 'localtime') AS int) + 1 END < 30)) WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (localGroupId!=-1000)%s%s%s%s";
        Object[] objArr = new Object[8];
        objArr[0] = Long.valueOf(dateTaken);
        objArr[1] = removeDuplicateItems ? ", count(DISTINCT sha1) AS media_count" : ", count(_id) AS media_count";
        objArr[2] = fillCovers ? SQL_RECENT_ALBUM_COVER : ", -1 AS cover_id, NULL AS cover_path, NULL AS cover_sha1, 0 AS cover_sync_state, 0 AS cover_size, NULL AS latest_photo ";
        objArr[3] = ", 0 AS size ";
        objArr[4] = getMediaTypeSelection(mediaType);
        objArr[5] = getExcludeNonLocalSelection(excludeNonLocalAlbums);
        objArr[6] = getExcludeHiddenAlbumSelection(excludeHiddenAlbums);
        objArr[7] = getExcludeMediaInBabyAlbumSelection(excludeNonLocalAlbums);
        return String.format(locale, str, objArr);
    }

    private static String getFavoritesAlbumColumns(String albumCover, boolean excludeHiddenAlbums, boolean excludeNonLocalAlbums, Integer mediaType, boolean stubForVirtualAlbums) {
        long dateTaken = Album.getVirtualAlbumSortBy(2147483642, -1000);
        if (stubForVirtualAlbums) {
            return genPlaceholderAlbumSelection(2147483642, "FAVORITES", -1000, -2147483642, dateTaken);
        }
        return String.format(Locale.US, " UNION SELECT 2147483642 AS _id, 0 AS attributes, 'FAVORITES' AS name, NULL AS local_path, 0 AS flag, -1000 AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, '-2147483642' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS immutable %s %s %sFROM extended_cloud WHERE (localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (localGroupId!=-1000) AND (serverType IN (1,2) AND isFavorite NOT NULL AND isFavorite > 0) %s%s%s%s", new Object[]{Long.valueOf(dateTaken), ", count(DISTINCT sha1) AS media_count", albumCover, ", 0 AS size ", getMediaTypeSelection(mediaType), getExcludeNonLocalSelection(excludeNonLocalAlbums), getExcludeHiddenAlbumSelection(excludeHiddenAlbums), getExcludeMediaInBabyAlbumSelection(excludeNonLocalAlbums)});
    }

    private static String genPlaceholderAlbumSelection(long id, String name, long topTime, long serverId, long sortBy) {
        return String.format(Locale.US, " UNION SELECT %d AS _id, 0 AS attributes, '%s' AS name, NULL AS local_path, 0 AS flag, %d AS top_time, NULL AS face_people_id, NULL AS baby_info, NULL AS baby_sharer_info, '%d' AS serverId, NULL AS thumbnail_info, %d AS sortBy, 0 AS immutable , 2147483647 AS media_count, -1 AS cover_id, NULL AS cover_path, NULL AS cover_sha1, 0 AS cover_sync_state, 0 AS cover_size, NULL AS latest_photo , 0 AS size ", new Object[]{Long.valueOf(id), name, Long.valueOf(topTime), Long.valueOf(serverId), Long.valueOf(sortBy)});
    }

    private static String getMediaTypeSelection(Integer mediaType) {
        if (mediaType == null || (mediaType.intValue() != 2 && mediaType.intValue() != 1)) {
            return "";
        }
        return String.format(Locale.US, " AND %s = %s ", new Object[]{"serverType", mediaType.toString()});
    }

    public static Map<Long, Long> getAlbumAttributes() {
        return ALBUM_ATTRIBUTES;
    }

    public static long packageAttributeBit(long attributeBit, boolean positive, boolean manual) {
        long manualBit = ((Long) ALBUM_ATTRIBUTES.get(Long.valueOf(attributeBit))).longValue();
        if (!positive) {
            attributeBit = 0;
        }
        if (!manual) {
            manualBit = 0;
        }
        return attributeBit | manualBit;
    }

    public static List<Long> getAlbumSyncAttributes() {
        return ALBUM_SYNC_ATTRIBUTES;
    }

    public static boolean isVirtualAlbum(long albumId) {
        return isVideoAlbum(albumId) || isPanoAlbum(albumId) || isSecretAlbum(albumId) || isRecentAlbum(albumId) || isDailyAlbum(albumId) || isFavoritesAlbum(albumId);
    }

    public static boolean isVideoAlbum(long albumId) {
        return albumId == 2147483647L;
    }

    public static boolean isPanoAlbum(long albumId) {
        return albumId == 2147483645;
    }

    public static boolean isSecretAlbum(long albumId) {
        return albumId == -1000;
    }

    public static boolean isRecentAlbum(long albumId) {
        return albumId == 2147483644;
    }

    public static boolean isDailyAlbum(long albumId) {
        return albumId == 2147483643;
    }

    public static boolean isFavoritesAlbum(long albumId) {
        return albumId == 2147483642;
    }
}

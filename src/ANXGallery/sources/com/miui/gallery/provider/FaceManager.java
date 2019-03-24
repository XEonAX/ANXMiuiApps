package com.miui.gallery.provider;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.peoplecover.PeopleCoverManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GalleryTimeUtils;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.face.FaceRegionRectF;
import com.miui.os.Rom;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import miui.provider.ExtraContacts.ConferenceCalls;

public class FaceManager {
    private static final String[] BASIC_PEOPLE_INFO_PROJECTION = new String[]{"_id", "serverId", "peopleName", "relationType"};
    private static final String[] CLOUD_IMAGE_OF_FACE_PROJECTION = new String[]{"*"};
    private static final String FACE_COVER_ALIAS_DISPLAYABLE = (" CASE WHEN " + THUMBNAIL_ALIAS + " THEN " + "thumbnailFile" + " " + "WHEN " + LOCAL_FILE_ALIAS + " THEN " + "localFile" + " " + "ELSE " + "microthumbfile" + " " + "END ");
    private static final String GROUP_LOCAL_FLAG_SYNCED_CREATED_RENAME = String.format(Locale.US, "(%s OR %s = %d OR %s = %d)", new Object[]{LOCAL_FLAG_SYNCED, "localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(10)});
    private static final String[] ID_COUNT_PROJECTION = new String[]{"_id"};
    private static final int LEAST_FACE_COUNT_OF_DISPLAY_PEOPLE = (Rom.IS_ALPHA ? 1 : 2);
    private static final String LOCAL_FILE_ALIAS = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"localFile", "localFile"});
    private static final String LOCAL_FLAG_SYNCED = String.format(Locale.US, "(%s = %d AND %s = \"%s\")", new Object[]{"localFlag", Integer.valueOf(0), "serverStatus", "custom"});
    private static final String MICRO_THUMBNAIL_ALIAS = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"microthumbfile", "microthumbfile"});
    private static final String Other_SHARED_GROUP_LOCAL_FLAG_SYNCED = String.format(Locale.US, "(%s = \"%s\" AND NOT (%s IS NULL))", new Object[]{"serverStatus", "custom", "serverId"});
    private static final String[] PEOPLE_ALBUM_SERVER_ID_PROJECTION = new String[]{"serverId"};
    public static final String[] PEOPLE_RELATION_PROJECTION = new String[]{"relationType", "relationText"};
    public static final String PEOPLE_USER_DEFINE_RELATION_SELECTION = ("relationType = " + PeopleContactInfo.getUserDefineRelationIndex() + " AND " + "type = 'PEOPLE' AND ( visibilityType = 1 OR visibilityType =4) AND localFlag NOT IN ( 13, 2)" + " AND " + "(groupid IS NULL OR groupid = '' OR groupid = serverId)" + " GROUP BY relationtext");
    private static final String PERSON_VISIBLE_CONDITION = String.format(Locale.US, "(visibilityType = 1 OR visibilityType = 4 OR faceCount >= %d AND (visibilityType IS NULL OR visibilityType = 0))", new Object[]{Integer.valueOf(LEAST_FACE_COUNT_OF_DISPLAY_PEOPLE)});
    private static final String PHOTO_LOCAL_FLAG_CREATE_MOVED_SYNCED = String.format(Locale.US, "(%s OR %s = %d OR %s = %d OR %s = %d OR %s = %d)", new Object[]{LOCAL_FLAG_SYNCED, "localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(5), "localFlag", Integer.valueOf(6), "localFlag", Integer.valueOf(9)});
    private static final String SQL_FACE_ALBUM_COVER = ("photo_id AS cover_id, " + FACE_COVER_ALIAS_DISPLAYABLE + " AS " + "cover_path" + ", " + "sha1" + " AS " + "cover_sha1" + ", " + "faceXScale" + "||' '||" + "faceYScale" + "||' '||" + "faceWScale" + "||' '||" + "faceHScale" + "||' '||" + "exifOrientation" + " AS " + "faceRect" + ", " + 0 + " AS " + "cover_sync_state" + ", " + "size" + " AS " + "cover_size");
    private static final String[] SQL_FACE_ALBUM_COVER_PROJECTION = new String[]{" CASE WHEN " + Cloud.ALIAS_THUMBNAIL_VALID + " THEN " + "thumbnailFile" + " " + "WHEN " + Cloud.ALIAS_ORIGIN_FILE_VALID + " THEN " + "localFile" + " " + "ELSE " + "microthumbfile" + " " + "END AS " + "cover_path" + ", " + "exifOrientation" + ", " + "faceXScale" + ", " + "faceYScale" + ", " + "faceWScale" + ", " + "faceHScale" + ", " + "faceCoverScore" + ", " + "serverId"};
    private static final String[] SQL_OLDEST_FACE_OF_ALBUM_PROJECTION = new String[]{" min( CASE WHEN dateTaken NOT NULL THEN dateTaken ELSE mixedDateTime END) AS oldest_image_time"};
    private static final String SQL_ONE_PERSON_ALBUM_ITEM = String.format(Locale.US, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId", new Object[]{"serverId = '%s'"});
    private static final String SQL_ONE_PERSON_ALBUM_NORMAL = String.format(Locale.US, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId", new Object[]{"(localFlag =0 AND serverStatus='normal' AND groupId = '%s') OR (localFlag =5 AND localGroupId = %s)"});
    private static final String SQL_ONE_PERSON_ALBUM_RECOMMEND = String.format(Locale.US, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId", new Object[]{"(localFlag =0 AND serverStatus='normal' AND serverId IN (%s))"});
    private static final String SQL_PERSONS_ALBUM = String.format(Locale.US, "SELECT * from (extended_faceImage LEFT JOIN favorites ON extended_faceImage.sha1 = favorites.sha1) WHERE (%s) GROUP BY serverId", new Object[]{"(localFlag =0 AND serverStatus='normal' AND groupId in (%s)) OR (localFlag =5 AND localGroupId in (%s))"});
    private static final String SQL_PERSONS_ALBUM_ALL_BASIC = (" SELECT _id, peopleName, se AS serverId,CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN cId ELSE covercId END AS photo_id, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN sha1 ELSE coversha1 END AS sha1, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN cm ELSE covercm END AS microthumbfile, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN ch ELSE coverch END AS thumbnailFile, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN cl ELSE covercl END AS localFile, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN co ELSE coverco END AS exifOrientation, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fx ELSE coverfx END AS faceXScale, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fy ELSE coverfy END AS faceYScale, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fw ELSE coverfw END AS faceWScale, CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN fh ELSE coverfh END AS faceHScale, relationType, relationText, visibilityType, sum(faceCount) as faceCount,CASE WHEN (coverse IS NULL OR maxFaceScore > 0) THEN size ELSE coversize END AS size,  COUNT(*) FROM (   SELECT _id, peopleName, serverId as se, cId, sha1, cm, ch, cl, co, fx, fy, fw, fh, size, peopleFace.relationType, peopleFace.relationText, peopleFace.visibilityType, maxFaceScore, faceCount,(CASE WHEN NOT(peopleName IS NULL) THEN 1 ELSE 2 END) AS order_by_notnull_null FROM peopleFace  JOIN  (SELECT pg, COUNT(*) as faceCount, cId, sha1, cd, cm, ch, cl, co, fx, fy, fw, fh, size, MAX(faceCoverScore) as maxFaceScore FROM           (SELECT serverId, faceXScale AS fx, faceYScale AS fy, faceWScale AS fw, faceHScale AS fh, size, groupId AS pg, photo_id AS cId, sha1, mixedDateTime AS cd, microthumbfile AS cm, thumbnailFile AS ch, localFile AS cl, exifOrientation as co, faceCoverScore            FROM extended_faceImage           WHERE localFlag =0 AND serverStatus='normal'            GROUP BY serverId            ORDER BY mixedDateTime DESC  ) temp1  GROUP BY pg  ) temp2  ON type = 'PEOPLE' AND %s AND se = pg  UNION ALL SELECT _id, peopleName, serverId as se, cId asphoto_id, sha1, cm, ch, cl, co, fx, fy, fw, fh, size, peopleFace.relationType, peopleFace.relationText, peopleFace.visibilityType, maxFaceScore, faceCount,(CASE WHEN NOT(peopleName IS NULL) THEN 1 ELSE 2 END) AS order_by_notnull_null FROM  peopleFace  JOIN  (SELECT lpg, COUNT(*) as faceCount, cId, sha1, cd, cm, ch, cl, co, fx, fy, fw, fh, size, MAX(faceCoverScore) as maxFaceScore FROM           (SELECT serverId, faceXScale AS fx, faceYScale AS fy, faceWScale AS fw, faceHScale AS fh, localGroupId AS lpg, photo_id AS cId, sha1, mixedDateTime AS cd, microthumbfile AS cm, thumbnailFile AS ch, size, localFile AS cl, exifOrientation as co, faceCoverScore            FROM extended_faceImage           WHERE localFlag =5            GROUP BY serverId            ORDER BY mixedDateTime DESC )  temp1  GROUP BY lpg  ) temp2  ON type = 'PEOPLE' AND %s AND _id = lpg )  LEFT JOIN (SELECT coverse, coverfx, coverfy, coverfw, coverfh, coverpg, covercId, coversha1, max(covercd), covercm, coverch, covercl, coversize, coverco FROM           (SELECT serverId AS coverse, faceXScale AS coverfx, faceYScale AS coverfy, faceWScale AS coverfw, faceHScale AS coverfh, groupId AS coverpg, photo_id AS covercId, sha1 AS coversha1, mixedDateTime AS covercd, microthumbfile AS covercm, thumbnailFile AS coverch, localFile AS covercl, size AS coversize, exifOrientation as coverco           FROM extended_faceImage           WHERE serverid in ( %s ) AND (localFlag =0 AND serverStatus='normal')            GROUP BY serverId ) cover1 GROUP BY coverpg) cover2 ON se = cover2.coverpg GROUP BY _id ORDER BY " + PeopleContactInfo.getRelationOrderSql() + ", " + PeopleContactInfo.getUserDefineRelationOrderSql() + ", " + "order_by_notnull_null" + " ASC" + ", " + "faceCount" + " DESC");
    private static final String THUMBNAIL_ALIAS = String.format(Locale.US, "(%s NOT NULL and %s != '')", new Object[]{"thumbnailFile", "thumbnailFile"});

    public static class BasicPeopleInfo {
        public int id;
        public String name;
        public int relationType;
        public String serverId;

        public BasicPeopleInfo(int id, String serverId, String name, int relationType) {
            this.id = id;
            this.serverId = serverId;
            this.name = name;
            this.relationType = relationType;
        }
    }

    private static String buildAlbumQuery(String[] projection, String selection, String[] selectionArgs, String orderBy, String tempResultSet) {
        String projectionStr;
        StringBuilder sb = new StringBuilder();
        if (projection == null || projection.length == 0) {
            projectionStr = "*";
        } else {
            projectionStr = TextUtils.join(",", projection);
        }
        sb.append("SELECT ");
        sb.append(projectionStr);
        sb.append(" FROM (");
        sb.append(tempResultSet);
        sb.append(")");
        if (!TextUtils.isEmpty(selection)) {
            if (selectionArgs != null && selectionArgs.length > 0) {
                selection = String.format(Locale.US, selection, (Object[]) selectionArgs);
            }
            sb.append(" WHERE ");
            sb.append(selection);
        }
        if (!TextUtils.isEmpty(orderBy)) {
            sb.append(" order by ");
            sb.append(" ");
            sb.append(orderBy);
        }
        sb.append(ConferenceCalls.SPLIT_EXPRESSION);
        return sb.toString();
    }

    public static String buildPeopleTagQuery() {
        return "SELECT serverId, eTag FROM (SELECT serverId FROM peopleface WHERE type = 'PEOPLE' AND ( visibilityType = 1 OR visibilityType =4 OR (visibilityType =2 AND groupId is null)) AND localFlag NOT IN ( 2)) serverTable JOIN (SELECT groupId AS peopleId, MAX(eTag) as eTag FROM peopleface GROUP BY groupId) tagTable  ON serverTable.serverId = tagTable.peopleId";
    }

    public static String buildPeopleCoverQuery(String[] projection, String serverId, String id) {
        String selection;
        if (serverId != null) {
            selection = String.format(Locale.US, "serverId='%s'", new Object[]{serverId});
        } else {
            selection = String.format(Locale.US, "_id=%s", new Object[]{id});
        }
        String visibleCondition = String.format(Locale.US, "(visibilityType = 1 OR visibilityType = 4 OR faceCount >= %d AND (visibilityType IS NULL OR visibilityType = 0))", new Object[]{Integer.valueOf(1)});
        return buildAlbumQuery(projection, selection, null, null, String.format(Locale.US, SQL_PERSONS_ALBUM_ALL_BASIC, new Object[]{visibleCondition, visibleCondition, formatSelectionIn(PeopleCoverManager.getInstance().getCoverIds())}));
    }

    public static String buildImageFaceQuery(String[] projection, String faceServerId, String imageServerId) {
        return buildAlbumQuery(projection, null, null, null, String.format(Locale.US, "SELECT p.serverId, p.faceXScale, p.faceYScale, p.faceWScale, p.faceHScale,    c._id as photo_id, c.serverId as photo_server_id, c.microthumbfile, c.thumbnailFile, c.localFile, c.sha1   FROM peopleface p JOIN facetoimages f JOIN cloud c   WHERE p.serverId='%s' AND photo_server_id='%s'   AND p.type = 'FACE' AND (p.localFlag =0 AND p.serverStatus='normal') AND p.serverId = faceId  AND imageServerId = c.serverId    AND (c.localFlag <>2 AND c.serverStatus='custom') ", new Object[]{faceServerId, imageServerId}));
    }

    public static String buildPersonsQuery() {
        return String.format(Locale.US, SQL_PERSONS_ALBUM_ALL_BASIC, new Object[]{PERSON_VISIBLE_CONDITION, PERSON_VISIBLE_CONDITION, formatSelectionIn(PeopleCoverManager.getInstance().getCoverIds())});
    }

    public static String buildTopFaceCoverQuery() {
        return "SELECT " + SQL_FACE_ALBUM_COVER + " FROM " + "( " + String.format(Locale.US, SQL_PERSONS_ALBUM_ALL_BASIC, new Object[]{PERSON_VISIBLE_CONDITION, PERSON_VISIBLE_CONDITION, formatSelectionIn(PeopleCoverManager.getInstance().getCoverIds())}) + ")";
    }

    public static String buildIgnorePersonsQuery() {
        return String.format(Locale.US, SQL_PERSONS_ALBUM_ALL_BASIC, new Object[]{"visibilityType = 2 AND (groupId IS NULL OR groupId = '' OR groupId = serverId)", "visibilityType = 2 AND (groupId IS NULL OR groupId = '' OR groupId = serverId)", formatSelectionIn(PeopleCoverManager.getInstance().getCoverIds())});
    }

    public static String buildOnePersonQuery(String[] projection, String selection, String orderBy, String serverIdOfPerson, String localIdOfPeople) {
        return buildAlbumQuery(projection, selection, null, orderBy, String.format(Locale.US, SQL_ONE_PERSON_ALBUM_NORMAL, new Object[]{serverIdOfPerson, localIdOfPeople}));
    }

    public static String buildRecommendFacesOfOnePersonQuery(String[] projection, String orderBy, String inServerIds) {
        return buildAlbumQuery(projection, null, null, orderBy, String.format(Locale.US, SQL_ONE_PERSON_ALBUM_RECOMMEND, new Object[]{inServerIds}));
    }

    public static String buildOnePersonItemQuery(String[] projection, String faceServerId) {
        return buildAlbumQuery(projection, null, null, null, String.format(Locale.US, SQL_ONE_PERSON_ALBUM_ITEM, new Object[]{faceServerId}));
    }

    public static String buildPersonsItemQuery(String[] projection, String selection, String orderBy, String serverIds, String localIds) {
        return buildAlbumQuery(projection, selection, null, orderBy, String.format(SQL_PERSONS_ALBUM, new Object[]{serverIds, localIds}));
    }

    public static PeopleContactInfo queryContactInfoOfOnePerson(long id) {
        String contactInfo = queryAStringColumn("_id", String.valueOf(id), "peopleContactJsonInfo");
        if (TextUtils.isEmpty(contactInfo)) {
            return null;
        }
        return PeopleContactInfo.fromJson(contactInfo);
    }

    public static String queryPersonName(String serverId) {
        return queryAStringColumn("serverId", serverId, "peopleName");
    }

    public static String queryPersonName(long localId) {
        return queryAStringColumn("_id", String.valueOf(localId), "peopleName");
    }

    private static String queryAStringColumn(String columnName, String columnValue, String projectColumnName) {
        Cursor cursor = null;
        try {
            cursor = GalleryDBHelper.getInstance().getReadableDatabase().query("peopleFace", new String[]{projectColumnName}, columnName + " = ? ", new String[]{columnValue}, null, null, null);
            if (cursor == null || !cursor.moveToNext()) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            String string = cursor.getString(0);
            if (cursor == null) {
                return string;
            }
            cursor.close();
            return string;
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static Cursor queryAllImagesOfOnePerson(String peopleServerId) {
        return GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.ONE_PERSON_URI, CLOUD_IMAGE_OF_FACE_PROJECTION, null, new String[]{peopleServerId, "-1"}, null);
    }

    public static String queryCoverImageOfOnePerson(String peopleServerId, RectF[] resultFaceRegion) {
        Cursor cursor = null;
        String coverPath = "";
        String coverId = "";
        boolean isFound = false;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.ONE_PERSON_URI, SQL_FACE_ALBUM_COVER_PROJECTION, null, new String[]{peopleServerId, "-1"}, "faceCoverScore DESC, dateTaken DESC ");
            int coverPathIndex = cursor.getColumnIndex("cover_path");
            int coverIdIndex = cursor.getColumnIndex("serverId");
            int coverScoreIndex = cursor.getColumnIndex("faceCoverScore");
            ArrayList covers = PeopleCoverManager.getInstance().getCoverIds();
            if (cursor != null && cursor.moveToFirst()) {
                if (cursor.getDouble(coverScoreIndex) < 0.0d) {
                    while (!covers.contains(cursor.getString(coverIdIndex))) {
                        if (!cursor.moveToNext()) {
                            break;
                        }
                    }
                    resultFaceRegion[0] = getFacePositionRectOfCoverImage(cursor);
                    coverPath = cursor.getString(coverPathIndex);
                    isFound = true;
                }
                if (!isFound) {
                    cursor.moveToFirst();
                    resultFaceRegion[0] = getFacePositionRectOfCoverImage(cursor);
                    coverPath = cursor.getString(coverPathIndex);
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return coverPath;
    }

    public static String queryCoverImageOfOneFace(String faceServerId, RectF[] resultFaceRegion) {
        Cursor cursor = null;
        String coverPath = "";
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.ONE_PERSON_ITEM_URI, SQL_FACE_ALBUM_COVER_PROJECTION, null, new String[]{faceServerId}, "dateTaken DESC ");
            if (cursor != null && cursor.moveToNext()) {
                resultFaceRegion[0] = getFacePositionRectOfCoverImage(cursor);
                coverPath = cursor.getString(cursor.getColumnIndex("cover_path"));
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return coverPath;
    }

    public static long queryTimeOfOldestImagesOfOnePerson(String peopleServerId) {
        Cursor cursor = null;
        long time = 0;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.ONE_PERSON_URI, SQL_OLDEST_FACE_OF_ALBUM_PROJECTION, null, new String[]{peopleServerId, "-1"}, null);
            if (cursor != null && cursor.moveToNext()) {
                time = cursor.getLong(cursor.getColumnIndex("oldest_image_time"));
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return time;
    }

    private static FaceRegionRectF getFacePositionRectOfCoverImage(Cursor cursor) {
        if (cursor == null) {
            return new FaceRegionRectF(0.0f, 0.0f, 0.0f, 0.0f, 0);
        }
        return new FaceRegionRectF(cursor.getFloat(cursor.getColumnIndex("faceXScale")), cursor.getFloat(cursor.getColumnIndex("faceYScale")), cursor.getFloat(cursor.getColumnIndex("faceXScale")) + cursor.getFloat(cursor.getColumnIndex("faceWScale")), cursor.getFloat(cursor.getColumnIndex("faceYScale")) + cursor.getFloat(cursor.getColumnIndex("faceHScale")), cursor.getInt(cursor.getColumnIndex("exifOrientation")));
    }

    public static int queryCountOfPhotosOfOneRecommendAlbum(String inServerIds) {
        int i = 0;
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.RECOMMEND_FACES_OF_ONE_PERSON_URI, ID_COUNT_PROJECTION, null, new String[]{inServerIds}, null);
            if (cursor != null) {
                i = cursor.getCount();
                if (cursor != null) {
                    cursor.close();
                }
            } else if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return i;
    }

    public static ArrayList<String> queryAllPeopleAlbumServerIds() {
        Uri uri = PeopleFace.PEOPLE_FACE_URI;
        ArrayList<String> serverIds = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(uri, PEOPLE_ALBUM_SERVER_ID_PROJECTION, "type = 'PEOPLE' AND ( visibilityType = 1 OR visibilityType =4) AND localFlag NOT IN ( 13, 2)", null, null);
            while (cursor != null && cursor.moveToNext()) {
                serverIds.add(cursor.getString(0));
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return serverIds;
    }

    public static ArrayList<String> queryAllUserDefineRelationsOfPeople(Context context) {
        Uri uri = PeopleFace.PEOPLE_FACE_URI;
        String sortOrder = PeopleContactInfo.getRelationOrderSql() + ", " + PeopleContactInfo.getUserDefineRelationOrderSql();
        return (ArrayList) SafeDBUtil.safeQuery(context, uri, PEOPLE_RELATION_PROJECTION, PEOPLE_USER_DEFINE_RELATION_SELECTION, null, sortOrder, new QueryHandler<ArrayList<String>>() {
            public ArrayList<String> handle(Cursor cursor) {
                ArrayList<String> relationList = new ArrayList();
                while (cursor != null && cursor.moveToNext()) {
                    String text = cursor.getString(cursor.getColumnIndex("relationText"));
                    if (!TextUtils.isEmpty(text)) {
                        relationList.add(text);
                    }
                }
                return relationList;
            }
        });
    }

    public static List<Long> queryPeopleIdOfRelation(Context context, final int relationType) {
        return (List) SafeDBUtil.safeQuery(context, PeopleFace.PERSONS_URI, null, null, null, null, new QueryHandler<ArrayList<Long>>() {
            public ArrayList<Long> handle(Cursor cursor) {
                if (cursor == null) {
                    return null;
                }
                ArrayList<Long> arrayList = new ArrayList();
                int idIndex = cursor.getColumnIndex("_id");
                int relationTypeIndex = cursor.getColumnIndex("relationType");
                while (cursor.moveToNext()) {
                    if (cursor.getInt(relationTypeIndex) == relationType) {
                        arrayList.add(Long.valueOf(cursor.getLong(idIndex)));
                    }
                }
                return arrayList;
            }
        });
    }

    public static long queryBabyAlbumByPeopleId(String peopleServerId) {
        Cursor cursor = null;
        long id = -1;
        String selection = "peopleId = ?  AND" + GROUP_LOCAL_FLAG_SYNCED_CREATED_RENAME;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(GalleryContract.Cloud.CLOUD_URI, new String[]{"_id"}, selection, new String[]{peopleServerId}, null);
            if (cursor != null && cursor.moveToNext()) {
                id = cursor.getLong(cursor.getColumnIndex("_id"));
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return id;
    }

    public static final boolean localCopyFaceImages2BabyAlbum(ContentValues values, boolean isOtherShared) {
        long longValue;
        long j = 0;
        String exifGpsDateStamp = values.getAsString("exifGPSDateStamp");
        String exifGpsTimeStamp = values.getAsString("exifGPSTimeStamp");
        String exifDateTime = values.getAsString("exifDateTime");
        Long dateTaken = values.getAsLong("dateTaken");
        Long dateModified = values.getAsLong("dateModified");
        if (dateTaken != null) {
            longValue = dateTaken.longValue();
        } else {
            longValue = 0;
        }
        if (dateModified != null) {
            j = dateModified.longValue();
        }
        values.put("mixedDateTime", Long.valueOf(GalleryTimeUtils.getTakenDateTime(exifGpsDateStamp, exifGpsTimeStamp, exifDateTime, longValue, j)));
        if (GalleryApp.sGetAndroidContext().getContentResolver().insert(isOtherShared ? GalleryCloudUtils.SHARE_IMAGE_URI : GalleryContract.Cloud.CLOUD_URI, values) == null) {
            return false;
        }
        return true;
    }

    public static String querySharerInfoOfBabyAlbum(String localId) {
        String selection = "_id = ? ";
        String[] projection = CloudUtils.getProjectionAll();
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(GalleryCloudUtils.SHARE_ALBUM_URI, projection, selection, new String[]{localId}, null);
            if (cursor == null || cursor.getCount() == 0) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            } else if (cursor.moveToNext()) {
                String string = cursor.getString(cursor.getColumnIndex("sharerInfo"));
                if (cursor == null) {
                    return string;
                }
                cursor.close();
                return string;
            } else {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static long getPeopleLocalIdByServerId(String serverId) {
        String[] projection = new String[]{"_id"};
        String selection = "serverId = ?";
        Cursor cursor = null;
        try {
            cursor = GalleryApp.sGetAndroidContext().getContentResolver().query(PeopleFace.PEOPLE_FACE_URI, projection, selection, new String[]{serverId}, null);
            if (cursor == null || !cursor.moveToNext()) {
                if (cursor != null) {
                    cursor.close();
                }
                return -1;
            }
            long j = cursor.getLong(0);
            if (cursor == null) {
                return j;
            }
            cursor.close();
            return j;
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static int getPeopleLocalFlagByLocalID(String localId) {
        return ((Integer) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), PeopleFace.PEOPLE_FACE_URI, new String[]{"localFlag"}, "_id = ?", new String[]{localId}, null, new QueryHandler<Integer>() {
            public Integer handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return Integer.valueOf(-1);
                }
                return Integer.valueOf(cursor.getInt(0));
            }
        })).intValue();
    }

    public static void safeUpdatePeopleFaceByIds(ContentValues values, ArrayList<String> batchIdList) {
        try {
            GalleryApp.sGetAndroidContext().getContentResolver().update(PeopleFace.PEOPLE_FACE_URI, values, "_id in (" + TextUtils.join(",", batchIdList) + ")", null);
        } catch (Exception e) {
        }
    }

    public static ArrayList<BasicPeopleInfo> getPeopleBasicInfoByIds(long[] ids) {
        String[] projection = BASIC_PEOPLE_INFO_PROJECTION;
        String selection = "_id in (" + formatSelectionIn(ids) + ")";
        Cursor cursor = null;
        ArrayList<BasicPeopleInfo> result = new ArrayList();
        try {
            cursor = GalleryDBHelper.getInstance().getReadableDatabase().query("peopleFace", projection, selection, null, null, null, null);
            while (cursor != null && cursor.moveToNext()) {
                result.add(new BasicPeopleInfo(cursor.getInt(0), cursor.getString(1), cursor.getString(2), cursor.getInt(3)));
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        return result;
    }

    private static String formatSelectionIn(long[] ids) {
        StringBuffer sb = new StringBuffer();
        int len = ids.length;
        for (int i = 0; i < len; i++) {
            sb.append(ids[i]);
            if (i < len - 1) {
                sb.append(',');
            }
        }
        return sb.toString();
    }

    public static String formatSelectionIn(List list) {
        return formatSelectionIn(list, "-1");
    }

    public static String formatSelectionIn(List list, String invalidString) {
        StringBuffer sb = new StringBuffer();
        if (BaseMiscUtil.isValid(list)) {
            int len = list.size();
            for (int i = 0; i < len; i++) {
                sb.append("'");
                sb.append(list.get(i));
                sb.append("'");
                if (i < len - 1) {
                    sb.append(',');
                }
            }
        } else {
            sb.append(invalidString);
        }
        return sb.toString();
    }

    public static ContentValues changeCursorData2ContentValuesOfCloudTable(Cursor cursor, String localGroupId) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("fileName", cursor.getString(cursor.getColumnIndex("fileName")));
        contentValues.put("dateTaken", Long.valueOf(cursor.getLong(cursor.getColumnIndex("dateTaken"))));
        contentValues.put("dateModified", Long.valueOf(cursor.getLong(cursor.getColumnIndex("dateModified"))));
        contentValues.put("size", Long.valueOf(cursor.getLong(cursor.getColumnIndex("size"))));
        contentValues.put("mimeType", cursor.getString(cursor.getColumnIndex("mimeType")));
        contentValues.put("title", cursor.getString(cursor.getColumnIndex("title")));
        contentValues.put("sha1", cursor.getString(cursor.getColumnIndex("sha1")));
        contentValues.put("ubiSubImageCount", Integer.valueOf(cursor.getInt(cursor.getColumnIndex("ubiSubImageCount"))));
        contentValues.put("ubiSubIndex", Integer.valueOf(cursor.getInt(cursor.getColumnIndex("ubiSubIndex"))));
        contentValues.put("ubiFocusIndex", Integer.valueOf(cursor.getInt(cursor.getColumnIndex("ubiFocusIndex"))));
        contentValues.put("localFlag", Integer.valueOf(6));
        contentValues.put("serverType", Integer.valueOf(1));
        contentValues.put("localGroupId", localGroupId);
        if (cursor.getColumnIndex("photo_id") >= 0) {
            contentValues.put("localImageId", cursor.getString(cursor.getColumnIndex("photo_id")));
        } else {
            contentValues.put("localImageId", cursor.getString(cursor.getColumnIndex("_id")));
        }
        if (cursor.getString(cursor.getColumnIndex("thumbnailFile")) != null) {
            contentValues.put("thumbnailFile", cursor.getString(cursor.getColumnIndex("thumbnailFile")));
        }
        if (cursor.getString(cursor.getColumnIndex("microthumbfile")) != null) {
            contentValues.put("microthumbfile", cursor.getString(cursor.getColumnIndex("microthumbfile")));
        }
        return contentValues;
    }
}

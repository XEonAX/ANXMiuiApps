package com.miui.gallery.util.face;

import android.content.ContentUris;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.people.model.People;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.util.StorageUtils;

public class PeopleCursorHelper {
    public static final String[] PROJECTION = new String[]{"_id", "peopleName", "serverId", "_id", "sha1", "microthumbfile", "thumbnailFile", "localFile", "exifOrientation", "faceXScale", "faceYScale", "faceWScale", "faceHScale", "relationType", "relationText", "visibilityType", "faceCount", "size"};

    public static FaceRegionRectF getFaceRegionRectF(Cursor cursor) {
        if (cursor == null) {
            return new FaceRegionRectF(0.0f, 0.0f, 0.0f, 0.0f, 0);
        }
        return new FaceRegionRectF(cursor.getFloat(9), cursor.getFloat(10), cursor.getFloat(9) + cursor.getFloat(11), cursor.getFloat(10) + cursor.getFloat(12), cursor.getInt(8));
    }

    public static String getThumbnailPath(Cursor cursor) {
        String thumbnail = cursor.getString(6);
        if (TextUtils.isEmpty(thumbnail)) {
            thumbnail = cursor.getString(7);
        }
        if (TextUtils.isEmpty(thumbnail)) {
            thumbnail = cursor.getString(5);
        }
        if (TextUtils.isEmpty(thumbnail)) {
            return StorageUtils.getPriorMicroThumbnailPath(cursor.getString(4));
        }
        return thumbnail;
    }

    public static DownloadType getThumbnailDownloadType(Cursor cursor) {
        return (TextUtils.isEmpty(cursor.getString(6)) && TextUtils.isEmpty(cursor.getString(7))) ? DownloadType.MICRO : DownloadType.THUMBNAIL;
    }

    public static Uri getThumbnailDownloadUri(Cursor cursor) {
        return ContentUris.withAppendedId(Cloud.CLOUD_URI, getCoverId(cursor));
    }

    public static String getPeopleName(Cursor cursor) {
        if (cursor == null) {
            return "";
        }
        return cursor.getString(1);
    }

    public static String getPeopleServerId(Cursor cursor) {
        return cursor.getString(2);
    }

    public static String getPeopleLocalId(Cursor cursor) {
        return cursor.getString(0);
    }

    public static int getRelationType(Cursor cursor) {
        return cursor.getInt(13);
    }

    public static String getRelationText(Cursor cursor) {
        return cursor.getString(14);
    }

    public static int getVisibilityType(Cursor cursor) {
        return cursor.getInt(15);
    }

    public static long getCoverId(Cursor cursor) {
        return cursor.getLong(3);
    }

    public static int getFaceCount(Cursor cursor) {
        return cursor.getInt(16);
    }

    public static long getCoverSize(Cursor cursor) {
        return cursor.getLong(17);
    }

    public static void add2MatrixCursor(MatrixCursor mc, Cursor cursor) {
        Object[] objs = new Object[PROJECTION.length];
        for (int i = 0; i < PROJECTION.length; i++) {
            objs[i] = cursor.getString(i);
        }
        mc.addRow(objs);
    }

    public static People toPeople(Cursor cursor) {
        People people = new People();
        people.setId(Long.parseLong(getPeopleLocalId(cursor)));
        people.setServerId(getPeopleServerId(cursor));
        people.setName(getPeopleName(cursor));
        people.setCoverImageId(getCoverId(cursor));
        people.setCoverPath(getThumbnailPath(cursor));
        people.setCoverType(getThumbnailDownloadType(cursor));
        people.setRelationType(getRelationType(cursor));
        people.setRelationText(getRelationText(cursor));
        people.setCoverFaceRect(getFaceRegionRectF(cursor));
        people.setVisibilityType(getVisibilityType(cursor));
        people.setFaceCount(getFaceCount(cursor));
        return people;
    }
}

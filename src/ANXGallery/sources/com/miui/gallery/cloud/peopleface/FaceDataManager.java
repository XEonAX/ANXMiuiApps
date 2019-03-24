package com.miui.gallery.cloud.peopleface;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.UriUtil;
import com.miui.internal.analytics.NormalPolicy;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;

public class FaceDataManager {
    public static final Uri BASE_URI = Uri.parse("content://com.miui.gallery.cloud.provider");
    public static final Uri FACE_TO_IMAGES_URI = BASE_URI.buildUpon().appendPath("faceToImages").build();
    public static final String IS_VALID_GROUP = String.format(Locale.US, "(%s = \"%s\" AND (%s = %d OR %s = %d OR %s = %d OR (%s = %d AND %s = \"%s\")) AND ( %s is null OR %s = '' OR %s = %s) AND (%s IS NULL OR %s != %d))", new Object[]{"type", "PEOPLE", "localFlag", Integer.valueOf(8), "localFlag", Integer.valueOf(10), "localFlag", Integer.valueOf(14), "localFlag", Integer.valueOf(0), "serverStatus", NormalPolicy.TAG, "groupId", "groupId", "groupId", "serverId", "visibilityType", "visibilityType", Integer.valueOf(2)});
    public static final Uri PEOPLE_FACE_DELAY_NOTIFY_URI = BASE_URI.buildUpon().appendPath("peopleFace").appendQueryParameter("delay_notify", "true").build();
    public static final Uri PEOPLE_FACE_JOIN_FACE_TO_IMAGES_JOIN_CLOUD_URI = BASE_URI.buildUpon().appendPath("peopleFaceJoinFaceToImagesJoinCloud").build();
    public static final Uri PEOPLE_FACE_JOIN_FACE_TO_IMAGES_URI = BASE_URI.buildUpon().appendPath("peopleFaceJoinFaceToImages").build();
    public static final Uri PEOPLE_FACE_URI = BASE_URI.buildUpon().appendPath("peopleFace").build();
    public static final Uri PEOPLE_RECOMMOND_URI = BASE_URI.buildUpon().appendPath("peopleRecommend").build();
    private static final String[] PROJECTION_BASIC_PEOPLE_INFO = new String[]{"serverId", "type", "groupId", "eTag"};
    private static final String itemIsGroup = String.format(Locale.US, "(%s = \"%s\")", new Object[]{"type", "PEOPLE"});
    public static final String itemIsNotGroup = String.format(Locale.US, "(%s.%s = \"%s\")", new Object[]{"peopleFace", "type", "FACE"});

    public static Cursor queryFaceTableToCursor(String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        try {
            return GalleryDBHelper.getInstance().query("peopleFace", projection, selection, selectionArgs, null, null, sortOrder, null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Cursor queryPeopleRecommondTableToCursor(String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        try {
            return GalleryDBHelper.getInstance().query("peopleRecommend", projection, selection, selectionArgs, null, null, sortOrder, null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Uri safeInsertFace(ContentValues values) {
        return safeInsertFace(values, false);
    }

    public static Uri safeInsertFace(ContentValues values, boolean delayNotify) {
        Uri uri;
        if (delayNotify) {
            try {
                uri = PEOPLE_FACE_DELAY_NOTIFY_URI;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        uri = PEOPLE_FACE_URI;
        return GalleryUtils.safeInsert(uri, values);
    }

    public static Uri safeInsertPeopleRecommend(ContentValues values) {
        try {
            return GalleryUtils.safeInsert(PEOPLE_RECOMMOND_URI, values);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Cursor safeQueryPeopleRecommend(String[] projection, String selection, String[] selectionArgs) {
        Cursor cursor = null;
        try {
            return GalleryDBHelper.getInstance().query("peopleRecommend", projection, selection, selectionArgs, null, null, null, null);
        } catch (Exception e) {
            e.printStackTrace();
            return cursor;
        }
    }

    public static long safeUpdatePeopleRecommend(ContentValues values, String where, String[] selectionArgs) {
        try {
            return (long) GalleryUtils.safeUpdate(PEOPLE_RECOMMOND_URI, values, where, selectionArgs);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static long safeUpdateFace(ContentValues values, String where, String[] selectionArgs) {
        return safeUpdateFace(values, where, selectionArgs, false);
    }

    public static long safeUpdateFace(ContentValues values, String where, String[] selectionArgs, boolean delayNotify) {
        Uri uri;
        if (delayNotify) {
            try {
                uri = PEOPLE_FACE_DELAY_NOTIFY_URI;
            } catch (Exception e) {
                e.printStackTrace();
                return -1;
            }
        }
        uri = PEOPLE_FACE_URI;
        return (long) GalleryUtils.safeUpdate(uri, values, where, selectionArgs);
    }

    public static Uri safeInsertFace2Image(ContentValues values) {
        try {
            return GalleryUtils.safeInsert(FACE_TO_IMAGES_URI, values);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Cursor safeQueryFace2ImageByServerId(String serverId) {
        try {
            return GalleryDBHelper.getInstance().query("faceToImages", CloudUtils.getProjectionAll(), "imageServerId = ? ", new String[]{serverId}, null, null, null, null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void safeIgnorePeopleByIds(ArrayList<Long> batchIdList) {
        synchronized (PEOPLE_FACE_URI) {
            ArrayList<ContentProviderOperation> operations = new ArrayList();
            ContentValues values = new ContentValues();
            values.put("visibilityType", Integer.valueOf(2));
            String idSelection = String.format("%s in ( %s", new Object[]{"_id", GalleryUtils.concatAll(batchIdList, ",")});
            operations.add(ContentProviderOperation.newUpdate(PEOPLE_FACE_URI).withValues(values).withSelection(idSelection + ") AND " + "localFlag" + " = " + 8, null).build());
            values.put("localFlag", Integer.valueOf(13));
            operations.add(ContentProviderOperation.newUpdate(PEOPLE_FACE_URI).withValues(values).withSelection(idSelection + ") AND " + "localFlag" + " != " + 8, null).build());
            try {
                GalleryApp.sGetAndroidContext().getContentResolver().applyBatch("com.miui.gallery.cloud.provider", operations);
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (OperationApplicationException e2) {
                e2.printStackTrace();
            }
        }
        return;
    }

    public static Cursor getFaceInFaceIds(String serverIds, String localIds) {
        Cursor cursor = null;
        try {
            return GalleryDBHelper.getInstance().query("peopleFace", CloudUtils.getProjectionAll(), getPeopleFaceSelection(serverIds, localIds, false), null, null, null, null, null);
        } catch (Exception e) {
            e.printStackTrace();
            return cursor;
        }
    }

    public static String getPeopleFaceSelection(String serverIds, String localIds, boolean queryPeople) {
        StringBuffer bf = new StringBuffer();
        bf.append("localFlag");
        bf.append("!=");
        bf.append(String.valueOf(2));
        bf.append(" AND ");
        bf.append("serverStatus");
        bf.append(" = '");
        bf.append(String.valueOf(NormalPolicy.TAG));
        bf.append("' AND (");
        bf.append("serverId");
        bf.append(" IN (");
        bf.append(serverIds);
        bf.append(") OR ");
        bf.append("_id");
        bf.append(" IN (");
        bf.append(localIds);
        bf.append(" )) AND ");
        bf.append(queryPeople ? itemIsGroup : itemIsNotGroup);
        return bf.toString();
    }

    public static String getVisiblePeopleFaceSelection(String serverIds, String localIds, boolean queryPeople) {
        StringBuffer bf = new StringBuffer();
        bf.append(getPeopleFaceSelection(serverIds, localIds, queryPeople));
        bf.append(" AND (");
        bf.append("visibilityType");
        bf.append(" IS NULL OR ");
        bf.append("visibilityType");
        bf.append("!=");
        bf.append(String.valueOf(2));
        bf.append(" )");
        return bf.toString();
    }

    public static ArrayList<PeopleFace> fillInPeopleInfo(LinkedList<PeopleFace> brotherPeoples) {
        return fillInPeopleInfo(brotherPeoples, 0);
    }

    private static ArrayList<PeopleFace> fillInPeopleInfo(final LinkedList<PeopleFace> brotherPeoples, int invokeDeep) {
        StringBuffer serverIds = new StringBuffer();
        StringBuffer localIds = new StringBuffer();
        for (int i = 0; i < brotherPeoples.size(); i++) {
            appendId(serverIds, ((PeopleFace) brotherPeoples.get(i)).groupId);
            appendId(localIds, ((PeopleFace) brotherPeoples.get(i)).localGroupId);
        }
        final ArrayList<PeopleFace> ret = Lists.newArrayList();
        if (((Boolean) GalleryUtils.safeQuery("peopleFace", CloudUtils.getProjectionAll(), getVisiblePeopleFaceSelection(serverIds.toString(), localIds.toString(), true), null, null, new QueryHandler<Boolean>() {
            /* JADX WARNING: Missing block: B:1:0x0003, code:
            if (r6 != null) goto L_0x0005;
     */
            /* JADX WARNING: Missing block: B:3:0x0009, code:
            if (r6.moveToNext() == false) goto L_0x0064;
     */
            /* JADX WARNING: Missing block: B:4:0x000b, code:
            r1 = r11.iterator();
     */
            /* JADX WARNING: Missing block: B:6:0x0015, code:
            if (r1.hasNext() == false) goto L_0x0005;
     */
            /* JADX WARNING: Missing block: B:7:0x0017, code:
            r0 = (com.miui.gallery.cloud.peopleface.PeopleFace) r1.next();
     */
            /* JADX WARNING: Missing block: B:8:0x0021, code:
            if (com.miui.gallery.cloud.peopleface.FaceDataManager.access$000(r0, r6) == false) goto L_0x0011;
     */
            /* JADX WARNING: Missing block: B:10:0x0027, code:
            if (com.miui.gallery.cloud.peopleface.FaceDataManager.access$100(r6) == false) goto L_0x003f;
     */
            /* JADX WARNING: Missing block: B:11:0x0029, code:
            r0.localGroupId = r6.getString(4);
            r0.groupId = r6.getString(3);
            r0.relationType = r6.getInt(19);
     */
            /* JADX WARNING: Missing block: B:12:0x003d, code:
            r2 = true;
     */
            /* JADX WARNING: Missing block: B:13:0x003f, code:
            r0.peopleName = r6.getString(15);
            r0.localGroupId = r6.getString(0);
            r0.groupId = r6.getString(1);
            r0.relationType = r6.getInt(19);
            r1.remove();
            r8.add(r0);
     */
            /* JADX WARNING: Missing block: B:15:0x0068, code:
            return java.lang.Boolean.valueOf(r2);
     */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public Boolean handle(Cursor cursor) {
                boolean updated = false;
            }
        })).booleanValue() && !brotherPeoples.isEmpty() && invokeDeep < 4) {
            ret.addAll(fillInPeopleInfo(brotherPeoples, invokeDeep + 1));
        }
        return ret;
    }

    private static boolean isPeopleMerged(Cursor people) {
        String localId = people.getString(0);
        String serverId = people.getString(1);
        String localGroupId = people.getString(4);
        String groupId = people.getString(3);
        if ((TextUtils.isEmpty(localGroupId) || TextUtils.equals(localId, localGroupId)) && (TextUtils.isEmpty(groupId) || TextUtils.equals(serverId, groupId))) {
            return false;
        }
        return true;
    }

    private static boolean isFaceInGroup(PeopleFace face, Cursor people) {
        if ((TextUtils.isEmpty(face.groupId) || !face.groupId.equalsIgnoreCase(people.getString(1))) && (TextUtils.isEmpty(face.localGroupId) || !face.localGroupId.equalsIgnoreCase(people.getString(0)))) {
            return false;
        }
        return true;
    }

    public static void appendId(StringBuffer sb, String content) {
        if (!TextUtils.isEmpty(content)) {
            if (sb.length() > 0) {
                sb.append(",");
            }
            sb.append("'").append(content).append("'");
        }
    }

    public static void moveChildrenToAnotherGroup(String srcIds, String srcServerIds, String dstId, String dstServerId) {
        ContentValues values = new ContentValues();
        values.put("groupId", dstServerId);
        values.put("localGroupId", dstId);
        safeUpdateFace(values, String.format(Locale.US, " ( %s in (%s) or %s in (%s) ) and %s != %d", new Object[]{"groupId", srcServerIds, "localGroupId", srcIds, "localFlag", Integer.valueOf(2)}), null);
    }

    public static void changeChildrenOfPeopleA2PeopleB(String peopleAServerId, String peopleBServerId) {
        ContentValues values = new ContentValues();
        values.put("groupId", peopleBServerId);
        safeUpdateFace(values, "groupId = ?   and localFlag != ? ", new String[]{peopleAServerId, String.valueOf(2)});
    }

    public static Uri getPeopleFaceLimitUri(int limit) {
        return UriUtil.appendLimit(PEOPLE_FACE_URI, limit);
    }

    public static PeopleFace getGroupByPeopleName(Context context, String peopleName) {
        return getGroupByPeopleName(context, peopleName, -1);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Missing block: B:21:?, code:
            return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static PeopleFace getGroupByPeopleName(Context context, String peopleName, long exceptLocalId) {
        if (peopleName == null) {
            return null;
        }
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(getPeopleFaceLimitUri(1), CloudUtils.getProjectionAll(), String.format("%s = ? AND %s != ? AND " + IS_VALID_GROUP, new Object[]{"peopleName", "_id"}), new String[]{peopleName, Long.toString(exceptLocalId)}, null);
            if (cursor == null || !cursor.moveToNext()) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            PeopleFace peopleFace = new PeopleFace(cursor);
            if (cursor == null) {
                return peopleFace;
            }
            cursor.close();
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static boolean ifHaveBabyType(Context context) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(getPeopleFaceLimitUri(1), CloudUtils.getProjectionAll(), "not(peopleType is null ) ", null, null);
            if (cursor != null && cursor.getCount() > 0) {
                return true;
            }
            if (cursor == null) {
                return false;
            }
            cursor.close();
            return false;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static PeopleFace getGroupByServerId(Context context, String serverId) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(getPeopleFaceLimitUri(1), CloudUtils.getProjectionAll(), "serverId = ? AND " + IS_VALID_GROUP, new String[]{serverId}, null);
            if (cursor == null || !cursor.moveToNext()) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            PeopleFace peopleFace = new PeopleFace(cursor);
            return peopleFace;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static PeopleFace getItem(String serverId) {
        PeopleFace face = null;
        Cursor cursor = null;
        try {
            cursor = queryFaceTableToCursor(PROJECTION_BASIC_PEOPLE_INFO, "serverId = '" + serverId + "'", null, null);
            if (cursor != null && cursor.moveToNext()) {
                face = new PeopleFace(cursor.getString(0), cursor.getString(1), cursor.getString(2), cursor.getLong(3));
            }
            if (cursor != null) {
                cursor.close();
            }
            return face;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static long insertOneGroupWithName2DB(String name, String contactJson) {
        ContentValues values = new ContentValues();
        values.put("localFlag", Integer.valueOf(8));
        values.put("peopleName", name);
        if (!TextUtils.isEmpty(contactJson)) {
            values.put("peopleContactJsonInfo", contactJson);
        }
        values.put("type", "PEOPLE");
        values.put("visibilityType", Integer.valueOf(1));
        return Long.parseLong(safeInsertFace(values).getLastPathSegment());
    }
}

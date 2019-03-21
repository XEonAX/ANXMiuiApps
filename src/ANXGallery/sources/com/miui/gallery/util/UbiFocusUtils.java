package com.miui.gallery.util;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.google.common.collect.Lists;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBOwnerSubUbiImage;
import com.miui.gallery.data.DBShareImage;
import com.miui.gallery.data.DBShareSubUbiImage;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class UbiFocusUtils {

    static class UbiQuery {
        String[] queryArgs;
        String queryString;

        UbiQuery() {
        }

        public boolean isValid() {
            return (TextUtils.isEmpty(this.queryString) || this.queryArgs == null || this.queryArgs.length <= 0) ? false : true;
        }
    }

    static class MainUbiQuery extends UbiQuery {
        MainUbiQuery(boolean isShare, String requestId, String localId) {
            if (!TextUtils.isEmpty(requestId) || !TextUtils.isEmpty(localId)) {
                String requestIdColumnName = isShare ? "shareId" : "serverId";
                if (TextUtils.isEmpty(requestId)) {
                    this.queryString = "_id = ? ";
                    this.queryArgs = new String[]{localId};
                } else if (TextUtils.isEmpty(localId)) {
                    this.queryString = requestIdColumnName + " = ? ";
                    this.queryArgs = new String[]{requestId};
                } else {
                    this.queryString = " ( " + requestIdColumnName + " = ? OR " + "_id" + " = ? ) ";
                    this.queryArgs = new String[]{requestId, localId};
                }
            }
        }
    }

    static class SubUbiQuery extends UbiQuery {
        SubUbiQuery(String serverId, String localId, String index) {
            if (!TextUtils.isEmpty(serverId) || !TextUtils.isEmpty(localId)) {
                boolean hasIndex;
                if (TextUtils.isEmpty(index)) {
                    hasIndex = false;
                } else {
                    hasIndex = true;
                }
                if (TextUtils.isEmpty(serverId)) {
                    this.queryString = "ubiLocalId = ? " + (hasIndex ? " AND ubiSubIndex = ? " : "");
                    this.queryArgs = hasIndex ? new String[]{localId, index} : new String[]{localId};
                } else if (TextUtils.isEmpty(localId)) {
                    this.queryString = "ubiServerId = ? " + (hasIndex ? " AND ubiSubIndex = ? " : "");
                    this.queryArgs = hasIndex ? new String[]{serverId, index} : new String[]{serverId};
                } else {
                    this.queryString = " ( ubiServerId = ? OR ubiLocalId = ? ) " + (hasIndex ? " AND ubiSubIndex = ? " : "");
                    this.queryArgs = hasIndex ? new String[]{serverId, localId, index} : new String[]{serverId, localId};
                }
            }
        }
    }

    public static void handleSubUbiImage(JSONObject schemaJson, boolean isShare, String localId) throws JSONException {
        String requestId;
        if (isShare) {
            requestId = schemaJson.getString("shareId");
        } else {
            requestId = schemaJson.getString("id");
        }
        handleSubUbiImage(schemaJson, isShare, requestId, localId);
    }

    private static void handleSubUbiImage(JSONObject schemaJson, boolean isShare, String requestId, String localId) throws JSONException {
        if (schemaJson.optBoolean("isUbiImage")) {
            JSONObject subUbiImageMap = schemaJson.optJSONObject("ubiSubImageContentMap");
            int subUbiImageCount = schemaJson.optInt("ubiSubImageCount");
            int subUbiMainIndex = schemaJson.optInt("ubiDefaultIndex");
            if (subUbiImageMap != null) {
                for (int index = 0; index <= subUbiImageCount; index++) {
                    if (index != subUbiMainIndex) {
                        JSONObject subUbiImageJson = subUbiImageMap.optJSONObject(String.valueOf(index));
                        if (subUbiImageJson != null) {
                            ContentValues values = CloudUtils.getContentValuesForAllAndThumbNull(subUbiImageJson);
                            values.put("ubiServerId", requestId);
                            values.put("ubiSubIndex", Integer.valueOf(index));
                            if (!TextUtils.isEmpty(localId)) {
                                values.put("ubiLocalId", localId);
                            }
                            if (schemaJson.has("groupId")) {
                                values.put("groupId", schemaJson.getString("groupId"));
                            }
                            if (isShare && schemaJson.has("shareId")) {
                                values.put("shareId", schemaJson.getString("shareId"));
                            }
                            synchronized ((isShare ? GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI : GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI)) {
                                DBImage dbSubUbiImage = getSubUbiImage(isShare, requestId, localId, index);
                                if (dbSubUbiImage == null) {
                                    DBImage oldItemWithTheSameName = getSubUbiImage(isShare, values.getAsString("fileName"));
                                    if (oldItemWithTheSameName != null) {
                                        CloudUtils.renameAnItemInLocal(oldItemWithTheSameName, false);
                                    }
                                    safeInsertSubUbiImage(isShare, values);
                                } else {
                                    safeUpdateSubUbiImage(isShare, values, requestId, localId, index);
                                    CloudUtils.renameItemIfNeeded(dbSubUbiImage, values, false);
                                }
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
        }
    }

    private static DBImage getSubUbiImage(final boolean isShare, String subUbiFileName) {
        return (DBImage) GalleryUtils.safeQuery(isShare ? GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI : GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, CloudUtils.getProjectionAll(), String.format(Locale.US, "%s=?", new Object[]{"fileName"}), new String[]{subUbiFileName}, null, new QueryHandler<DBImage>() {
            public DBImage handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToFirst()) {
                    return null;
                }
                if (isShare) {
                    return new DBShareSubUbiImage(cursor);
                }
                return new DBOwnerSubUbiImage(cursor);
            }
        });
    }

    private static void safeInsertSubUbiImage(boolean isShare, ContentValues values) {
        GalleryUtils.safeInsert(isShare ? GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI : GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, values);
    }

    private static void safeUpdateSubUbiImage(boolean isShare, ContentValues values, String requestId, String localId, int index) {
        SubUbiQuery subUbiQuery = new SubUbiQuery(requestId, localId, String.valueOf(index));
        if (subUbiQuery.isValid()) {
            GalleryUtils.safeUpdate(isShare ? GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI : GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, values, subUbiQuery.queryString, subUbiQuery.queryArgs);
        } else {
            Log.e("UbiFocusUtils", "safeUpdateSubUbiImage, subUbiQuery.isValid.");
        }
    }

    public static String getUbiServerIdByUbiLocalId(String ubiLocalId, boolean isShare) {
        return CloudUtils.getStringColumnValue(isShare ? GalleryCloudUtils.SHARE_IMAGE_URI : GalleryCloudUtils.CLOUD_URI, isShare ? "shareId" : "serverId", "_id", ubiLocalId);
    }

    public static DBImage getSubUbiImage(final boolean isShare, String requestId, String localId, int index) {
        SubUbiQuery subUbiQuery = new SubUbiQuery(requestId, localId, String.valueOf(index));
        if (subUbiQuery.isValid()) {
            return (DBImage) GalleryUtils.safeQuery(isShare ? GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI : GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, CloudUtils.getProjectionAll(), subUbiQuery.queryString, subUbiQuery.queryArgs, null, new QueryHandler<DBImage>() {
                public DBImage handle(Cursor cursor) {
                    if (cursor == null || !cursor.moveToFirst()) {
                        return null;
                    }
                    if (isShare) {
                        return new DBShareSubUbiImage(cursor);
                    }
                    return new DBOwnerSubUbiImage(cursor);
                }
            });
        }
        Log.e("UbiFocusUtils", "getSubUbiImage, subUbiQuery.isValid.");
        return null;
    }

    public static <T> T queryForSubUbiImages(boolean isShare, String serverId, String localId, QueryHandler<T> handler) {
        SubUbiQuery subUbiQuery = new SubUbiQuery(serverId, localId, null);
        if (!subUbiQuery.isValid()) {
            return null;
        }
        return GalleryUtils.safeQuery(isShare ? GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI : GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, CloudUtils.getProjectionAll(), subUbiQuery.queryString, subUbiQuery.queryArgs, null, (QueryHandler) handler);
    }

    public static List<DBImage> getSubUbiImages(final boolean isShare, String serverId, String localId) {
        return (List) queryForSubUbiImages(isShare, serverId, localId, new QueryHandler<List<DBImage>>() {
            public List<DBImage> handle(Cursor cursor) {
                List<DBImage> results = null;
                if (cursor != null) {
                    results = Lists.newArrayList();
                    while (cursor.moveToNext()) {
                        if (isShare) {
                            results.add(new DBShareSubUbiImage(cursor));
                        } else {
                            results.add(new DBOwnerSubUbiImage(cursor));
                        }
                    }
                }
                return results;
            }
        });
    }

    public static void safeDeleteSubUbi(DBImage mainDbImage) {
        if (mainDbImage.isUbiFocus()) {
            SubUbiQuery subUbiQuery = new SubUbiQuery(mainDbImage.getRequestId(), mainDbImage.getId(), null);
            if (subUbiQuery.isValid()) {
                GalleryUtils.safeDelete(mainDbImage.isShareItem() ? GalleryCloudUtils.SHARE_SUB_UBIFOCUS_URI : GalleryCloudUtils.OWNER_SUB_UBIFOCUS_URI, subUbiQuery.queryString, subUbiQuery.queryArgs);
            } else {
                Log.e("UbiFocusUtils", "safeDeleteSubUbiImage, subUbiQuery.isValid.");
            }
        }
    }

    public static DBImage getMainDBImage(final boolean isShare, String requestId, String localId) {
        MainUbiQuery mainUbiQuery = new MainUbiQuery(isShare, requestId, localId);
        if (!mainUbiQuery.isValid()) {
            return null;
        }
        return (DBImage) GalleryUtils.safeQuery(isShare ? GalleryCloudUtils.SHARE_IMAGE_URI : GalleryCloudUtils.CLOUD_URI, CloudUtils.getProjectionAll(), mainUbiQuery.queryString, mainUbiQuery.queryArgs, null, new QueryHandler<DBImage>() {
            public DBImage handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    return null;
                }
                return isShare ? new DBShareImage(cursor) : new DBCloud(cursor);
            }
        });
    }

    public static int getSubUbiCount(boolean isShare, String requestId, String localId) {
        DBImage mainDbImage = getMainDBImage(isShare, requestId, localId);
        if (mainDbImage != null) {
            return mainDbImage.getSubUbiImageCount();
        }
        return 0;
    }
}

package com.miui.gallery.cloud.peopleface;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.miui.gallery.cloud.CheckResult;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.GalleryMiCloudServerException;
import com.miui.gallery.cloud.HostManager.PeopleFace;
import com.miui.gallery.cloud.SyncConditionManager;
import com.miui.gallery.preference.GalleryPreferences.Face;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log2File;
import com.miui.gallery.util.SyncLog;
import com.miui.internal.analytics.NormalPolicy;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import miui.provider.ExtraContacts.ConferenceCalls;
import miui.provider.ExtraTelephony.DeletableSyncColumns;
import miui.yellowpage.Tag.TagWebService.CommonResult;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SyncPeopleFaceFromServer {
    protected Account mAccount;
    protected Context mContext;
    protected GalleryExtendedAuthToken mExtendedAuthToken;
    private Runnable mRunnable = new Runnable() {
        public void run() {
        }
    };
    private boolean mShouldFlatPeopleRelationshipInDB = false;

    interface GetInfoFromNetTask {
        JSONObject run() throws ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, JSONException, URISyntaxException, GalleryMiCloudServerException;
    }

    public static class ErrorHandler {
        private static void cleanPeopleFaceTables() {
            for (String tableName : GalleryDBHelper.getPeopleFaceTables()) {
                int deleteRows = GalleryUtils.safeDelete(GalleryCloudUtils.BASE_URI.buildUpon().appendPath(tableName).build(), null, null);
                Log2File.getInstance().flushLog("syncface", String.format("clean %s finished, deleted rows=%d", new Object[]{uri, Integer.valueOf(deleteRows)}), null);
            }
        }

        public static boolean simpleCheckWhetherNeedCleanTables(JSONObject json, Account account) throws JSONException {
            if (json == null) {
                return false;
            }
            if (json.has(CommonResult.RESULT_CODE)) {
                int code = json.getInt(CommonResult.RESULT_CODE);
                Log2File.getInstance().flushLog("syncface", "JSON_TAG_CODE is:" + code, null);
                if (code != 52000) {
                    return false;
                }
                cleanPeopleFaceTables();
                GalleryCloudSyncTagUtils.setFaceSyncWatermark(account, 0);
                GalleryCloudSyncTagUtils.setFaceSyncToken(account, "");
                return true;
            }
            Log2File.getInstance().flushLog("syncface", "don't have json_tag_code", null);
            return false;
        }
    }

    public SyncPeopleFaceFromServer(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.mExtendedAuthToken = mExtendedAuthToken;
    }

    protected String getPeopleFaceSyncUrl() {
        return PeopleFace.getPeopleFaceSyncUrl();
    }

    protected String getSyncFaceConcreteInfoUrl() {
        return PeopleFace.getFaceInfoSyncUrl();
    }

    public final void sync() throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        long startTime = System.currentTimeMillis();
        while (SyncConditionManager.check(0) != 2) {
            GallerySyncResult getAllResult = GallerySyncResult.Ok;
            JSONObject resultJson = handleRetryTask(new GetInfoFromNetTask() {
                public JSONObject run() throws ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, JSONException, URISyntaxException, GalleryMiCloudServerException {
                    return SyncPeopleFaceFromServer.this.getPeopleFaceList(SyncPeopleFaceFromServer.this.getSyncItemLimit());
                }
            }, getAllResult);
            if (!ErrorHandler.simpleCheckWhetherNeedCleanTables(resultJson, this.mAccount)) {
                if (resultJson != null) {
                    JSONObject dataJson = resultJson.optJSONObject("data");
                    final ArrayList<String> newFaceInfos = handlePeopleFaceDataJson(dataJson);
                    if (newFaceInfos == null || newFaceInfos.size() <= 0 || handleRetryTask(new GetInfoFromNetTask() {
                        public JSONObject run() throws ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, JSONException, URISyntaxException, GalleryMiCloudServerException {
                            return SyncPeopleFaceFromServer.this.getFaceConcreteInfoList(newFaceInfos);
                        }
                    }, getAllResult) != null) {
                        updateSyncInfo(dataJson);
                        if (!(dataJson == null || dataJson.length() == 0 || !shouldContinue(dataJson))) {
                        }
                    }
                }
                flatDBAndCheckBabyAlbumAfterSync();
                SyncLog.d("syncface", "sync people face from server finish, cost time: " + (System.currentTimeMillis() - startTime));
                if (!Face.isFirstSyncCompleted()) {
                    Face.setFirstSyncCompleted();
                    return;
                }
                return;
            }
        }
    }

    private void flatDBAndCheckBabyAlbumAfterSync() {
        if (this.mShouldFlatPeopleRelationshipInDB) {
            GalleryUtils.runOnMainThreadPostDelay(this.mRunnable, 4000);
            this.mShouldFlatPeopleRelationshipInDB = false;
        }
    }

    private JSONObject handleRetryTask(GetInfoFromNetTask task, GallerySyncResult getAllResult) throws ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, JSONException, URISyntaxException, GalleryMiCloudServerException {
        JSONObject resultJson = null;
        for (int retryTimes = 0; retryTimes < 3; retryTimes++) {
            resultJson = task.run();
            getAllResult = CheckResult.checkXMResultCodeForFaceRequest(resultJson, null);
            if (getAllResult == GallerySyncResult.Ok || getAllResult == GallerySyncResult.ResetFaceSyncTag) {
                return resultJson;
            }
            if (getAllResult != GallerySyncResult.RetryError) {
                return null;
            }
            resultJson = null;
        }
        return resultJson;
    }

    private boolean shouldContinue(JSONObject dataJson) throws JSONException {
        if (dataJson == null) {
            return false;
        }
        return dataJson.getBoolean("hasMore");
    }

    protected int getSyncItemLimit() {
        return 100;
    }

    private final JSONObject getPeopleFaceList(int limit) throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        if (Log2File.getInstance().canLog()) {
            Log2File.getInstance().flushLog("syncface", "getPeopleFaceList :", null);
        }
        ArrayList<NameValuePair> params = new ArrayList();
        params.add(new BasicNameValuePair("syncToken", GalleryCloudSyncTagUtils.getFaceSyncToken(this.mAccount)));
        if (limit > 0) {
            params.add(new BasicNameValuePair(ConferenceCalls.LIMIT_PARAM_KEY, Long.toString((long) limit)));
        }
        JSONObject allJson = CloudUtils.getFromXiaomi(getPeopleFaceSyncUrl(), params, this.mAccount, this.mExtendedAuthToken, 0, false);
        if (Log2File.getInstance().canLog()) {
            Log2File.getInstance().flushLog("syncface", "getPeopleFaceList allJson=" + allJson, null);
        }
        SyncLog.d("syncface", "getPeopleFaceList success\n");
        return allJson;
    }

    private final JSONObject getFaceConcreteInfoList(ArrayList<String> newFaceInfos) throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        SyncLog.d("syncface", "getFaceConcreteInfoList begin");
        GallerySyncResult getAllResult = GallerySyncResult.Ok;
        int len = newFaceInfos.size();
        JSONObject result = null;
        StringBuilder builder = new StringBuilder();
        int j = 0;
        int i = 0;
        while (i < len) {
            builder.append((String) newFaceInfos.get(i));
            j++;
            if (j < 40 && i < len - 1) {
                builder.append(",");
            }
            if (j == 40 || i == len - 1) {
                final String urlParam = builder.toString();
                result = handleRetryTask(new GetInfoFromNetTask() {
                    public JSONObject run() throws ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, JSONException, URISyntaxException, GalleryMiCloudServerException {
                        return SyncPeopleFaceFromServer.this.getFaceConcreteInfoListOneBatch(urlParam);
                    }
                }, getAllResult);
                if (result == null) {
                    break;
                }
                builder = new StringBuilder();
                j = 0;
            }
            i++;
        }
        SyncLog.d("syncface", "getFaceConcreteInfoList end");
        return result;
    }

    private final JSONObject getFaceConcreteInfoListOneBatch(String param) throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        if (Log2File.getInstance().canLog()) {
            Log2File.getInstance().flushLog("syncface", "getPeopleFaceInfo  " + param, null);
        }
        ArrayList<NameValuePair> params = new ArrayList();
        params.add(new BasicNameValuePair("newFaceInfos", param));
        JSONObject allJson = CloudUtils.postToXiaomi(getSyncFaceConcreteInfoUrl(), params, null, this.mAccount, this.mExtendedAuthToken, 0, false);
        try {
            handleFaceInfosDataJson(allJson.optJSONObject("data"));
        } catch (Exception e) {
        }
        if (Log2File.getInstance().canLog()) {
            Log2File.getInstance().flushLog("syncface", "getFaceConcreteInfoListOneBatch end,allJson=" + allJson, null);
        }
        return allJson;
    }

    private void updateSyncInfo(JSONObject dataJson) throws JSONException {
        if (dataJson != null) {
            GalleryCloudSyncTagUtils.setFaceSyncWatermark(this.mAccount, dataJson.getLong("watermark"));
            GalleryCloudSyncTagUtils.setFaceSyncToken(this.mAccount, dataJson.getString("syncToken"));
        }
    }

    private ArrayList<String> handlePeopleFaceDataJson(JSONObject dataJson) throws JSONException {
        if (dataJson == null) {
            return null;
        }
        ArrayList<String> idsNeedFetchFaceInfos = null;
        if (!dataJson.has("records")) {
            return null;
        }
        JSONObject newFaceInfos = dataJson.getJSONObject("newFaceInfos");
        JSONArray records = dataJson.getJSONArray("records");
        for (int i = 0; i < records.length(); i++) {
            JSONObject record = records.getJSONObject(i);
            String id = record.getString("id");
            if (newFaceInfos.has(id)) {
                if (idsNeedFetchFaceInfos == null) {
                    idsNeedFetchFaceInfos = new ArrayList();
                }
                idsNeedFetchFaceInfos.add(newFaceInfos.getString(id));
            }
            handleItem(record);
        }
        return idsNeedFetchFaceInfos;
    }

    private void handleFaceInfosDataJson(JSONObject dataJson) throws JSONException {
        if (dataJson != null) {
            JSONArray faceInfoRecords = dataJson.optJSONArray("faceInfoRecords");
            if (faceInfoRecords == null || faceInfoRecords.length() <= 0) {
                SyncLog.e("syncface", "response face info is empty");
                return;
            }
            SyncLog.d("syncface", "handleFaceInfosDataJson one batch:");
            for (int i = 0; i < faceInfoRecords.length(); i++) {
                JSONObject oneFace = faceInfoRecords.getJSONObject(i);
                String faceId = oneFace.getString("faceId");
                JSONObject faceInfo = oneFace.getJSONObject("faceInfo");
                JSONArray imageIds = oneFace.getJSONArray("imageIds");
                putFaceInfo2Db(faceInfo, faceId, oneFace.optDouble("faceCoverScore", -1.0d));
                putFaceImageIdsInfo2Db(imageIds, faceId);
            }
        }
    }

    private void putFaceInfo2Db(JSONObject faceInfo, String faceId, double faceCoverScore) throws JSONException {
        double faceXScale = faceInfo.getDouble("faceXScale");
        double faceYScale = faceInfo.getDouble("faceYScale");
        double faceWScale = faceInfo.getDouble("faceWScale");
        double faceHScale = faceInfo.getDouble("faceHScale");
        double eyeLeftXScale = faceInfo.getDouble("eyeLeftXScale");
        double eyeLeftYScale = faceInfo.getDouble("eyeLeftYScale");
        double eyeRightXScale = faceInfo.getDouble("eyeRightXScale");
        double eyeRightYScale = faceInfo.getDouble("eyeRightYScale");
        ContentValues values = new ContentValues();
        values.put("faceXScale", Double.valueOf(faceXScale));
        values.put("faceYScale", Double.valueOf(faceYScale));
        values.put("faceWScale", Double.valueOf(faceWScale));
        values.put("faceHScale", Double.valueOf(faceHScale));
        values.put("leftEyeXScale", Double.valueOf(eyeLeftXScale));
        values.put("leftEyeYScale", Double.valueOf(eyeLeftYScale));
        values.put("RightEyeXScale", Double.valueOf(eyeRightXScale));
        values.put("RightEyeYScale", Double.valueOf(eyeRightYScale));
        values.put("faceCoverScore", Double.valueOf(faceCoverScore));
        long rowAffect = FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "(%s = \"%s\")", new Object[]{"serverId", faceId}), null, true);
    }

    private void putFaceImageIdsInfo2Db(JSONArray imageIdsArray, String faceId) throws JSONException {
        Long[] imageIds = new Long[imageIdsArray.length()];
        for (int i = 0; i < imageIdsArray.length(); i++) {
            imageIds[i] = Long.valueOf(imageIdsArray.get(i).toString());
        }
        for (Long id : imageIds) {
            ContentValues values = new ContentValues();
            values.put("faceId", faceId);
            values.put("imageServerId", id.toString());
            FaceDataManager.safeInsertFace2Image(values);
        }
    }

    protected final boolean handleItem(JSONObject schemaJson) throws JSONException {
        if (schemaJson == null) {
            return false;
        }
        String type = schemaJson.getString("type");
        String serverId = schemaJson.getString("id");
        String status = schemaJson.getString("status");
        PeopleFace cloud = FaceDataManager.getItem(serverId);
        ContentValues values = FaceAlbumUtil.getContentValuesForPeopleFace(schemaJson);
        if (cloud == null) {
            if (type.equals("PEOPLE")) {
                PeopleFace oldCloud = FaceDataManager.getGroupByPeopleName(this.mContext, FaceAlbumUtil.getPeopleName(schemaJson));
                if (oldCloud != null) {
                    setShouldFlatPeopleRelationshipInDB(values, oldCloud);
                    CloudUtils.updateToLocalDBForSync(FaceDataManager.PEOPLE_FACE_URI, values, oldCloud._id);
                    return false;
                }
                handleNewPeopleFace(values);
                this.mShouldFlatPeopleRelationshipInDB = true;
                return false;
            }
            handleNewPeopleFace(values);
            return true;
        } else if (cloud.serverTag >= CloudUtils.getLongAttributeFromJson(schemaJson, "eTag")) {
            return false;
        } else {
            if (status.equals(NormalPolicy.TAG)) {
                setShouldFlatPeopleRelationshipInDB(values, cloud);
                handleCustom(values);
                return false;
            } else if (!status.equals(DeletableSyncColumns.DELETED)) {
                return false;
            } else {
                handleDelete(values);
                return false;
            }
        }
    }

    private void setShouldFlatPeopleRelationshipInDB(ContentValues values, PeopleFace oldCloud) {
        if (!this.mShouldFlatPeopleRelationshipInDB) {
            String newGroupId = "";
            if (values.containsKey("groupId")) {
                newGroupId = values.getAsString("groupId");
            }
            if (!newGroupId.equalsIgnoreCase(oldCloud.groupId)) {
                this.mShouldFlatPeopleRelationshipInDB = true;
            }
        }
    }

    protected void handleNewPeopleFace(ContentValues values) {
        values.put("localFlag", Integer.valueOf(0));
        Uri uri = FaceDataManager.safeInsertFace(values, true);
    }

    private final void handleCustom(ContentValues values) throws JSONException {
        CloudUtils.updateToPeopleFaceDBForSync(FaceDataManager.PEOPLE_FACE_URI, values, values.getAsString("serverId"));
    }

    private final void handleDelete(ContentValues values) throws JSONException {
        CloudUtils.updateToPeopleFaceDBForDeleteItem(FaceDataManager.PEOPLE_FACE_URI, values, values.getAsString("serverId"));
    }
}

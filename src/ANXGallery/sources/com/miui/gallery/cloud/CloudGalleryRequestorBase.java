package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.CloudUtils.SecretAlbumUtils;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.data.DBImage.SubUbiImage;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Log2File;
import com.miui.gallery.util.SyncLog;
import com.xiaomi.micloudsdk.file.MiCloudFileRequestor;
import com.xiaomi.opensdk.exception.AuthenticationException;
import com.xiaomi.opensdk.exception.RetriableException;
import com.xiaomi.opensdk.exception.UnretriableException;
import com.xiaomi.opensdk.file.model.CommitParameter;
import com.xiaomi.opensdk.file.model.RequestUploadParameter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class CloudGalleryRequestorBase extends MiCloudFileRequestor<RequestCloudItem> {
    protected Account mAccount;
    private final CloudUrlProvider mUrlProvider;

    protected abstract void connectSubUbi(RequestCloudItem requestCloudItem);

    protected abstract String getAlbumId(RequestCloudItem requestCloudItem);

    protected abstract DBImage getItemByRequestId(String str, RequestCloudItem requestCloudItem);

    protected abstract SpaceFullListener getSpaceFullListener();

    protected abstract String parseRequestId(JSONObject jSONObject, RequestCloudItem requestCloudItem) throws JSONException;

    public CloudGalleryRequestorBase(Account account, CloudUrlProvider urlPrivider) {
        super(GalleryApp.sGetAndroidContext());
        this.mAccount = account;
        this.mUrlProvider = urlPrivider;
    }

    protected Map<String, String> getRequestUploadParams(RequestCloudItem remoteInfo, RequestUploadParameter requestUploadParameter) throws JSONException {
        Map<String, String> parameters = new HashMap();
        addRetryParameters(parameters, remoteInfo.createRetryTimes, remoteInfo.needReRequest);
        addUbiParam(parameters, remoteInfo);
        parameters.put("data", getRequestUploadPostString(remoteInfo, requestUploadParameter));
        return parameters;
    }

    private void addUbiParam(Map<String, String> parameters, RequestCloudItem remoteInfo) {
        if (remoteInfo.dbCloud.isUbiFocus()) {
            parameters.put("isUbiImage", String.valueOf(true));
        }
        if (remoteInfo.dbCloud.isSubUbiFocus()) {
            parameters.put("ubiIndex", String.valueOf(remoteInfo.dbCloud.getSubUbiIndex()));
        }
    }

    protected String getRequestUploadPostString(RequestCloudItem remoteInfo, RequestUploadParameter requestUploadParameter) throws JSONException {
        JSONObject requestJson = new JSONObject(requestUploadParameter.getKssString());
        remoteInfo.dbCloud.setSha1(requestUploadParameter.getFileSHA1());
        JSONObject obj = remoteInfo.dbCloud.toJSONObject();
        obj.remove("creatorId");
        obj.remove("shareId");
        if (!TextUtils.isEmpty(remoteInfo.dbCloud.getLocalFile())) {
            obj.put("isFrontCamera", ExifUtil.isFromFrontCamera(remoteInfo.dbCloud.getLocalFile()));
        }
        requestJson.put("content", obj);
        return requestJson.toString();
    }

    protected RequestCloudItem handleRequestUploadResultJson(RequestCloudItem remoteInfo, JSONObject resultJson) throws UnretriableException, RetriableException, AuthenticationException {
        try {
            GallerySyncResult createResult = CheckResult.checkXMResultCode(resultJson, remoteInfo, getSpaceFullListener());
            if (createResult != GallerySyncResult.Ok) {
                Log.d("CloudGalleryRequestorBase", "upload request error %s", (Object) resultJson);
                remoteInfo.result = createResult;
                remoteInfo.createRetryTimes++;
                return remoteInfo;
            }
            boolean isFileExist;
            JSONObject dataJson = resultJson.getJSONObject("data");
            JSONObject contentCreateJson = dataJson.getJSONObject("content");
            String requestId = parseRequestId(contentCreateJson, remoteInfo);
            dataJson.put("upload_id", requestId);
            String createFileName = contentCreateJson.getString("fileName");
            if (!createFileName.equals(remoteInfo.dbCloud.getFileName())) {
                SyncLog.d("CloudGalleryRequestorBase", "create image name changed from:" + remoteInfo.dbCloud.getFileName() + " to:" + createFileName);
            }
            synchronized (remoteInfo.dbCloud.getBaseUri()) {
                if (!remoteInfo.dbCloud.isSubUbiFocus()) {
                    DBImage oldImage = getItemByRequestId(requestId, remoteInfo);
                    if (!(oldImage == null || oldImage.getId().equals(remoteInfo.dbCloud.getId()))) {
                        CloudUtils.deleteDirty(oldImage);
                    }
                }
                ContentValues values = new ContentValues();
                values = CloudUtils.getContentValuesForAll(contentCreateJson, remoteInfo.dbCloud.isShareItem());
                putAlbumIdInValues(remoteInfo, resultJson, values);
                if (!dataJson.has("kss") && dataJson.has("fileExists") && dataJson.getBoolean("fileExists")) {
                    isFileExist = true;
                    if (remoteInfo.isSecretItem()) {
                        encodeSecretFiles(remoteInfo.dbCloud, values);
                    }
                    updateLocalDBForSyncAndConnectUbi(remoteInfo, values);
                } else {
                    isFileExist = false;
                    CloudUtils.updateToLocalDB(remoteInfo.dbCloud.getBaseUri(), values, remoteInfo.dbCloud);
                }
            }
            return !isFileExist ? null : remoteInfo;
        } catch (Throwable e) {
            throw new UnretriableException(e);
        }
    }

    private void updateLocalDBForSyncAndConnectUbi(RequestCloudItem remoteInfo, ContentValues values) throws JSONException {
        CloudUtils.updateToLocalDBForSync(remoteInfo.dbCloud.getBaseUri(), values, remoteInfo.dbCloud);
        if (remoteInfo.dbCloud.isUbiFocus()) {
            connectSubUbi(remoteInfo);
        }
    }

    protected Map<String, String> getCommitUploadParams(RequestCloudItem remoteInfo, CommitParameter commitParameter) throws JSONException {
        Map<String, String> parameters = new HashMap();
        addRetryParameters(parameters, remoteInfo.commitRetryTimes, remoteInfo.needReRequest);
        parameters.put("data", getCommitUploadPostString(remoteInfo, commitParameter));
        return parameters;
    }

    protected String getRequestUploadURL(RequestCloudItem remoteInfo, RequestUploadParameter requestUploadParameter) {
        String albumId = getAlbumId(remoteInfo);
        if (TextUtils.isEmpty(albumId)) {
            return null;
        }
        if (!remoteInfo.dbCloud.isSubUbiFocus()) {
            return getCreateUrl(this.mAccount.name, albumId);
        }
        if (TextUtils.isEmpty(remoteInfo.dbCloud.getUbiServerId()) || remoteInfo.dbCloud.getSubUbiIndex() == -1) {
            return null;
        }
        return getCreateSubUbiUrl(this.mAccount.name, remoteInfo.dbCloud.getUbiServerId(), remoteInfo.dbCloud.getSubUbiIndex());
    }

    protected RequestCloudItem handleCommitUploadResult(RequestCloudItem remoteInfo, JSONObject resultJson) throws UnretriableException, RetriableException, AuthenticationException {
        try {
            GallerySyncResult commitResult = CheckResult.checkXMResultCode(resultJson, remoteInfo, getSpaceFullListener());
            if (commitResult != GallerySyncResult.Ok) {
                Log.d("CloudGalleryRequestorBase", "upload commit error %s", (Object) resultJson);
                remoteInfo.result = commitResult;
                remoteInfo.commitRetryTimes++;
                return null;
            }
            putCommitResult(resultJson.getJSONObject("data"), remoteInfo);
            if (!Log2File.getInstance().canLog()) {
                return remoteInfo;
            }
            Log2File.getInstance().flushLog("CloudGalleryRequestorBase", "upload a pic:" + remoteInfo.dbCloud.getFileName(), null);
            return remoteInfo;
        } catch (Throwable e) {
            throw new UnretriableException(e);
        }
    }

    private void putCommitResult(JSONObject allJson, RequestCloudItem remoteInfo) throws JSONException {
        ContentValues mainItemValues = CloudUtils.getContentValuesForAll(allJson, remoteInfo.dbCloud.isShareItem());
        putAlbumIdInValues(remoteInfo, allJson, mainItemValues);
        if (remoteInfo.isSecretItem()) {
            encodeSecretFiles(remoteInfo.dbCloud, mainItemValues);
        }
        if (remoteInfo.dbCloud.isSubUbiFocus()) {
            CloudUtils.updateToLocalDBForSync(remoteInfo.dbCloud.isShareItem() ? GalleryCloudUtils.SHARE_IMAGE_URI : GalleryCloudUtils.CLOUD_URI, mainItemValues, ((SubUbiImage) remoteInfo.dbCloud).getUbiLocalId());
            JSONObject subImageJson = allJson.getJSONObject("content").getJSONObject("ubiSubImageContentMap").optJSONObject(String.valueOf(remoteInfo.dbCloud.getSubUbiIndex()));
            if (subImageJson != null) {
                ContentValues subItemValues = CloudUtils.getContentValuesForAll(subImageJson, remoteInfo.dbCloud.isShareItem());
                putAlbumIdInValues(remoteInfo, subImageJson, subItemValues);
                CloudUtils.updateToLocalDBForSync(remoteInfo.dbCloud.getBaseUri(), subItemValues, remoteInfo.dbCloud);
                return;
            }
            return;
        }
        updateLocalDBForSyncAndConnectUbi(remoteInfo, mainItemValues);
    }

    private static boolean isSynced(ContentValues values) {
        return "custom".equalsIgnoreCase(values.getAsString("serverStatus"));
    }

    private void encodeSecretFiles(DBImage dbCloud, ContentValues values) {
        if (isSynced(values)) {
            SecretAlbumUtils.encodeFiles(dbCloud, values);
        }
    }

    protected String getCommitUploadPostString(RequestCloudItem remoteInfo, CommitParameter commitParameter) throws JSONException {
        return new JSONObject().put("kss", new JSONObject(commitParameter.getKssString())).toString();
    }

    protected Map<String, String> getRequestDownloadParams(RequestCloudItem remoteInfo) {
        HashMap<String, String> parameters = new HashMap();
        int subUbiIndex = -1;
        if (remoteInfo.getDownloadType() == 3 && (remoteInfo.dbCloud.isUbiFocus() || remoteInfo.dbCloud.isSubUbiFocus())) {
            subUbiIndex = remoteInfo.dbCloud.getSubUbiIndex();
        }
        addExtraParameters(parameters, remoteInfo.otherRetryTimes, remoteInfo.needReRequest, subUbiIndex);
        return parameters;
    }

    protected boolean handleRequestDownloadResultJson(RequestCloudItem remoteInfo, JSONObject resultJson) throws UnretriableException, RetriableException, AuthenticationException {
        try {
            GallerySyncResult requestResult = CheckResult.checkXMResultCode(resultJson, remoteInfo, getSpaceFullListener());
            if (requestResult == GallerySyncResult.Ok) {
                return true;
            }
            remoteInfo.result = requestResult;
            remoteInfo.otherRetryTimes++;
            return false;
        } catch (Throwable e) {
            throw new UnretriableException(e);
        }
    }

    private void addRetryParameters(Map<String, String> parameters, int retryTimes, boolean needReRequest) {
        addExtraParameters(parameters, retryTimes, needReRequest, -1);
    }

    private void addExtraParameters(Map<String, String> parameters, int retryTimes, boolean needReRequest, int subUbiIndex) {
        if (retryTimes > 0) {
            parameters.put("retry", Integer.toString(retryTimes));
        }
        if (needReRequest) {
            parameters.put("needReRequest", String.valueOf(needReRequest));
        }
        if (subUbiIndex >= 0) {
            parameters.put("ubiIndex", String.valueOf(subUbiIndex));
        }
    }

    protected final String getCreateUrl(String userId, String albumId) {
        return this.mUrlProvider.getCreateUrl(userId, albumId);
    }

    protected final String getCreateSubUbiUrl(String userId, String serverId, int subIndex) {
        return this.mUrlProvider.getCreateSubUbiUrl(userId, serverId, subIndex);
    }

    protected final String getCommitUploadURL(RequestCloudItem requestItem, CommitParameter commitParameter) {
        String requestId = commitParameter.getUploadId();
        if (requestItem.dbCloud.isSubUbiFocus()) {
            return this.mUrlProvider.getCommitSubUbiUrl(this.mAccount.name, requestItem.dbCloud.getUbiServerId(), requestItem.dbCloud.getSubUbiIndex());
        }
        return this.mUrlProvider.getCommitUrl(this.mAccount.name, requestId);
    }

    protected final String getRequestDownloadURL(RequestCloudItem requestItem) {
        return this.mUrlProvider.getRequestDownloadUrl(this.mAccount.name, requestItem.dbCloud.getRequestId());
    }

    protected void putAlbumIdInValues(RequestCloudItem requestItem, JSONObject schemaJson, ContentValues values) {
    }
}

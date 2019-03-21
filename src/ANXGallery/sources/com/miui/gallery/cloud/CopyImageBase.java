package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class CopyImageBase extends RequestOperationBase {
    protected String mAlbumId;

    protected abstract String getAlbumId(RequestCloudItem requestCloudItem);

    protected abstract String getAlbumIdTagName();

    protected abstract Uri getBaseUri();

    protected abstract String getUrl(CloudUrlProvider cloudUrlProvider, String str, String str2, boolean z, RequestCloudItem requestCloudItem);

    protected abstract void handleSubUbiSchema(JSONObject jSONObject, String str) throws JSONException;

    protected abstract boolean isToShare();

    public CopyImageBase(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestCloudItem) {
            RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
            SyncLog.d(getTag(), "copy image start: %s", requestCloudItem.dbCloud.getFileName());
            this.mAlbumId = getAlbumId(requestCloudItem);
            if (TextUtils.isEmpty(this.mAlbumId)) {
                DBImage image = requestCloudItem.dbCloud;
                SyncLog.e(getTag(), "copy image but albumId can't find id[%s], localGroupId[%s]", image.getId(), image.getLocalGroupId());
                DBImage album = CloudUtils.getItem(requestCloudItem.dbCloud.getBaseUri(), this.mContext, "_id", image.getLocalGroupId());
                Map<String, String> params = new HashMap();
                StringBuilder builder = new StringBuilder();
                builder.append(GalleryCloudUtils.getAccountName());
                if (album != null) {
                    builder.append("_").append(album.getFileName()).append("_").append(album.getLocalFlag());
                }
                params.put("album", builder.toString());
                params.put(nexExportFormat.TAG_FORMAT_PATH, image.getLocalFile());
                params.put("localFlag", String.valueOf(image.getLocalFlag()));
                BaseSamplingStatHelper.recordErrorEvent("Sync", "album_not_find_when_sync_media", params);
                return GallerySyncResult.NotRetryError;
            }
            requestCloudItem.dbCloud.setRequestAlbumId(this.mAlbumId);
            if (getSpaceFullListener().isSpaceFull(requestCloudItem)) {
                return GallerySyncResult.NotRetryError;
            }
            return super.onPreRequest(requestItem);
        }
        SyncLog.e(getTag(), "item is not instanceof RequestCloudItem.");
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        String requestId = null;
        boolean isShared = false;
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        if (requestCloudItem.dbCloud.getLocalFlag() == 6) {
            requestId = CloudUtils.getServerIdByLocalId(this.mContext, requestCloudItem.dbCloud.getLocalImageId(), requestCloudItem);
        } else if (requestCloudItem.dbCloud.getLocalFlag() == 9) {
            isShared = true;
            requestId = CloudUtils.getShareIdByLocalId(this.mContext, requestCloudItem.dbCloud.getLocalImageId());
        }
        String copyImageUrl = getUrl(CloudUrlProvider.getUrlProvider(isShared, requestCloudItem.dbCloud.isVideoType()), account.name, requestId, isShared, requestCloudItem);
        String serverTag = String.valueOf(requestCloudItem.dbCloud.getServerTag());
        if (TextUtils.isEmpty(requestId) || TextUtils.isEmpty(serverTag)) {
            return null;
        }
        JSONObject postData = new JSONObject().put("content", requestCloudItem.dbCloud.toJSONObject());
        ArrayList<NameValuePair> parameters = new ArrayList();
        parameters.add(new BasicNameValuePair(nexExportFormat.TAG_FORMAT_TAG, String.valueOf(requestCloudItem.dbCloud.getServerTag())));
        parameters.add(new BasicNameValuePair(getAlbumIdTagName(), this.mAlbumId));
        if (isShared) {
            parameters.add(new BasicNameValuePair("sharedGalleryId", requestId));
        }
        return new Builder().setMethod(2).setUrl(copyImageUrl).setParams(parameters).setPostData(postData).setRetryTimes(requestCloudItem.createRetryTimes).setNeedReRequest(requestCloudItem.needReRequest).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.createRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        JSONObject contentCopyedJson = data.optJSONObject("content");
        if (contentCopyedJson == null) {
            SyncLog.e(getTag(), "response content null");
            return;
        }
        ContentValues values = CloudUtils.getContentValuesForAll(contentCopyedJson, isToShare());
        appendValues(values);
        if (CloudUtils.getItem(getBaseUri(), this.mContext, "serverId", values.getAsString("serverId")) != null) {
            GalleryUtils.safeDelete(getBaseUri(), "_id = ?", new String[]{requestCloudItem.dbCloud.getId()});
            SyncLog.e(getTag(), "item has already exist.");
            return;
        }
        CloudUtils.renameItemIfNeeded(requestCloudItem.dbCloud, values, true);
        CloudUtils.updateToLocalDBForSync(getBaseUri(), values, requestCloudItem.dbCloud);
        handleSubUbiSchema(contentCopyedJson, requestCloudItem.dbCloud.getId());
        SyncLog.d(getTag(), "Copy image succeed and end:" + requestCloudItem.dbCloud.getFileName());
    }

    protected void appendValues(ContentValues values) {
    }
}

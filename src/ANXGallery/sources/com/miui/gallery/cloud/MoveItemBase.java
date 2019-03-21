package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.CloudUtils.SecretAlbumUtils;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.cloud.SpaceFullHandler.SpaceFullListener;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.SyncLog;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class MoveItemBase extends RequestOperationBase {
    protected String mAlbumId;

    protected abstract void appendAlbumIdParameter(ArrayList<NameValuePair> arrayList) throws IllegalBlockSizeException, BadPaddingException, UnsupportedEncodingException;

    protected abstract void appendValues(ContentValues contentValues);

    protected abstract String getAlbumId(RequestCloudItem requestCloudItem);

    protected abstract SpaceFullListener getSpaceFullListener();

    protected abstract String getUrl(CloudUrlProvider cloudUrlProvider, String str, String str2, RequestCloudItem requestCloudItem);

    protected abstract void handleSubUbiSchema(JSONObject jSONObject, String str) throws JSONException;

    protected abstract boolean isToShare();

    public MoveItemBase(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestCloudItem) {
            return GallerySyncResult.Ok;
        }
        SyncLog.e(getTag(), "item is not instanceof RequestCloudItem.");
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws BadPaddingException, IllegalBlockSizeException, UnsupportedEncodingException, JSONException {
        String serverId;
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        DBImage dbImage = requestCloudItem.dbCloud;
        if (TextUtils.isEmpty(dbImage.getLocalImageId())) {
            serverId = dbImage.getServerId();
        } else {
            serverId = CloudUtils.getServerIdByLocalId(this.mContext, dbImage.getLocalImageId(), requestCloudItem);
        }
        this.mAlbumId = getAlbumId(requestCloudItem);
        requestCloudItem.dbCloud.setRequestAlbumId(this.mAlbumId);
        if (TextUtils.isEmpty(serverId) || TextUtils.isEmpty(this.mAlbumId)) {
            return null;
        }
        ArrayList<NameValuePair> parameters = new ArrayList();
        appendAlbumIdParameter(parameters);
        String moveImageUrl = getUrl(CloudUrlProvider.getUrlProvider(requestCloudItem.dbCloud.isShareItem(), requestCloudItem.dbCloud.isVideoType()), account.name, serverId, requestCloudItem);
        if (moveImageUrl == null) {
            return null;
        }
        return new Builder().setMethod(2).setUrl(moveImageUrl).setParams(parameters).setPostData(new JSONObject().put("content", dbImage.toJSONObject())).setRetryTimes(requestCloudItem.createRetryTimes).setNeedReRequest(requestCloudItem.needReRequest).build();
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        ContentValues targetImageValues = null;
        DBImage dbImage = ((RequestCloudItem) requestItem).dbCloud;
        if (data.has("content")) {
            JSONObject contentMovedJson = data.getJSONObject("content");
            targetImageValues = CloudUtils.getContentValuesForAll(contentMovedJson);
            appendValues(targetImageValues);
            CloudUtils.updateToLocalDBForSync(GalleryCloudUtils.CLOUD_URI, targetImageValues, dbImage);
            handleSubUbiSchema(contentMovedJson, dbImage.getId());
        } else if (data.has("purgeContent") && data.has("copyContent")) {
            CloudUtils.updateToLocalDBForSync(GalleryCloudUtils.CLOUD_URI, CloudUtils.getContentValuesForAll(data.getJSONObject("purgeContent")), dbImage.getLocalImageId());
            JSONObject copyContentJson = data.getJSONObject("copyContent");
            targetImageValues = CloudUtils.getContentValuesForAll(copyContentJson, isToShare());
            appendValues(targetImageValues);
            CloudUtils.updateToLocalDBForSync(dbImage.getBaseUri(), targetImageValues, dbImage);
            handleSubUbiSchema(copyContentJson, dbImage.getId());
        }
        CloudUtils.renameItemIfNeeded(dbImage, targetImageValues, !dbImage.isSecretItem());
        if (dbImage.isSecretItem()) {
            ContentValues values = new ContentValues();
            SecretAlbumUtils.encodeFiles(dbImage, values);
            if (values.size() > 0) {
                CloudUtils.updateToLocalDB(dbImage.getBaseUri(), values, dbImage);
            }
        }
        SyncLog.d(getTag(), "Move image %s success, group: %s", dbImage.getFileName(), Long.valueOf(dbImage.getGroupId()));
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.createRetryTimes++;
        }
    }
}

package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.HostManager.OwnerAlbum;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import org.json.JSONObject;

public class RenameCloudItem extends RequestOperationBase {
    public RenameCloudItem(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (!(requestItem instanceof RequestCloudItem)) {
            SyncLog.e(getTag(), "item is not instanceof RequestCloudItem.");
            return GallerySyncResult.NotRetryError;
        } else if (!((RequestCloudItem) requestItem).dbCloud.isShareItem()) {
            return super.onPreRequest(requestItem);
        } else {
            SyncLog.e(getTag(), "can't rename share group.");
            return GallerySyncResult.NotRetryError;
        }
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        String renameGroupUrl = OwnerAlbum.getRenameAlbumUrl(requestCloudItem.dbCloud.getServerId());
        if (ApplicationHelper.isAutoUploadFeatureOpen()) {
            renameGroupUrl = renameGroupUrl + "/rename";
        }
        return new Builder().setMethod(2).setUrl(renameGroupUrl).setPostData(new JSONObject().put("content", requestCloudItem.dbCloud.toJSONObject())).setRetryTimes(requestCloudItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
        ContentValues values = CloudUtils.getContentValuesForAll(data);
        CloudUtils.reviseAttributes(values, requestCloudItem.dbCloud);
        CloudUtils.updateToLocalDBForSync(GalleryCloudUtils.CLOUD_URI, values, requestCloudItem.dbCloud);
        SyncLog.d(getTag(), "rename group success: %s", requestCloudItem.dbCloud.getFileName());
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.otherRetryTimes++;
        }
    }
}

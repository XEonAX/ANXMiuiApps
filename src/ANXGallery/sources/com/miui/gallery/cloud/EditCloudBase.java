package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.Utils;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class EditCloudBase extends RequestOperationBase {
    protected abstract Request buildRequest(Account account, RequestCloudItem requestCloudItem) throws Exception;

    protected abstract int getColumnIndex();

    public EditCloudBase(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestCloudItem) {
            DBImage dbImage = ((RequestCloudItem) requestItem).dbCloud;
            if (dbImage.getLocalFlag() != 0 || TextUtils.isEmpty(dbImage.getRequestId())) {
                SyncLog.d("EditCloudBase", "item has not been synced yet");
                return GallerySyncResult.NotRetryError;
            } else if (!dbImage.isShareItem()) {
                return super.onPreRequest(requestItem);
            } else {
                SyncLog.e("EditCloudBase", "share item can't be edit");
                return GallerySyncResult.NotRetryError;
            }
        }
        SyncLog.e("EditCloudBase", "item is not instanceof RequestCloudItem.");
        return GallerySyncResult.NotRetryError;
    }

    protected final Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        return buildRequest(account, (RequestCloudItem) requestItem);
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        DBImage dbImage = ((RequestCloudItem) requestItem).dbCloud;
        updateDb(CloudUtils.getContentValuesForAll(data), CloudUtils.getItemByServerID(this.mContext, dbImage.getServerId()));
        SyncLog.d("EditCloudBase", "edit success %s" + dbImage.getFileName());
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.otherRetryTimes++;
        }
    }

    protected void updateDb(ContentValues values, DBImage upToDateDbImage) throws JSONException {
        values.put("editedColumns", Utils.ensureNotNull(upToDateDbImage.getEditedColumns()).replace(GalleryCloudUtils.transformToEditedColumnsElement(getColumnIndex()), ""));
        CloudUtils.updateToLocalDB(GalleryCloudUtils.CLOUD_URI, values, upToDateDbImage);
    }
}

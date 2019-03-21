package com.miui.gallery.cloud.peopleface.syncoperation;

import android.accounts.Account;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.HostManager.PeopleFace;
import com.miui.gallery.cloud.RequestItemBase;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.cloud.peopleface.FaceAlbumUtil;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.cloud.peopleface.RequestFaceItem;
import com.miui.gallery.util.SyncLog;
import org.json.JSONException;
import org.json.JSONObject;

public class IgnorePeopleOperation extends FaceRequestOperationBase {
    public IgnorePeopleOperation(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (!(requestItem instanceof RequestFaceItem)) {
            return GallerySyncResult.NotRetryError;
        }
        RequestFaceItem requestFaceItem = (RequestFaceItem) requestItem;
        if (!TextUtils.isEmpty(requestFaceItem.face.serverId)) {
            return super.onPreRequest(requestItem);
        }
        try {
            CloudUtils.updateToLocalDBForSync(FaceDataManager.PEOPLE_FACE_URI, null, requestFaceItem.face._id);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        return new Builder().setUrl(PeopleFace.getPeopleIgnoreUrl(((RequestFaceItem) requestItem).face.serverId)).setMethod(2).setRetryTimes(requestItem.createRetryTimes).setNeedReRequest(requestItem.needReRequest).build();
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        RequestFaceItem requestCloudItem = (RequestFaceItem) requestItem;
        JSONObject ignoreJson = data.optJSONObject("record");
        if (ignoreJson == null) {
            SyncLog.e(getTag(), "response record null");
            return;
        }
        CloudUtils.updateToLocalDBForSync(FaceDataManager.PEOPLE_FACE_URI, FaceAlbumUtil.getContentValuesForPeopleFace(ignoreJson), requestCloudItem.face._id);
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.createRetryTimes++;
        }
    }
}

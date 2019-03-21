package com.miui.gallery.cloud.peopleface.syncoperation;

import android.accounts.Account;
import android.content.ContentValues;
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
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public class RecoveryPeopleOperation extends FaceRequestOperationBase {
    public RecoveryPeopleOperation(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestFaceItem) {
            return super.onPreRequest(requestItem);
        }
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        RequestFaceItem requestCloudItem = (RequestFaceItem) requestItem;
        String recoveryGroupUrl = PeopleFace.getPeopleRecoveryUrl(requestCloudItem.face.serverId);
        ArrayList<NameValuePair> parameters = new ArrayList();
        if (!TextUtils.isEmpty(requestCloudItem.face.peopleName)) {
            parameters.add(new BasicNameValuePair("peopleName", requestCloudItem.face.peopleName));
        }
        return new Builder().setMethod(2).setUrl(recoveryGroupUrl).setParams(parameters).setRetryTimes(requestCloudItem.createRetryTimes).setNeedReRequest(requestCloudItem.needReRequest).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.createRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        boolean keepLocalFlag = true;
        JSONObject recoveryJson = data.optJSONObject("record");
        if (recoveryJson == null) {
            SyncLog.e(getTag(), "response record null");
            return;
        }
        RequestFaceItem requestCloudItem = (RequestFaceItem) requestItem;
        ContentValues values = FaceAlbumUtil.getContentValuesForPeopleFace(recoveryJson);
        if (values == null) {
            values = new ContentValues();
        }
        values.put("visibilityType", Integer.valueOf(1));
        if (FaceManager.getPeopleLocalFlagByLocalID(requestCloudItem.face._id) == 14) {
            keepLocalFlag = false;
        }
        CloudUtils.updateToLocalDBForSync(FaceDataManager.PEOPLE_FACE_URI, values, requestCloudItem.face._id, keepLocalFlag);
    }
}

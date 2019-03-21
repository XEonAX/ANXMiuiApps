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
import java.util.ArrayList;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public class RenamePeopleOperation extends FaceRequestOperationBase {
    public RenamePeopleOperation(Context context) {
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
        String renameGroupUrl = PeopleFace.getPeopleRenameUrl(requestCloudItem.face.serverId);
        ArrayList<NameValuePair> parameters = new ArrayList();
        parameters.add(new BasicNameValuePair("peopleName", requestCloudItem.face.peopleName));
        if (!TextUtils.isEmpty(requestCloudItem.face.peopleContactJson)) {
            parameters.add(new BasicNameValuePair("peopleContact", requestCloudItem.face.peopleContactJson));
        }
        return new Builder().setMethod(2).setUrl(renameGroupUrl).setParams(parameters).setRetryTimes(requestCloudItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.otherRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        JSONObject renamedJson = data.optJSONObject("record");
        if (renamedJson == null) {
            SyncLog.e(getTag(), "response record error");
            return;
        }
        RequestFaceItem requestCloudItem = (RequestFaceItem) requestItem;
        CloudUtils.updateToLocalDBForSync(FaceDataManager.PEOPLE_FACE_URI, FaceAlbumUtil.getContentValuesForPeopleFace(renamedJson), requestCloudItem.face._id);
    }
}

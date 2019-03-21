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
import java.util.ArrayList;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public class CreatePeopleOperation extends FaceRequestOperationBase {
    public CreatePeopleOperation(Context context) {
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
        String createGroupUrl = PeopleFace.getPeopleCreateUrl();
        ArrayList<NameValuePair> parameters = new ArrayList();
        parameters.add(new BasicNameValuePair("peopleName", requestCloudItem.face.peopleName));
        if (!TextUtils.isEmpty(requestCloudItem.face.peopleContactJson)) {
            parameters.add(new BasicNameValuePair("peopleContact", requestCloudItem.face.peopleContactJson));
        }
        return new Builder().setMethod(2).setUrl(createGroupUrl).setParams(parameters).setRetryTimes(requestCloudItem.createRetryTimes).setNeedReRequest(requestCloudItem.needReRequest).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.createRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        RequestFaceItem requestCloudItem = (RequestFaceItem) requestItem;
        CloudUtils.updateToLocalDBForSync(FaceDataManager.PEOPLE_FACE_URI, FaceAlbumUtil.getContentValuesForPeopleFace(data.optJSONObject("record")), requestCloudItem.face._id);
    }
}

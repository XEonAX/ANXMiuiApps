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
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONObject;

public class MoveFaceOperation extends FaceRequestOperationBase {
    public MoveFaceOperation(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        ArrayList<RequestItemBase> multiRequestItems = requestItem.getItems();
        if (multiRequestItems == null || multiRequestItems.isEmpty()) {
            SyncLog.e("MoveFaceOperation", "multiRequest items is null.");
            return GallerySyncResult.NotRetryError;
        } else if (multiRequestItems.get(0) instanceof RequestFaceItem) {
            return super.onPreRequest(requestItem);
        } else {
            return GallerySyncResult.NotRetryError;
        }
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        ArrayList<RequestItemBase> multiRequestItems = requestItem.getItems();
        StringBuilder ids = new StringBuilder();
        Iterator it = multiRequestItems.iterator();
        while (it.hasNext()) {
            RequestFaceItem cloudItem = (RequestFaceItem) ((RequestItemBase) it.next());
            if (ids.length() > 0) {
                ids.append(",");
            }
            ids.append(cloudItem.face.serverId);
        }
        String peopleId = getPeopleId((RequestFaceItem) multiRequestItems.get(0));
        if (TextUtils.isEmpty(peopleId)) {
            SyncLog.e(getTag(), "people id is empty");
            return null;
        }
        ArrayList<NameValuePair> parameters = new ArrayList();
        parameters.add(new BasicNameValuePair("destPeopleId", peopleId));
        parameters.add(new BasicNameValuePair("faceIds", ids.toString()));
        return new Builder().setMethod(2).setUrl(PeopleFace.getFaceMoveUrl()).setParams(parameters).setRetryTimes(requestItem.createRetryTimes).setNeedReRequest(requestItem.needReRequest).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.createRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        JSONArray contentMovedJson = data.optJSONArray("successResults");
        if (contentMovedJson == null) {
            SyncLog.e(getTag(), "success result null");
            return;
        }
        for (int i = 0; i < contentMovedJson.length(); i++) {
            ContentValues values = FaceAlbumUtil.getContentValuesForPeopleFace(contentMovedJson.getJSONObject(i).getJSONObject("record"));
            CloudUtils.updateToPeopleFaceDBForSync(FaceDataManager.PEOPLE_FACE_URI, values, values.getAsString("serverId"));
        }
    }

    protected String getPeopleId(RequestFaceItem requestItem) {
        return CloudUtils.getStringColumnValue(this.mContext, FaceDataManager.PEOPLE_FACE_URI, "serverId", "_id", requestItem.face.localGroupId);
    }

    public int getLimitCountForOperation() {
        return 10;
    }
}

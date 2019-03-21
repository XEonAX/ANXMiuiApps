package com.miui.gallery.cloud.peopleface.syncoperation;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
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
import org.json.JSONObject;

public class DeleteFaceOperation extends FaceRequestOperationBase {
    public DeleteFaceOperation(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestFaceItem) {
            return super.onPreRequest(requestItem);
        }
        SyncLog.e("DeleteFaceOperation", "item is not instanceof RequestFaceItem.");
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        return new Builder().setUrl(PeopleFace.getFaceDeleteUrl(((RequestFaceItem) requestItem).face.serverId)).setMethod(2).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok && result != GallerySyncResult.AlbumNotExist) {
            requestItem.otherRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        JSONObject content = data.optJSONObject("record");
        if (content == null) {
            SyncLog.e(getTag(), "response record null");
            return;
        }
        RequestFaceItem requestFaceItem = (RequestFaceItem) requestItem;
        ContentValues values = FaceAlbumUtil.getContentValuesForPeopleFace(content);
        CloudUtils.updateToPeopleFaceDBForDeleteItem(FaceDataManager.PEOPLE_FACE_URI, values, values.getAsString("serverId"));
    }
}

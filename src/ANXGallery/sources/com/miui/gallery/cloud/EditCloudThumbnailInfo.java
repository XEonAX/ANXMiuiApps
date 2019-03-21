package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.SyncLog;
import org.json.JSONException;
import org.json.JSONObject;

public class EditCloudThumbnailInfo extends EditCloudBase {
    public EditCloudThumbnailInfo(Context context) {
        super(context);
    }

    protected Request buildRequest(Account account, RequestCloudItem requestItem) throws Exception {
        DBImage upToDateDbImage = CloudUtils.getItemByServerID(this.mContext, requestItem.dbCloud.getServerId());
        String updateBabyInfoUrl = CloudGroupUrlProvider.getUrlProvider(false).getEditGroupUrl(account.name, upToDateDbImage.getServerId());
        ThumbnailInfo thumbnailInfo = ((DBCloud) upToDateDbImage).getThumbnailInfo();
        JSONObject thumbnailInfoJson = upToDateDbImage.toJSONObject();
        if (thumbnailInfo != null) {
            long bgImageLocalId = thumbnailInfo.getBgImageLocalId();
            String faceId = thumbnailInfo.getFaceId();
            if (bgImageLocalId != -1) {
                DBImage bgItem = CloudUtils.getItem(GalleryCloudUtils.CLOUD_URI, this.mContext, "_id", String.valueOf(bgImageLocalId));
                if (bgItem != null) {
                    if (bgItem.getLocalFlag() == 0) {
                        String bgImageId = bgItem.getServerId();
                        if (!TextUtils.isEmpty(bgImageId)) {
                            thumbnailInfoJson.put("backgroundImageId", bgImageId);
                        }
                    } else {
                        SyncLog.w(getTag(), "bg image not synced!");
                        return null;
                    }
                }
            }
            if (!TextUtils.isEmpty(faceId)) {
                thumbnailInfoJson.put("faceId", faceId);
            }
        }
        return new Builder().setUrl(updateBabyInfoUrl).setMethod(2).setPostData(new JSONObject().put("content", thumbnailInfoJson)).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(false).build();
    }

    protected void updateDb(ContentValues values, DBImage upToDateDbImage) throws JSONException {
        ThumbnailInfo thumbnailInfo = ((DBCloud) upToDateDbImage).getThumbnailInfo();
        if (thumbnailInfo != null) {
            long bgImageLocalId = thumbnailInfo.getBgImageLocalId();
            if (bgImageLocalId != -1) {
                CloudUtils.deleteItemInHiddenAlbum(bgImageLocalId);
            }
        }
        values.putNull("thumbnailInfo");
        super.updateDb(values, upToDateDbImage);
    }

    protected int getColumnIndex() {
        return 66;
    }
}

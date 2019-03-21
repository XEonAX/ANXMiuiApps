package com.miui.gallery.cloud.baby;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.cloud.GalleryExtendedAuthToken;
import com.miui.gallery.cloud.HostManager.Baby;
import com.miui.gallery.cloud.RequestCloudItem;
import com.miui.gallery.cloud.RequestItemBase;
import com.miui.gallery.cloud.RequestOperationBase;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.cloud.RetryRequest;
import com.miui.gallery.data.DBCloud;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class SyncBabyInfoFromLocal {
    protected Account mAccount;
    protected Context mContext;
    protected GalleryExtendedAuthToken mExtendedAuthToken;
    private ArrayList<RequestCloudItem> mUpdateBabyInfoItems = new ArrayList();

    private class UpdateBabyInfo extends RequestOperationBase {
        public UpdateBabyInfo(Context context) {
            super(context);
        }

        protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
            if (requestItem instanceof RequestCloudItem) {
                return super.onPreRequest(requestItem);
            }
            return GallerySyncResult.NotRetryError;
        }

        protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
            RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
            String requestId = requestCloudItem.dbCloud.getServerId();
            if (TextUtils.isEmpty(requestId)) {
                return null;
            }
            String updateBabyInfoUrl = Baby.getUpdateBabyInfoUrl(requestId);
            return new Builder().setMethod(2).setUrl(updateBabyInfoUrl).setPostData(new JSONObject().put("content", requestCloudItem.dbCloud.toJSONObject())).setRetryTimes(requestCloudItem.createRetryTimes).setNeedReRequest(requestItem.needReRequest).build();
        }

        protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
            JSONObject contentUpdateJson = data.optJSONObject("content");
            if (contentUpdateJson == null) {
                SyncLog.e(getTag(), "response content null %s", data);
                return;
            }
            RequestCloudItem requestCloudItem = (RequestCloudItem) requestItem;
            ContentValues values = CloudUtils.getContentValuesForAllAndThumbNull(contentUpdateJson);
            synchronized (GalleryCloudUtils.CLOUD_URI) {
                CloudUtils.updateToLocalDBForSync(GalleryCloudUtils.CLOUD_URI, values, requestCloudItem.dbCloud);
            }
        }

        protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
            if (result != GallerySyncResult.Ok) {
                requestItem.createRetryTimes++;
            }
        }
    }

    public SyncBabyInfoFromLocal(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.mExtendedAuthToken = mExtendedAuthToken;
    }

    protected DBImage generateDBImage(Cursor cursor) {
        return new DBCloud(cursor);
    }

    public void sync() throws Exception {
        GalleryUtils.safeQuery(GalleryCloudUtils.CLOUD_URI, CloudUtils.getProjectionAll(), " not( peopleId is null or peopleId = '')  AND  " + CloudUtils.photoLocalFlag_Synced + "  AND " + CloudUtils.itemIsGroup, null, null, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        DBImage cloud = SyncBabyInfoFromLocal.this.generateDBImage(cursor);
                        String babyInfoJson = cloud.getBabyInfoJson();
                        if (!TextUtils.isEmpty(babyInfoJson)) {
                            try {
                                JSONObject json = new JSONObject(babyInfoJson);
                                if (json.has("localFlag") && json.getInt("localFlag") != 0) {
                                    SyncBabyInfoFromLocal.this.mUpdateBabyInfoItems.add(new RequestCloudItem(0, cloud));
                                }
                            } catch (JSONException e) {
                            }
                        }
                    }
                }
                return null;
            }
        });
        if (this.mUpdateBabyInfoItems.size() > 0) {
            try {
                RetryRequest.doUpDownDeleteItemsInBackground(this.mContext, this.mAccount, this.mExtendedAuthToken, this.mUpdateBabyInfoItems, new UpdateBabyInfo(this.mContext));
            } catch (Exception e) {
            }
        }
    }
}

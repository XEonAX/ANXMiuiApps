package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.HostManager.ShareAlbum;
import com.miui.gallery.cloud.RequestOperationBase.Request;
import com.miui.gallery.cloud.RequestOperationBase.Request.Builder;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import java.util.ArrayList;
import java.util.Locale;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public class EditShareAlbum extends RequestOperationBase {
    public EditShareAlbum(Context context) {
        super(context);
    }

    protected GallerySyncResult onPreRequest(RequestItemBase requestItem) {
        if (requestItem instanceof RequestSharerAlbumItem) {
            String editedColumns = ((RequestSharerAlbumItem) requestItem).mDBItem.getEditedColumns();
            if (!TextUtils.isEmpty(editedColumns) && editedColumns.contains(GalleryCloudUtils.transformToEditedColumnsElement(25))) {
                return GallerySyncResult.Ok;
            }
            SyncLog.e("EditShareAlbum", "editedColumns %s not supported!", editedColumns);
            return GallerySyncResult.NotRetryError;
        }
        SyncLog.e("EditShareAlbum", "requestItem not instanceof RequestSharerAlbumItem!");
        return GallerySyncResult.NotRetryError;
    }

    protected Request buildRequest(Account account, RequestItemBase requestItem) throws Exception {
        DBShareAlbum dbItem = ((RequestSharerAlbumItem) requestItem).mDBItem;
        String editUrl = ShareAlbum.getEditAlbumUrl();
        JSONObject babyInfo = new JSONObject(dbItem.getBabyInfoJson());
        ArrayList<NameValuePair> parameters = new ArrayList();
        parameters.add(new BasicNameValuePair("sharedAlbumId", dbItem.getAlbumId()));
        parameters.add(new BasicNameValuePair(BabyAlbumUtils.BABY_AUTO_UPDATE, String.valueOf(babyInfo.getBoolean(BabyAlbumUtils.BABY_AUTO_UPDATE))));
        parameters.add(new BasicNameValuePair(BabyAlbumUtils.BABY_PEOPLE_ID, dbItem.getPeopleId()));
        return new Builder().setMethod(2).setUrl(editUrl).setParams(parameters).setRetryTimes(requestItem.otherRetryTimes).setNeedReRequest(requestItem.needReRequest).build();
    }

    protected void onRequestError(GallerySyncResult result, RequestItemBase requestItem, JSONObject response) throws Exception {
        if (result != GallerySyncResult.Ok) {
            requestItem.otherRetryTimes++;
        }
    }

    protected void onRequestSuccess(RequestItemBase requestItem, JSONObject data) throws Exception {
        DBShareAlbum dbItem = ((RequestSharerAlbumItem) requestItem).mDBItem;
        ContentValues values = new ContentValues();
        values.putNull("editedColumns");
        GalleryUtils.safeUpdate(GalleryCloudUtils.SHARE_ALBUM_URI, values, String.format(Locale.US, "%s=%s", new Object[]{"_id", dbItem.getId()}), null);
        SyncLog.d("EditShareAlbum", "edit share album successfully. album name: %s", dbItem.getFileName());
    }
}

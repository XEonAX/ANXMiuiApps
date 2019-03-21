package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.Upgrade;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deprecated.Preference;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class FetchSyncExtraInfoTask {
    protected Account mAccount;
    protected Context mContext;
    protected GalleryExtendedAuthToken mExtendedAuthToken;

    public FetchSyncExtraInfoTask(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.mExtendedAuthToken = mExtendedAuthToken;
    }

    private ArrayList<SyncTagItem> getCurrentSyncTag() {
        ArrayList<SyncTagItem> syncTagList = new ArrayList();
        syncTagList.add(new SyncTagItem(1));
        syncTagList.add(new SyncTagItem(4));
        syncTagList.add(new SyncTagItem(3));
        syncTagList.add(new SyncTagItem(5));
        syncTagList.add(new SyncTagItem(2));
        return SyncFromServer.getCurrentSyncTag(syncTagList, GalleryCloudSyncTagUtils.getAccountSelections(this.mAccount));
    }

    private String getUrl() {
        return Upgrade.getUpgradeUrl();
    }

    private JSONObject callAPI(ArrayList<SyncTagItem> syncTagList) throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        ArrayList<NameValuePair> params = new ArrayList();
        Iterator it = syncTagList.iterator();
        while (it.hasNext()) {
            SyncTagItem syncTag = (SyncTagItem) it.next();
            if (TextUtils.isEmpty(GalleryCloudSyncTagUtils.getJsonTagInput(syncTag.syncTagType))) {
                SyncLog.e("FetchSyncExtraInfoTask", "get input tag is null, syncType:" + syncTag.syncTagType);
                return null;
            }
            params.add(new BasicNameValuePair(GalleryCloudSyncTagUtils.getJsonTagInput(syncTag.syncTagType), Long.toString(syncTag.currentValue)));
        }
        JSONObject allJson = CloudUtils.getFromXiaomi(getUrl(), params, this.mAccount, this.mExtendedAuthToken, 0, false);
        SyncLog.d("FetchSyncExtraInfoTask", "allJson=" + allJson);
        return allJson;
    }

    private void handleResult(JSONObject result) throws JSONException {
        JSONObject data = result.getJSONObject("data");
        String ownerSyncInfo = data.getString("full");
        String shareSyncInfo = data.getString("share");
        String shareOneAlbumSyncInfo = data.getString("oneshare");
        ContentValues cloudSettingValues = new ContentValues();
        cloudSettingValues.put("syncInfo", ownerSyncInfo);
        cloudSettingValues.put("shareSyncInfo", shareSyncInfo);
        GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_SETTING_URI, cloudSettingValues, GalleryCloudSyncTagUtils.getAccountSelections(this.mAccount), null);
        ContentValues shareAlbumValues = new ContentValues();
        shareAlbumValues.put("syncInfo", shareOneAlbumSyncInfo);
        GalleryUtils.safeUpdate(GalleryCloudUtils.SHARE_ALBUM_URI, shareAlbumValues, null, null);
        Preference.setSyncFetchSyncExtraInfoFromV2ToV3(false);
    }

    public final void run() throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        SyncLog.d("FetchSyncExtraInfoTask", "start");
        long startTime = System.currentTimeMillis();
        GallerySyncResult getAllResult = GallerySyncResult.Ok;
        JSONObject resultJson = null;
        ArrayList<SyncTagItem> syncTagList = getCurrentSyncTag();
        for (int retryTimes = 0; retryTimes < 3; retryTimes++) {
            resultJson = callAPI(syncTagList);
            getAllResult = CheckResult.checkXMResultCode(resultJson, null, null);
            if (getAllResult == GallerySyncResult.Ok || getAllResult != GallerySyncResult.RetryError) {
                break;
            }
        }
        if (getAllResult != GallerySyncResult.Ok) {
            SyncLog.e("FetchSyncExtraInfoTask", "sync from server error:" + resultJson);
        } else {
            handleResult(resultJson);
        }
        SyncLog.d("FetchSyncExtraInfoTask", "finish: " + (System.currentTimeMillis() - startTime));
    }
}

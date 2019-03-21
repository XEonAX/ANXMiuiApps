package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.CheckResult.GallerySyncResult;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.QueryHandler;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deprecated.Preference;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class SyncFromServer {
    protected Account mAccount;
    protected Context mContext;
    protected GalleryExtendedAuthToken mExtendedAuthToken;

    protected abstract Uri getBaseUri();

    protected abstract ArrayList<SyncTagItem> getSyncTagList();

    protected abstract String getSyncTagSelection();

    protected abstract String getSyncUrl();

    protected abstract String getTagColumnName();

    public SyncFromServer(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.mExtendedAuthToken = mExtendedAuthToken;
    }

    protected int getSyncItemLimit() {
        return 100;
    }

    public final boolean sync() throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        SyncLog.d("SyncFromServer", "sync from server start");
        long startTime = System.currentTimeMillis();
        boolean success = true;
        GallerySyncResult getAllResult = GallerySyncResult.Ok;
        JSONObject dataJson;
        ArrayList<SyncTagItem> syncTagList;
        do {
            syncTagList = getCurrentSyncTag();
            if (SyncConditionManager.check(0) != 2) {
                JSONObject resultJson = null;
                for (int retryTimes = 0; retryTimes < 3; retryTimes++) {
                    resultJson = getItemsList(syncTagList, getSyncItemLimit());
                    getAllResult = CheckResult.checkXMResultCode(resultJson, null, null);
                    if (getAllResult == GallerySyncResult.Ok || getAllResult != GallerySyncResult.RetryError) {
                        break;
                    }
                }
                if (getAllResult != GallerySyncResult.ResetSyncTag) {
                    if (getAllResult == GallerySyncResult.Ok) {
                        if (resultJson == null) {
                            break;
                        }
                        dataJson = resultJson.optJSONObject("data");
                        if (dataJson == null || dataJson.length() == 0) {
                            break;
                        }
                    } else {
                        SyncLog.e("SyncFromServer", "sync from server error:" + resultJson);
                        success = false;
                        break;
                    }
                }
                SyncLog.e("SyncFromServer", "sync from server error " + GallerySyncResult.ResetSyncTag + ", need clear data");
                Preference.setSyncShouldClearDataBase(true);
                success = false;
                break;
            }
            return false;
        } while (handleResultAndShouldContinue(dataJson, syncTagList));
        SyncLog.d("SyncFromServer", "sync from server finish: " + (System.currentTimeMillis() - startTime));
        if (success) {
            onSyncSuccess();
        } else {
            Map<String, String> params = new HashMap();
            params.put("className", getClass().getSimpleName());
            params.put("result", getAllResult.name());
            BaseSamplingStatHelper.recordErrorEvent("Sync", "sync_error_class", params);
        }
        return success;
    }

    protected void onSyncSuccess() {
    }

    protected boolean handleResultAndShouldContinue(JSONObject dataJson, ArrayList<SyncTagItem> syncTagList) throws JSONException, ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, URISyntaxException, GalleryMiCloudServerException {
        handleDataJson(dataJson);
        updateSyncInfo(dataJson, (ArrayList) syncTagList);
        return updateSyncTagAndShouldContinue(dataJson, syncTagList);
    }

    protected boolean updateSyncTagAndShouldContinue(JSONObject dataJson, ArrayList<SyncTagItem> syncTagList) throws JSONException {
        boolean lastPage = dataJson.getBoolean("lastPage");
        long serverTag = CloudUtils.getLongAttributeFromJson(dataJson, "syncTag");
        long toUpdateSyncTag = 0;
        if (lastPage) {
            long localTag = getLargestTagInLocalDB();
            if (serverTag > ((long) GalleryCloudSyncTagUtils.getInitSyncTagValue(((SyncTagItem) syncTagList.get(0)).syncTagType)) || localTag > ((long) GalleryCloudSyncTagUtils.getInitSyncTagValue(((SyncTagItem) syncTagList.get(0)).syncTagType))) {
                toUpdateSyncTag = Math.max(serverTag, localTag);
            }
        } else {
            toUpdateSyncTag = serverTag;
        }
        if (toUpdateSyncTag > ((SyncTagItem) syncTagList.get(0)).currentValue) {
            SyncLog.d("SyncFromServer", "update the syncTag:" + toUpdateSyncTag);
            ((SyncTagItem) syncTagList.get(0)).serverValue = toUpdateSyncTag;
            updateSyncTag((ArrayList) syncTagList);
        }
        if (!lastPage) {
            return true;
        }
        SyncLog.d("SyncFromServer", "last page, break sync from server");
        return false;
    }

    public static ArrayList<SyncTagItem> getCurrentSyncTag(final ArrayList<SyncTagItem> syncTagList, String selection) {
        GalleryUtils.safeQuery(CloudUtils.getLimitUri(GalleryCloudSyncTagUtils.getUri(((SyncTagItem) syncTagList.get(0)).syncTagType), 1), GalleryCloudSyncTagUtils.getSyncTagSelection(syncTagList), selection, null, null, new QueryHandler<Void>() {
            public Void handle(Cursor cursor) {
                if (cursor == null || !cursor.moveToNext()) {
                    Iterator it = syncTagList.iterator();
                    while (it.hasNext()) {
                        SyncTagItem syncTag = (SyncTagItem) it.next();
                        syncTag.currentValue = (long) GalleryCloudSyncTagUtils.getInitSyncTagValue(syncTag.syncTagType);
                    }
                } else {
                    for (int i = 0; i < syncTagList.size(); i++) {
                        SyncTagItem syncTagItem = (SyncTagItem) syncTagList.get(i);
                        syncTagItem.currentValue = Math.max(cursor.getLong(i), (long) GalleryCloudSyncTagUtils.getInitSyncTagValue(((SyncTagItem) syncTagList.get(i)).syncTagType));
                    }
                }
                return null;
            }
        });
        return syncTagList;
    }

    protected ArrayList<SyncTagItem> getCurrentSyncTag() {
        return getCurrentSyncTag(getSyncTagList(), getSyncTagSelection());
    }

    protected void updateSyncTag(ArrayList<SyncTagItem> syncTagList) {
        Uri uri = GalleryCloudSyncTagUtils.getUri(((SyncTagItem) syncTagList.get(0)).syncTagType);
        ContentValues values = new ContentValues();
        Iterator it = syncTagList.iterator();
        while (it.hasNext()) {
            SyncTagItem tag = (SyncTagItem) it.next();
            values.put(GalleryCloudSyncTagUtils.getColumnName(tag.syncTagType), Long.valueOf(tag.serverValue));
        }
        GalleryUtils.safeUpdate(uri, values, getSyncTagSelection(), null);
        GalleryCloudSyncTagUtils.postUpdateSyncTag(this.mContext, values);
    }

    public void updateSyncTag(SyncTagItem syncTag) {
        ArrayList syncTagList = new ArrayList();
        syncTagList.add(syncTag);
        updateSyncTag(syncTagList);
    }

    protected boolean supportSyncInfo(ArrayList<SyncTagItem> syncTagList) {
        if (GalleryCloudSyncTagUtils.hasSyncInfo(((SyncTagItem) syncTagList.get(0)).syncTagType)) {
            return true;
        }
        return false;
    }

    protected void appendSyncInfo(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> syncTagList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        if (supportSyncInfo(syncTagList)) {
            String syncInfo = (String) GalleryUtils.safeQuery(CloudUtils.getLimitUri(GalleryCloudSyncTagUtils.getUri(((SyncTagItem) syncTagList.get(0)).syncTagType), 1), new String[]{GalleryCloudSyncTagUtils.getSyncInfoColumnName(syncTagItem.syncTagType)}, getSyncTagSelection(), null, null, new QueryHandler<String>() {
                public String handle(Cursor cursor) {
                    if (cursor != null && cursor.moveToNext()) {
                        return cursor.getString(0);
                    }
                    return null;
                }
            });
            if (syncInfo == null) {
                syncInfo = "";
            }
            params.add(new BasicNameValuePair("syncExtraInfo", syncInfo));
        }
    }

    protected void updateSyncInfo(String syncInfo, ArrayList<SyncTagItem> syncTagList) {
        SyncTagItem syncTagItems = (SyncTagItem) syncTagList.get(0);
        Uri uri = GalleryCloudSyncTagUtils.getUri(syncTagItems.syncTagType);
        String syncInfoColumnName = GalleryCloudSyncTagUtils.getSyncInfoColumnName(syncTagItems.syncTagType);
        ContentValues values = new ContentValues();
        values.put(syncInfoColumnName, syncInfo);
        GalleryUtils.safeUpdate(uri, values, getSyncTagSelection(), null);
        GalleryCloudSyncTagUtils.postUpdateSyncTag(this.mContext, values);
    }

    protected void updateSyncInfo(JSONObject dataJson, ArrayList<SyncTagItem> syncTagList) {
        String syncInfo = dataJson.optString("syncExtraInfo");
        if (!TextUtils.isEmpty(syncInfo) && supportSyncInfo(syncTagList)) {
            updateSyncInfo(syncInfo, (ArrayList) syncTagList);
        }
    }

    protected boolean handleDataJson(JSONObject dataJson) throws JSONException {
        return false;
    }

    protected final long getLargestTagInLocalDB() {
        Cursor cursor = null;
        try {
            cursor = this.mContext.getContentResolver().query(getBaseUri(), new String[]{" Max( " + getTagColumnName() + " ) "}, null, null, null);
            long initSyncTagValue;
            if (cursor == null || !cursor.moveToNext()) {
                initSyncTagValue = (long) GalleryCloudSyncTagUtils.getInitSyncTagValue(((SyncTagItem) getSyncTagList().get(0)).syncTagType);
                if (cursor != null) {
                    cursor.close();
                }
                return initSyncTagValue;
            }
            initSyncTagValue = cursor.getLong(0);
            return initSyncTagValue;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    protected void appendParams(ArrayList<NameValuePair> arrayList, ArrayList<SyncTagItem> arrayList2) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
    }

    private final JSONObject getItemsList(ArrayList<SyncTagItem> syncTagList, int limit) throws ClientProtocolException, IOException, JSONException, URISyntaxException, IllegalBlockSizeException, BadPaddingException, GalleryMiCloudServerException {
        ArrayList<NameValuePair> params = new ArrayList();
        if (syncTagList != null) {
            Iterator it = syncTagList.iterator();
            while (it.hasNext()) {
                SyncTagItem syncTag = (SyncTagItem) it.next();
                if (syncTag.shouldSync) {
                    if (TextUtils.isEmpty(GalleryCloudSyncTagUtils.getJsonTagInput(syncTag.syncTagType))) {
                        SyncLog.e("SyncFromServer", "get input tag is null, syncType:" + syncTag.syncTagType);
                        return null;
                    }
                    params.add(new BasicNameValuePair(GalleryCloudSyncTagUtils.getJsonTagInput(syncTag.syncTagType), Long.toString(syncTag.currentValue)));
                }
            }
            appendSyncInfo(params, syncTagList);
        }
        appendParams(params, syncTagList);
        if (limit > 0) {
            params.add(new BasicNameValuePair("limit", Long.toString((long) limit)));
        }
        return CloudUtils.getFromXiaomi(getSyncUrl(), params, this.mAccount, this.mExtendedAuthToken, 0, false);
    }
}

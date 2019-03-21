package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import com.miui.gallery.cloud.CloudUtils.Insertable;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.SyncPull;
import com.miui.gallery.data.DBImage;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.SyncLog;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SyncOwnerAlbum extends SyncFromServer {
    private long mSyncId;

    public SyncOwnerAlbum(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        super(mContext, mAccount, mExtendedAuthToken);
        initSyncId();
        Log.d("SyncSystemAlbum", "init syncId %d", Long.valueOf(this.mSyncId));
    }

    private void initSyncId() {
        if (Sync.getEverSyncedSystemAlbum()) {
            this.mSyncId = ((Long) SafeDBUtil.safeQuery(this.mContext, getBaseUri(), new String[]{"max(serverId)"}, String.format(Locale.US, "%s AND (%s=%d AND %s='%s')", new Object[]{"(serverType=0)", "localFlag", Integer.valueOf(0), "serverStatus", "custom"}), null, null, new QueryHandler<Long>() {
                public Long handle(Cursor cursor) {
                    if (cursor == null || !cursor.moveToFirst()) {
                        return Long.valueOf(0);
                    }
                    return Long.valueOf(cursor.getLong(0));
                }
            })).longValue();
            return;
        }
        this.mSyncId = 0;
    }

    protected ArrayList<SyncTagItem> getCurrentSyncTag() {
        return null;
    }

    protected ArrayList<SyncTagItem> getSyncTagList() {
        return null;
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.CLOUD_URI;
    }

    protected String getTagColumnName() {
        return null;
    }

    protected String getSyncUrl() {
        return SyncPull.getPullOwnerAlbumUrl();
    }

    protected String getSyncTagSelection() {
        return null;
    }

    protected void appendParams(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> arrayList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        params.add(new BasicNameValuePair("syncId", String.valueOf(this.mSyncId)));
    }

    protected boolean handleResultAndShouldContinue(JSONObject dataJson, ArrayList<SyncTagItem> arrayList) throws JSONException, ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, URISyntaxException, GalleryMiCloudServerException {
        JSONArray albumJSONArray = dataJson.optJSONArray("albums");
        if (albumJSONArray == null) {
            SyncLog.e("SyncSystemAlbum", "response content null");
            return false;
        }
        for (int i = 0; i < albumJSONArray.length(); i++) {
            JSONObject albumJson = albumJSONArray.getJSONObject(i);
            long serverId = CloudUtils.getLongAttributeFromJson(albumJson, "albumId");
            ContentValues values = CloudUtils.getContentValuesForOwnerAlbum(albumJson);
            DBImage dbImage = CloudUtils.getItemByServerID(this.mContext, String.valueOf(serverId));
            boolean isSystemAlbum = CloudUtils.isUmodifyAlbum(String.valueOf(serverId));
            if (dbImage == null && isSystemAlbum) {
                CloudUtils.addRecordsForCameraAndScreenshots(new Insertable() {
                    public long insert(Uri uri, String table, String nullColumnHack, ContentValues values) {
                        return GalleryUtils.safeInsert(uri, values) == null ? 0 : 1;
                    }
                });
                dbImage = CloudUtils.getItemByServerID(this.mContext, String.valueOf(serverId));
                Map<String, String> params = new HashMap();
                params.put("groupId", String.valueOf(serverId));
                params.put("model", Build.MODEL);
                params.put("version", VERSION.INCREMENTAL);
                BaseSamplingStatHelper.recordCountEvent("Sync", "system_album_record_not_found", params);
            }
            if (isSystemAlbum) {
                if (!(dbImage == null || dbImage.getLocalFlag() != 0 || Sync.getEverSyncedSystemAlbum())) {
                    CloudUtils.updateToLocalDBByServerId(getBaseUri(), values, String.valueOf(serverId));
                    ContentValues updateValues = new ContentValues();
                    updateValues.put("localGroupId", dbImage.getId());
                    SafeDBUtil.safeUpdate(this.mContext, getBaseUri(), updateValues, String.format(Locale.US, "%s=%s AND (%s!=%s) AND (%s=%d OR %s=%d)", new Object[]{"groupId", Long.valueOf(serverId), "localGroupId", dbImage.getId(), "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2)}), null);
                }
            } else if (!CloudTableUtils.isGroupWithoutRecord(serverId) && dbImage == null) {
                SyncCloudBase.handleNewGroup(this.mContext, getBaseUri(), values, String.valueOf(serverId));
            }
        }
        if (!Sync.getEverSyncedSystemAlbum()) {
            SafeDBUtil.safeDelete(this.mContext, getBaseUri(), String.format(Locale.US, "%s=-1 AND (%s=%d OR %s=%d) AND (%s=%d OR %s=%d)", new Object[]{"localGroupId", "localFlag", Integer.valueOf(7), "localFlag", Integer.valueOf(8), "serverType", Integer.valueOf(1), "serverType", Integer.valueOf(2)}), null);
        }
        Sync.setEverSyncedSystemAlbum();
        this.mSyncId = CloudUtils.getLongAttributeFromJson(dataJson, "syncAlbumId");
        return !dataJson.getBoolean("lastPage");
    }
}

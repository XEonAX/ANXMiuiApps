package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.SyncPull;
import com.miui.gallery.cloud.baby.BabyAlbumUtils;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Locale;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public final class SyncSharerUserForAlbum extends SyncUserBase {
    public SyncSharerUserForAlbum(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken, String shareId) {
        super(mContext, mAccount, mExtendedAuthToken, shareId);
    }

    protected Uri getBaseUri() {
        return GalleryCloudUtils.SHARE_USER_URI;
    }

    protected String getTagColumnName() {
        return "serverTag";
    }

    protected ArrayList<SyncTagItem> getSyncTagList() {
        ArrayList<SyncTagItem> syncTagList = new ArrayList();
        syncTagList.add(new SyncTagItem(9));
        return syncTagList;
    }

    protected String getSyncUrl() {
        return SyncPull.getPullShareUserUrl();
    }

    protected void appendParams(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> syncTagList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        super.appendParams(params, syncTagList);
        params.add(new BasicNameValuePair("sharedAlbumId", this.mAlbumId));
    }

    protected void updateSyncTag(ArrayList<SyncTagItem> syncTagList) {
        ContentValues values = new ContentValues();
        values.put(GalleryCloudSyncTagUtils.getColumnName(((SyncTagItem) syncTagList.get(0)).syncTagType), Long.valueOf(((SyncTagItem) syncTagList.get(0)).serverValue));
        GalleryUtils.safeUpdate(GalleryCloudUtils.SHARE_ALBUM_URI, values, "albumId = ? ", new String[]{this.mAlbumId});
    }

    private boolean cleanAllUsersInLocalDB() {
        if (GalleryUtils.safeDelete(getBaseUri(), "albumId = ? ", new String[]{this.mAlbumId}) > 0) {
            return true;
        }
        return false;
    }

    private void resetUsersInLocalDB() {
        cleanAllUsersInLocalDB();
        insertCreatorIntoShareUser(CloudUtils.getCreatorIdByAlbumId(this.mAlbumId), this.mAlbumId);
    }

    public static void insertCreatorIntoShareUser(String creatorId, String albumId) {
        if (TextUtils.isEmpty(creatorId) || TextUtils.isEmpty(albumId)) {
            SyncLog.d("SyncSharerUserForAlbum", "reset users, creator id or album id is null.");
            return;
        }
        ContentValues values = new ContentValues();
        values.put("albumId", albumId);
        values.put("userId", creatorId);
        GalleryUtils.safeInsert(GalleryCloudUtils.SHARE_USER_URI, values);
    }

    protected final boolean handleDataJson(JSONObject dataJson) throws JSONException {
        if (CloudUtils.getLongAttributeFromJson(dataJson, nexExportFormat.TAG_FORMAT_TAG) > ((SyncTagItem) getCurrentSyncTag().get(0)).currentValue) {
            resetUsersInLocalDB();
        }
        return addUsers(dataJson);
    }

    protected final boolean handleUser(JSONObject schemaJson) throws JSONException {
        if ("normal".equals(schemaJson.getString("status"))) {
            String peopleId = schemaJson.optString(BabyAlbumUtils.BABY_PEOPLE_ID);
            String userId = schemaJson.optString("userId");
            if (!(TextUtils.isEmpty(peopleId) || TextUtils.isEmpty(userId) || !userId.equals(GalleryCloudUtils.getAccountName()))) {
                BabyInfo babyInfo;
                DBShareAlbum dbShareAlbum = CloudUtils.getDBShareAlbumBySharedId(this.mAlbumId);
                if (dbShareAlbum == null) {
                    babyInfo = null;
                } else {
                    babyInfo = BabyInfo.fromJSON(dbShareAlbum.getBabyInfoJson());
                }
                if (babyInfo != null) {
                    babyInfo.mAutoupdate = schemaJson.optBoolean(BabyAlbumUtils.BABY_AUTO_UPDATE);
                    babyInfo.mPeopleId = peopleId;
                    ContentValues values = new ContentValues();
                    values.putNull("editedColumns");
                    values.put("babyInfoJson", babyInfo.toJSON());
                    values.put("peopleId", peopleId);
                    GalleryUtils.safeUpdate(GalleryCloudUtils.SHARE_ALBUM_URI, values, String.format(Locale.US, "%s=?", new Object[]{"albumId"}), new String[]{this.mAlbumId});
                }
            }
        }
        return super.handleUser(schemaJson);
    }

    protected String getSyncTagSelection() {
        return "albumId = '" + this.mAlbumId + "'";
    }
}

package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.SyncPull;
import com.miui.gallery.data.DBShareAlbum;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deprecated.Preference;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class SyncSharerAll extends SyncFromServer {
    private Bundle mExtras;

    public SyncSharerAll(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken, Bundle extras) {
        super(mContext, mAccount, mExtendedAuthToken);
        this.mExtras = extras;
    }

    protected ArrayList<SyncTagItem> getSyncTagList() {
        ArrayList<SyncTagItem> syncTagList = new ArrayList();
        syncTagList.add(new SyncTagItem(4));
        syncTagList.add(new SyncTagItem(3));
        syncTagList.add(new SyncTagItem(5));
        syncTagList.add(new SyncTagItem(2));
        return syncTagList;
    }

    protected ArrayList<SyncTagItem> getCurrentSyncTag() {
        SyncTagItem syncTag;
        ArrayList<SyncTagItem> syncTagList = super.getCurrentSyncTag();
        boolean shouldInitial = false;
        Iterator it = syncTagList.iterator();
        while (it.hasNext()) {
            syncTag = (SyncTagItem) it.next();
            if (GalleryCloudSyncTagUtils.shouldSyncTagValue(syncTag.syncTagType) && syncTag.currentValue == ((long) GalleryCloudSyncTagUtils.getInitSyncTagValue(syncTag.syncTagType))) {
                shouldInitial = true;
                break;
            }
        }
        if (shouldInitial) {
            it = syncTagList.iterator();
            while (it.hasNext()) {
                syncTag = (SyncTagItem) it.next();
                if (GalleryCloudSyncTagUtils.shouldSyncTagValue(syncTag.syncTagType)) {
                    syncTag.currentValue = (long) GalleryCloudSyncTagUtils.getInitSyncTagValue(syncTag.syncTagType);
                }
            }
        }
        return syncTagList;
    }

    protected boolean handleResultAndShouldContinue(JSONObject dataJson, ArrayList<SyncTagItem> syncTagList) throws JSONException, ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, URISyntaxException, GalleryMiCloudServerException {
        boolean shouldContinue = false;
        Iterator it = syncTagList.iterator();
        while (it.hasNext()) {
            SyncTagItem syncTag = (SyncTagItem) it.next();
            String jsonTagOutput = GalleryCloudSyncTagUtils.getJsonTagOutput(syncTag.syncTagType);
            if (TextUtils.isEmpty(jsonTagOutput)) {
                SyncLog.e("SyncSharerAll", "get output tag is null, syncType:" + syncTag.syncTagType);
                return false;
            } else if (dataJson.has(jsonTagOutput)) {
                JSONObject syncResultJson = dataJson.getJSONObject(jsonTagOutput);
                boolean lastPage = syncResultJson.getBoolean("lastPage");
                long serverTag = CloudUtils.getLongAttributeFromJson(syncResultJson, "syncTag");
                if (syncResultJson.has("entries")) {
                    switch (syncTag.syncTagType) {
                        case 2:
                            handleUserList(syncResultJson);
                            break;
                        case 3:
                            handleAlbumList(syncResultJson);
                            break;
                        case 4:
                            handleAlbumList(syncResultJson);
                            break;
                        case 5:
                            handleImageList(syncResultJson);
                            break;
                        default:
                            SyncLog.i("SyncSharerAll", "can't handle this syncTag:" + syncTag.syncTagType);
                            break;
                    }
                }
                SyncLog.d("SyncSharerAll", jsonTagOutput + " entries is null, may be is first sync, just save syncTag:" + syncResultJson);
                if (Preference.getSyncShouldClearDataBase()) {
                    SyncLog.i("SyncSharerAll", "need clear data");
                    return false;
                }
                long toUpdateSyncTag = serverTag;
                if (toUpdateSyncTag > syncTag.currentValue) {
                    SyncLog.d("SyncSharerAll", "update the syncTag:" + toUpdateSyncTag);
                    syncTag.serverValue = toUpdateSyncTag;
                    updateSyncTag(syncTag);
                }
                if (lastPage) {
                    SyncLog.d("SyncSharerAll", "last page, break sync from server");
                    syncTag.shouldSync = false;
                } else {
                    shouldContinue = true;
                }
            }
        }
        updateSyncInfo(dataJson, (ArrayList) syncTagList);
        return shouldContinue;
    }

    private void handleAlbumList(JSONObject albumListJson) throws JSONException, ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, URISyntaxException, GalleryMiCloudServerException {
        JSONArray entriesArray = albumListJson.optJSONArray("entries");
        for (int i = 0; i < entriesArray.length(); i++) {
            JSONObject entryJson = entriesArray.getJSONObject(i);
            String sharedId = entryJson.getString("sharedId");
            String albumStatus = entryJson.optString("status");
            if (TextUtils.isEmpty(albumStatus)) {
                albumStatus = "normal";
            }
            long serverTag = CloudUtils.getLongAttributeFromJson(entryJson, nexExportFormat.TAG_FORMAT_TAG);
            JSONObject contentJson = entryJson.getJSONObject("content");
            String serverStatus = contentJson.getString("status");
            String albumName = contentJson.getString("fileName");
            boolean needSyncImages = false;
            synchronized (GalleryCloudUtils.SHARE_ALBUM_URI) {
                DBShareAlbum shareAlbum = CloudUtils.getDBShareAlbumBySharedId(sharedId);
                if (shareAlbum == null) {
                    if (DBShareAlbum.isNormalStatus(serverStatus, albumStatus)) {
                        Uri uri = GalleryUtils.safeInsert(GalleryCloudUtils.SHARE_ALBUM_URI, DBShareAlbum.getContentValue(entryJson, shareAlbum));
                        if (uri != null) {
                            CloudUtils.updateLocalGroupIdInGroup(GalleryCloudUtils.SHARE_IMAGE_URI, sharedId, uri.getLastPathSegment(), "albumId");
                        }
                        needSyncImages = true;
                        insertCreatorIntoShareUser(entryJson);
                    }
                } else if (DBShareAlbum.isNormalStatus(serverStatus, albumStatus)) {
                    if (serverTag > shareAlbum.getServerTag()) {
                        ContentValues values = DBShareAlbum.getContentValue(entryJson, shareAlbum);
                        GalleryUtils.safeUpdate(GalleryCloudUtils.SHARE_ALBUM_URI, values, "albumId = ? ", new String[]{sharedId});
                    }
                    needSyncImages = true;
                } else {
                    notifyKicked(albumName, sharedId);
                    CloudUtils.deleteShareAlbumInLocal(sharedId, shareAlbum.getId());
                    SyncLog.d("SyncSharerAll", "delete share album:" + sharedId);
                }
            }
            if (needSyncImages) {
                SyncSharerImageForAlbum syncSharerImageForAlbum = new SyncSharerImageForAlbum(this.mContext, this.mAccount, this.mExtendedAuthToken, sharedId);
                SyncLog.d("SyncSharerAll", "sync share image when insertCreatorAndSyncImages start");
                syncSharerImageForAlbum.sync();
                SyncLog.d("SyncSharerAll", "sync share image when insertCreatorAndSyncImages end");
                if (Preference.getSyncShouldClearDataBase()) {
                    SyncLog.i("SyncSharerAll", "need clear data");
                    return;
                }
            }
            if (DBShareAlbum.isNormalStatus(serverStatus, albumStatus) && contentJson.has("isPublic") && contentJson.getBoolean("isPublic")) {
                AlbumShareOperations.requestPublicUrl(entryJson.getString("sharedId"), true);
            }
        }
    }

    private void insertCreatorIntoShareUser(JSONObject jsonObject) throws JSONException {
        SyncSharerUserForAlbum.insertCreatorIntoShareUser(jsonObject.getString("creatorId"), jsonObject.getString("sharedId"));
    }

    private void notifyKicked(String albumName, String albumId) {
        Context context = this.mContext;
        Context context2 = this.mContext;
        Object[] objArr = new Object[1];
        objArr[0] = this.mContext.getString(R.string.quotation, new Object[]{albumName});
        CloudUtils.sendShareAlbumNotification(context, context2.getString(R.string.album_share_kicked, objArr), 2, null);
        CloudShareAlbumMediator.getInstance().onShareAlbumExited(albumId);
    }

    private void handleImageList(JSONObject albumListJson) throws JSONException, ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, URISyntaxException, GalleryMiCloudServerException {
        JSONArray entriesArray = albumListJson.optJSONArray("entries");
        for (int i = 0; i < entriesArray.length(); i++) {
            SyncSharerImageForAlbum syncSharerImages = new SyncSharerImageForAlbum(this.mContext, this.mAccount, this.mExtendedAuthToken, entriesArray.getJSONObject(i).getString("sharedId"));
            SyncLog.d("SyncSharerAll", "sync share image when handleImageList start");
            syncSharerImages.sync();
            SyncLog.d("SyncSharerAll", "sync share image when handleImageList end");
            if (Preference.getSyncShouldClearDataBase()) {
                SyncLog.i("SyncSharerAll", "need clear data");
                return;
            }
        }
    }

    private void handleUserList(JSONObject albumListJson) throws JSONException, ClientProtocolException, IllegalBlockSizeException, BadPaddingException, IOException, URISyntaxException, GalleryMiCloudServerException {
        JSONArray entriesArray = albumListJson.optJSONArray("entries");
        for (int i = 0; i < entriesArray.length(); i++) {
            JSONObject entryJson = entriesArray.getJSONObject(i);
            if (new SyncOwnerUserForAlbum(this.mContext, this.mAccount, this.mExtendedAuthToken, entryJson.getString("albumId")).handleDataJson(entryJson)) {
                GallerySyncAdapterImpl.sNeedSyncUserNames = true;
            }
        }
    }

    protected String getSyncUrl() {
        return SyncPull.getPullShareAll();
    }

    protected Uri getBaseUri() {
        return null;
    }

    protected String getTagColumnName() {
        return null;
    }

    protected String getSyncTagSelection() {
        return GalleryCloudSyncTagUtils.getAccountSelections(this.mAccount);
    }
}

package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.data.DBShareUser;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.SyncLog;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class SyncUserBase extends SyncFromServer {
    protected final String mAlbumId;

    public SyncUserBase(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken, String albumId) {
        super(mContext, mAccount, mExtendedAuthToken);
        this.mAlbumId = albumId;
    }

    protected boolean handleUser(JSONObject schemaJson) throws JSONException {
        String status = schemaJson.getString("status");
        String userId = schemaJson.getString("userId");
        long serverTag = CloudUtils.getLongAttributeFromJson(schemaJson, nexExportFormat.TAG_FORMAT_TAG);
        synchronized (getBaseUri()) {
            DBShareUser shareUser = getShareUserById(this.mContext, userId);
            if (shareUser == null) {
                String relation = null;
                String relationText = null;
                if (schemaJson.has("relation")) {
                    relation = schemaJson.getString("relation");
                    relationText = schemaJson.getString("relationText");
                }
                if (!(TextUtils.isEmpty(relation) || TextUtils.isEmpty(relationText))) {
                    setPhoneNumberNullIfNeeded(relation, relationText);
                    shareUser = getInvitedShareUserByRelation(userId, relation, relationText);
                    if (shareUser != null) {
                        boolean handleUserInvited = handleUserInvited(schemaJson, shareUser, status);
                        return handleUserInvited;
                    }
                }
                if (status.equals("normal")) {
                    ContentValues values = DBShareUser.getContentValues(schemaJson);
                    values.put("albumId", this.mAlbumId);
                    GalleryUtils.safeInsert(getBaseUri(), values);
                    return true;
                }
                return false;
            }
            SyncLog.d("SyncUserBase", "find this user in local, update");
            if (shareUser.getServerTag() >= serverTag) {
                SyncLog.d("SyncUserBase", "shareUser:" + shareUser.getId() + " local tag:" + shareUser.getServerTag() + " >= server tag:" + serverTag + ", don't update local.");
                return false;
            } else if (status.equals("normal")) {
                GalleryUtils.safeUpdate(getBaseUri(), DBShareUser.getContentValues(schemaJson), "_id = ? ", new String[]{shareUser.getId()});
                return false;
            } else {
                GalleryUtils.safeDelete(getBaseUri(), "_id = ? ", new String[]{shareUser.getId()});
                SyncLog.d("SyncUserBase", "delete share user:" + shareUser.getId());
                return false;
            }
        }
    }

    private boolean handleUserInvited(JSONObject schemaJson, DBShareUser shareUser, String status) throws JSONException {
        if (shareUser != null) {
            if (status.equals("normal") || status.equals("invited")) {
                GalleryUtils.safeUpdate(getBaseUri(), DBShareUser.getContentValues(schemaJson), "_id = ? ", new String[]{shareUser.getId()});
                return true;
            }
            GalleryUtils.safeDelete(getBaseUri(), "_id = ? ", new String[]{shareUser.getId()});
        }
        return false;
    }

    private final void setPhoneNumberNullIfNeeded(String relation, String relationText) {
        if (getBaseUri() != GalleryCloudUtils.CLOUD_USER_URI) {
            return;
        }
        if (TextUtils.equals(relation, "family") || TextUtils.equals(relation, "friend")) {
            ContentValues values = new ContentValues();
            values.putNull("phone");
            GalleryUtils.safeUpdate(GalleryCloudUtils.CLOUD_USER_URI, values, String.format(Locale.US, "%s='%s' and %s='%s' and %s='%s' and %s='%s'", new Object[]{"albumId", this.mAlbumId, "relation", relation, "relationText", relationText, "serverStatus", "invited"}), null);
        }
    }

    private final DBShareUser getInvitedShareUserByRelation(String userId, String relation, String relationText) {
        return CloudUtils.getInvitedDBShareUserInLocal(getBaseUri(), userId, this.mAlbumId, relation, relationText);
    }

    private final DBShareUser getShareUserById(Context context, String userId) {
        return CloudUtils.getDBShareUserInLocal(getBaseUri(), userId, this.mAlbumId);
    }

    protected final int getSyncItemLimit() {
        return 0;
    }

    protected final boolean updateSyncTagAndShouldContinue(JSONObject dataJson, ArrayList<SyncTagItem> syncTagList) throws JSONException {
        long toUpdateSyncTag = CloudUtils.getLongAttributeFromJson(dataJson, nexExportFormat.TAG_FORMAT_TAG);
        if (toUpdateSyncTag > ((SyncTagItem) syncTagList.get(0)).currentValue) {
            SyncLog.d("SyncUserBase", "update the syncTag:" + toUpdateSyncTag);
            ((SyncTagItem) syncTagList.get(0)).serverValue = toUpdateSyncTag;
            updateSyncTag((ArrayList) syncTagList);
        }
        return false;
    }

    protected final boolean addUsers(JSONObject dataJson) throws JSONException {
        JSONArray userList = dataJson.optJSONArray("list");
        if (userList == null || userList.length() <= 0) {
            SyncLog.d("SyncUserBase", "changedUserList is empty, return.");
            return false;
        }
        boolean hasNewUser = false;
        for (int i = 0; i < userList.length(); i++) {
            if (handleUser(userList.getJSONObject(i))) {
                hasNewUser = true;
            }
        }
        return hasNewUser;
    }
}

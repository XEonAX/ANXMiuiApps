package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import com.miui.gallery.cloud.HostManager.SyncPull;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public final class SyncOwnerPrivate extends SyncOwnerCloud {
    private String mSyncIgnoreTag = String.valueOf(0);
    private long mSyncTag = 0;

    public SyncOwnerPrivate(Context mContext, Account mAccount, GalleryExtendedAuthToken mExtendedAuthToken) {
        super(mContext, mAccount, mExtendedAuthToken);
    }

    protected String getSyncUrl() {
        return SyncPull.getPullOwnerPrivateUrl();
    }

    protected void appendSyncInfo(ArrayList<NameValuePair> params, ArrayList<SyncTagItem> arrayList) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        params.add(new BasicNameValuePair("syncIgnoreTag", this.mSyncIgnoreTag));
    }

    protected void appendParams(ArrayList<NameValuePair> arrayList, ArrayList<SyncTagItem> arrayList2) throws UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
    }

    protected ArrayList<SyncTagItem> getCurrentSyncTag() {
        ArrayList<SyncTagItem> syncTagList = getSyncTagList();
        if (!(syncTagList == null || syncTagList.size() == 0)) {
            ((SyncTagItem) syncTagList.get(0)).currentValue = this.mSyncTag;
        }
        return syncTagList;
    }

    protected void updateSyncInfo(JSONObject dataJson, ArrayList<SyncTagItem> arrayList) {
        String syncIgnoreTag = dataJson.optString("syncIgnoreTag");
        if (!TextUtils.isEmpty(syncIgnoreTag)) {
            this.mSyncIgnoreTag = syncIgnoreTag;
        }
    }

    protected void updateSyncTag(ArrayList<SyncTagItem> syncTagList) {
        if (syncTagList != null && syncTagList.size() != 0) {
            this.mSyncTag = ((SyncTagItem) syncTagList.get(0)).serverValue;
        }
    }
}

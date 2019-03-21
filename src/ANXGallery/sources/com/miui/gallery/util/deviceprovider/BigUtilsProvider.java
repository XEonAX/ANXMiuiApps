package com.miui.gallery.util.deviceprovider;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagConstant;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils.SyncTagItem;
import java.util.ArrayList;
import java.util.Map.Entry;

public class BigUtilsProvider implements UtilsProviderInterface {
    public Bundle processMiCloudSyncBundle(Context context, Account account, Bundle income) {
        String pushType = income.getString("pushType");
        String pushName = income.getString("pushName");
        String pushData = income.getString("pushData");
        for (Entry<Integer, SyncTagConstant> syncTagEntry : GalleryCloudSyncTagUtils.sSyncTagConstantsMap.entrySet()) {
            if (((SyncTagConstant) syncTagEntry.getValue()).pushName != null && ((SyncTagConstant) syncTagEntry.getValue()).pushName.equals(pushName)) {
                if (ApplicationHelper.supportShare() || ((SyncTagConstant) syncTagEntry.getValue()).pushName.equals("micloud.gallery.sync")) {
                    ArrayList<SyncTagItem> syncTagList = new ArrayList();
                    syncTagList.add(new SyncTagItem(((Integer) syncTagEntry.getKey()).intValue()));
                    if (TextUtils.equals(Long.toString(((SyncTagItem) GalleryCloudSyncTagUtils.getSyncTag(context, account, syncTagList).get(0)).currentValue), pushData)) {
                        return null;
                    }
                    Bundle extras = new Bundle();
                    extras.putInt("sync_tag_type", ((Integer) syncTagEntry.getKey()).intValue());
                    extras.putString("sync_tag_data", pushData);
                    return extras;
                }
            }
        }
        return null;
    }
}

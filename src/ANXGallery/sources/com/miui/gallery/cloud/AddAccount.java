package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloudcontrol.CloudControlRequestHelper;
import com.miui.gallery.push.GalleryPushManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.deleterecorder.DeleteRecorder;

public class AddAccount {
    public static void onAddAccount(Context context, Account account) {
        GalleryPushManager.getInstance().onAddAccount(context, account);
        boolean existXiaomiAccount = SyncUtil.existXiaomiAccount(GalleryApp.sGetAndroidContext());
        Log.d("AddAccount", "Exist xiaomi Account %s", String.valueOf(existXiaomiAccount));
        if (existXiaomiAccount) {
            Log.d("AddAccount", "Done request cloud control data, result %s", String.valueOf(new CloudControlRequestHelper(GalleryApp.sGetAndroidContext()).execRequestSync(true)));
        }
        DeleteRecorder.onAddAccount();
    }
}

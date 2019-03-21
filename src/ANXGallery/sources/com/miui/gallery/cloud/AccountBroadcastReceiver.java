package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.miui.gallery.request.HostManager;
import com.miui.gallery.util.BackgroundServiceHelper;
import com.miui.gallery.util.SyncLog;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;

public class AccountBroadcastReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        SyncLog.d("AccountBroadcastReceiver", "onReceive broadcast");
        String broadcastAction = intent.getAction();
        Intent serviceIntent;
        if ("android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED".equals(broadcastAction)) {
            Account preAccount = (Account) intent.getParcelableExtra("extra_account");
            if (preAccount == null || ApplicationHelper.getIntentProvider().getXiaomiAccountType().equals(preAccount.type)) {
                GalleryCloudUtils.resetAccountCache();
                if (preAccount != null) {
                    HostManager.clearCookies();
                    if (intent.getIntExtra("extra_update_type", -1) == 1) {
                        boolean wipeData = true;
                        Bundle bundle = intent.getBundleExtra("extra_bundle");
                        if (bundle != null && bundle.containsKey("extra_wipe_data")) {
                            wipeData = bundle.getBoolean("extra_wipe_data", true);
                        }
                        serviceIntent = new Intent(context, AccountChangeService.class);
                        serviceIntent.setAction("delete_account");
                        serviceIntent.putExtra("extra_account", preAccount);
                        serviceIntent.putExtra("extra_wipe_data", wipeData);
                        BackgroundServiceHelper.startForegroundServiceIfNeed(context, serviceIntent);
                    }
                }
            }
        } else if ("android.accounts.LOGIN_ACCOUNTS_POST_CHANGED".equals(broadcastAction)) {
            Account account = (Account) intent.getParcelableExtra("extra_account");
            if (account != null && ApplicationHelper.getIntentProvider().getXiaomiAccountType().equals(account.type) && 2 == intent.getIntExtra("extra_update_type", -1)) {
                serviceIntent = new Intent(context, AccountChangeService.class);
                serviceIntent.setAction("add_account");
                serviceIntent.putExtra("extra_account", account);
                BackgroundServiceHelper.startForegroundServiceIfNeed(context, serviceIntent);
            }
        }
    }
}

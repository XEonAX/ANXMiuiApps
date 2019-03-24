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
import miui.accounts.ExtraAccountManager;

public class AccountBroadcastReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        SyncLog.d("AccountBroadcastReceiver", "onReceive broadcast");
        String broadcastAction = intent.getAction();
        Intent serviceIntent;
        if (ExtraAccountManager.LOGIN_ACCOUNTS_PRE_CHANGED_ACTION.equals(broadcastAction)) {
            Account preAccount = (Account) intent.getParcelableExtra(ExtraAccountManager.EXTRA_ACCOUNT);
            if (preAccount == null || ApplicationHelper.getIntentProvider().getXiaomiAccountType().equals(preAccount.type)) {
                GalleryCloudUtils.resetAccountCache();
                if (preAccount != null) {
                    HostManager.clearCookies();
                    if (intent.getIntExtra("extra_update_type", -1) == 1) {
                        boolean wipeData = true;
                        Bundle bundle = intent.getBundleExtra(ExtraAccountManager.EXTRA_BUNDLE);
                        if (bundle != null && bundle.containsKey(ExtraAccountManager.EXTRA_WIPE_DATA)) {
                            wipeData = bundle.getBoolean(ExtraAccountManager.EXTRA_WIPE_DATA, true);
                        }
                        serviceIntent = new Intent(context, AccountChangeService.class);
                        serviceIntent.setAction("delete_account");
                        serviceIntent.putExtra(ExtraAccountManager.EXTRA_ACCOUNT, preAccount);
                        serviceIntent.putExtra(ExtraAccountManager.EXTRA_WIPE_DATA, wipeData);
                        BackgroundServiceHelper.startForegroundServiceIfNeed(context, serviceIntent);
                    }
                }
            }
        } else if ("android.accounts.LOGIN_ACCOUNTS_POST_CHANGED".equals(broadcastAction)) {
            Account account = (Account) intent.getParcelableExtra(ExtraAccountManager.EXTRA_ACCOUNT);
            if (account != null && ApplicationHelper.getIntentProvider().getXiaomiAccountType().equals(account.type) && 2 == intent.getIntExtra("extra_update_type", -1)) {
                serviceIntent = new Intent(context, AccountChangeService.class);
                serviceIntent.setAction("add_account");
                serviceIntent.putExtra(ExtraAccountManager.EXTRA_ACCOUNT, account);
                BackgroundServiceHelper.startForegroundServiceIfNeed(context, serviceIntent);
            }
        }
    }
}

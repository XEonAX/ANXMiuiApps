package com.miui.gallery.cloud;

import android.accounts.Account;
import android.app.Notification;
import android.content.Intent;
import com.miui.gallery.service.IntentServiceBase;
import com.miui.gallery.util.NotificationHelper;

public class AccountChangeService extends IntentServiceBase {
    protected Notification getNotification() {
        return NotificationHelper.getEmptyNotification(getApplicationContext());
    }

    protected int getNotificationId() {
        return 10;
    }

    protected void onHandleIntent(Intent intent) {
        int wipeDataStrategy = 1;
        super.onHandleIntent(intent);
        String action = intent.getAction();
        if ("delete_account".equals(action)) {
            Account preAccount = (Account) intent.getParcelableExtra("extra_account");
            if (intent.getBooleanExtra("extra_wipe_data", true)) {
                wipeDataStrategy = 2;
            }
            DeleteAccount.deleteAccountInTask(null, preAccount, wipeDataStrategy, null);
        } else if ("add_account".equals(action)) {
            AddAccount.onAddAccount(this, (Account) intent.getParcelableExtra("extra_account"));
        }
    }
}

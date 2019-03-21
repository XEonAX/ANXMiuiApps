package com.miui.gallery.cloud;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.miui.account.AccountHelper;
import miui.cloud.sync.MiCloudStatusInfo;
import miui.cloud.sync.MiCloudStatusInfo.QuotaInfo;

public class MiCloudStatusInfoReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if ("com.xiaomi.action.MICLOUD_STATUS_INFO_CHANGED".equals(intent.getAction())) {
            handleSpaceFullIfNeeded(context);
        }
    }

    private void handleSpaceFullIfNeeded(Context context) {
        if (SpaceFullHandler.isOwnerSpaceFull()) {
            Account account = AccountHelper.getXiaomiAccount(context);
            if (account != null) {
                handleSpaceFull(context, account);
            }
        }
    }

    public static void handleSpaceFull(Context context, Account account) {
        String quota = ((AccountManager) context.getSystemService("account")).getUserData(account, "extra_micloud_status_info_quota");
        if (!TextUtils.isEmpty(quota)) {
            MiCloudStatusInfo info = new MiCloudStatusInfo(account.name);
            info.parseQuotaString(quota);
            QuotaInfo qInfo = info.getQuotaInfo();
            if (qInfo != null && qInfo.getTotal() - qInfo.getUsed() >= 20971520) {
                SpaceFullHandler.removeOwnerSpaceFull();
            }
        }
    }
}

package com.xiaomi.channel.commonutils.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.pm.PackageManager;
import com.xiaomi.channel.commonutils.logger.MyLog;

public class MIIDUtils {
    public static Account getXiaomiAccount(Context context) {
        Account account = null;
        try {
            if (!checkGETACCOUNTPermission(context)) {
                return null;
            }
            Account[] accounts = AccountManager.get(context).getAccountsByType("com.xiaomi");
            if (accounts != null && accounts.length > 0) {
                account = accounts[0];
            }
            return account;
        } catch (Exception e) {
            MyLog.e(e.toString());
            return null;
        }
    }

    public static boolean checkGETACCOUNTPermission(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            String pkgName = context.getPackageName();
            if (packageManager.checkPermission("android.permission.GET_ACCOUNTS", pkgName) == 0 || packageManager.checkPermission("android.permission.GET_ACCOUNTS_PRIVILEGED", pkgName) == 0) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }
}

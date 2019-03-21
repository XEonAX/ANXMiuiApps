package com.miui.gallery.cloud;

import android.accounts.Account;
import android.content.Context;
import com.miui.account.AccountHelper;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.preference.BaseGalleryPreferences.CTA;
import com.miui.gallery.util.SyncLog;

public class AccountCache {
    private static AccountInfo sAccountInfo;

    public static class AccountInfo {
        public final Account mAccount;
        public final GalleryExtendedAuthToken mToken;

        public AccountInfo(Account account, GalleryExtendedAuthToken token) {
            this.mAccount = account;
            this.mToken = token;
        }
    }

    public static synchronized void update(Account account, GalleryExtendedAuthToken token) {
        synchronized (AccountCache.class) {
            if (account == null || token == null) {
                sAccountInfo = null;
            } else {
                sAccountInfo = new AccountInfo(account, token);
            }
        }
    }

    public static synchronized Account getAccount() {
        Account account;
        synchronized (AccountCache.class) {
            if (sAccountInfo != null) {
                account = sAccountInfo.mAccount;
            } else {
                account = AccountHelper.getXiaomiAccount(GalleryApp.sGetAndroidContext());
            }
        }
        return account;
    }

    public static AccountInfo getAccountInfo() {
        if (sAccountInfo == null) {
            AccountInfo info = requestAccountInfo();
            if (info != null) {
                update(info.mAccount, info.mToken);
            }
        }
        return sAccountInfo;
    }

    private static AccountInfo requestAccountInfo() {
        if (CTA.canConnectNetwork()) {
            Context context = GalleryApp.sGetAndroidContext();
            Account account = AccountHelper.getXiaomiAccount(context);
            if (account == null) {
                SyncLog.e("AccountCache", "requestAccount: get account failed");
                return null;
            }
            GalleryExtendedAuthToken token = CloudUtils.getExtToken(context, account);
            if (token != null) {
                return new AccountInfo(account, token);
            }
            SyncLog.e("AccountCache", "requestAccount: get ext token failed");
            return null;
        }
        SyncLog.e("AccountCache", "requestAccount: cta not allowed");
        return null;
    }
}

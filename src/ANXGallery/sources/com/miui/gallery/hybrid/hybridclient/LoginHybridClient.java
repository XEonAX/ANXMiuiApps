package com.miui.gallery.hybrid.hybridclient;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.content.Context;
import android.os.Bundle;
import com.miui.account.AccountHelper;
import com.miui.gallery.hybrid.hybridclient.HybridClient.ActualPathCallback;

public class LoginHybridClient extends DeviceIdHybridClient {
    public LoginHybridClient(Context context, String url) {
        super(context, url);
    }

    public void getActualPath(final ActualPathCallback callback) {
        if (callback != null) {
            if (this.mContext == null) {
                callback.onGetActualPath(null);
                return;
            }
            String loginUrl = "weblogin:" + this.mUrl;
            Account account = AccountHelper.getXiaomiAccount(this.mContext);
            if (account != null) {
                AccountManager.get(this.mContext).getAuthToken(account, loginUrl, null, false, new AccountManagerCallback<Bundle>() {
                    public void run(AccountManagerFuture<Bundle> future) {
                        try {
                            callback.onGetActualPath(((Bundle) future.getResult()).getString("authtoken"));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }, null);
            }
        }
    }
}

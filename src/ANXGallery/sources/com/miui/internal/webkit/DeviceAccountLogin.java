package com.miui.internal.webkit;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.lang.ref.WeakReference;

public class DeviceAccountLogin {
    private static final String TAG = "DeviceAccountLogin";
    protected AccountManager mAccountManager = AccountManager.get(this.mActivity.getApplicationContext());
    protected Activity mActivity;
    private AccountManagerCallback<Bundle> pE = new LoginCallback(this);

    private static class LoginCallback implements AccountManagerCallback<Bundle> {
        private WeakReference<DeviceAccountLogin> pF;

        public LoginCallback(DeviceAccountLogin deviceAccountLogin) {
            this.pF = new WeakReference(deviceAccountLogin);
        }

        public void run(AccountManagerFuture<Bundle> accountManagerFuture) {
            DeviceAccountLogin deviceAccountLogin = (DeviceAccountLogin) this.pF.get();
            if (deviceAccountLogin != null) {
                try {
                    String string = ((Bundle) accountManagerFuture.getResult()).getString("authtoken");
                    if (string == null) {
                        deviceAccountLogin.onLoginFail();
                    } else {
                        deviceAccountLogin.onLoginSuccess(string);
                    }
                } catch (Throwable e) {
                    Log.e(DeviceAccountLogin.TAG, "Fail to login", e);
                    deviceAccountLogin.onLoginFail();
                }
            }
        }
    }

    public DeviceAccountLogin(Activity activity) {
        this.mActivity = activity;
    }

    public void login(String str, String str2, String str3) {
        Account[] accountsByType = this.mAccountManager.getAccountsByType(str);
        if (accountsByType.length == 0) {
            onLoginCancel();
            return;
        }
        Account account;
        Account account2 = null;
        int i = 0;
        if (TextUtils.isEmpty(str2)) {
            account2 = accountsByType[0];
        } else {
            int length = accountsByType.length;
            while (i < length) {
                Account account3 = accountsByType[i];
                if (account3.name.equals(str2)) {
                    account = account3;
                    break;
                }
                i++;
            }
        }
        account = account2;
        if (account != null) {
            onLoginStart();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("weblogin:");
            stringBuilder.append(str3);
            this.mAccountManager.getAuthToken(account, stringBuilder.toString(), null, null, this.pE, null);
        } else {
            onLoginCancel();
        }
    }

    public void onLoginStart() {
    }

    public void onLoginCancel() {
    }

    public void onLoginSuccess(String str) {
    }

    public void onLoginFail() {
    }

    public void onLoginPageFinished() {
    }
}

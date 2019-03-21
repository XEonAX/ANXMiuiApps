package com.xiaomi.micloudsdk.request.utils;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.xiaomi.micloudsdk.data.ExtendedAuthToken;
import com.xiaomi.micloudsdk.remote.XiaomiAccountRemoteMethodInvoker;
import com.xiaomi.micloudsdk.request.utils.Request.RequestEnv;
import com.xiaomi.micloudsdk.utils.IXiaomiAccountServiceProxy;
import java.io.IOException;

public class DefaultRequestEnv implements RequestEnv {
    private static final int[] RETRY_INTERVALS = new int[]{5000, 10000};
    private ThreadLocal<ExtendedAuthToken> mExtendedAuthToken = new ThreadLocal();
    private String mUserAgent;

    public ExtendedAuthToken queryAuthToken() {
        boolean isInvalidateAuthToken = false;
        int i = 0;
        while (i < 3) {
            try {
                Account account = CloudUtils.getXiaomiAccount();
                if (account == null) {
                    Log.e("DefaultRequestEnv", "no account in system");
                    return null;
                }
                String token = ((Bundle) AccountManager.get(Request.getContext()).getAuthToken(account, "micloud", true, null, null).getResult()).getString("authtoken");
                if (token == null) {
                    return null;
                }
                this.mExtendedAuthToken.set(ExtendedAuthToken.parse(token));
                return (ExtendedAuthToken) this.mExtendedAuthToken.get();
            } catch (IOException e) {
                Log.e("DefaultRequestEnv", "IOException when getting service token", e);
                if (i < 2) {
                    try {
                        Thread.sleep((long) RETRY_INTERVALS[i]);
                    } catch (InterruptedException e2) {
                        Log.e("DefaultRequestEnv", "InterruptedException when sleep", e);
                    }
                }
                i++;
            } catch (OperationCanceledException e3) {
                Log.e("DefaultRequestEnv", "OperationCanceledException when getting service token", e3);
                return null;
            } catch (AuthenticatorException e4) {
                Log.e("DefaultRequestEnv", "AuthenticatorException when getting service token", e4);
                if (isInvalidateAuthToken) {
                    break;
                }
                isInvalidateAuthToken = true;
                invalidateAuthToken();
                i++;
            }
        }
        return null;
    }

    public void invalidateAuthToken() {
        if (this.mExtendedAuthToken.get() != null) {
            Log.d("DefaultRequestEnv", "invalidateAuthToken");
            AccountManager.get(Request.getContext()).invalidateAuthToken("com.xiaomi", ((ExtendedAuthToken) this.mExtendedAuthToken.get()).toPlain());
            this.mExtendedAuthToken.set(null);
        }
    }

    public String getAccountName() {
        Account account = CloudUtils.getXiaomiAccount();
        if (account != null) {
            return account.name;
        }
        Log.e("DefaultRequestEnv", "no account in system");
        return null;
    }

    public String queryEncryptedAccountName() {
        final Account account = CloudUtils.getXiaomiAccount();
        if (account != null) {
            return (String) new XiaomiAccountRemoteMethodInvoker<String>(Request.getContext()) {
                protected String invokeRemoteMethod(IBinder s) throws RemoteException {
                    return IXiaomiAccountServiceProxy.getEncryptedUserId(s, account);
                }
            }.invoke();
        }
        Log.e("DefaultRequestEnv", "no account in system");
        return null;
    }

    public synchronized String getUserAgent() {
        if (this.mUserAgent == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(Build.MODEL);
            sb.append("; MIUI/");
            sb.append(VERSION.INCREMENTAL);
            try {
                if (((Boolean) Class.forName("miui.os.Build").getField("IS_ALPHA_BUILD").get(null)).booleanValue()) {
                    sb.append(' ');
                    sb.append("ALPHA");
                }
            } catch (ClassNotFoundException e) {
                Log.d("DefaultRequestEnv", "Not in MIUI in getUserAgent");
            } catch (NoSuchFieldException e2) {
                Log.d("DefaultRequestEnv", "Not in MIUI in getUserAgent");
            } catch (IllegalAccessException e3) {
                Log.d("DefaultRequestEnv", "Not in MIUI in getUserAgent");
            } catch (IllegalArgumentException e4) {
                Log.d("DefaultRequestEnv", "Not in MIUI in getUserAgent");
            }
            this.mUserAgent = sb.toString();
        }
        return this.mUserAgent;
    }
}

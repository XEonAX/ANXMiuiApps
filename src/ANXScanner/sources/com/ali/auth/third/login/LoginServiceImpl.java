package com.ali.auth.third.login;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.ali.auth.third.core.WebViewProxy;
import com.ali.auth.third.core.broadcast.LoginAction;
import com.ali.auth.third.core.callback.CommonCallback;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.cookies.CookieManagerWrapper;
import com.ali.auth.third.core.model.Session;
import com.ali.auth.third.core.model.SystemMessageConstants;
import com.ali.auth.third.core.service.UserTrackerService;
import com.ali.auth.third.core.service.impl.CredentialManager;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.core.util.ResourceUtils;
import com.ali.auth.third.login.callback.LogoutCallback;
import com.ali.auth.third.login.task.LoginByReTokenTask;
import com.ali.auth.third.login.task.LogoutTask;
import com.ali.auth.third.login.util.LoginStatus;
import com.ali.auth.third.ui.LoginActivity;
import com.ali.auth.third.ui.context.CallbackContext;
import com.alipay.sdk.app.statistic.c;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class LoginServiceImpl implements LoginService {
    private transient Pattern[] a;
    private transient Pattern[] b;

    class a extends AsyncTask<Object, Void, Void> {
        CommonCallback a;

        a(CommonCallback commonCallback) {
            this.a = commonCallback;
        }

        /* renamed from: a */
        protected Void doInBackground(Object... objArr) {
            CookieManagerWrapper.INSTANCE.refreshCookie();
            return null;
        }

        /* renamed from: a */
        protected void onPostExecute(Void voidR) {
            this.a.onSuccess();
        }
    }

    private void a(Activity activity, LoginCallback loginCallback) {
        SDKLogger.d("login", "auth goLogin");
        CallbackContext.loginCallback = loginCallback;
        Intent intent = new Intent();
        if (activity == null) {
            intent.setClass(KernelContext.getApplicationContext(), LoginActivity.class);
            intent.setFlags(268435456);
            KernelContext.getApplicationContext().startActivity(intent);
            return;
        }
        intent.setClass(activity, LoginActivity.class);
        activity.startActivity(intent);
    }

    private void a(final LoginCallback loginCallback) {
        if (!TextUtils.isEmpty(CredentialManager.INSTANCE.getInternalSession().autoLoginToken) && CredentialManager.INSTANCE.getInternalSession().user != null && !TextUtils.isEmpty(CredentialManager.INSTANCE.getInternalSession().user.userId)) {
            SDKLogger.d("login", "auth auto login");
            new LoginByReTokenTask(null, new LoginCallback() {
                public void onFailure(int i, String str) {
                    SDKLogger.d("login", "auth auto login success");
                    if (loginCallback != null) {
                        loginCallback.onFailure(i, str);
                    }
                }

                public void onSuccess(Session session) {
                    SDKLogger.d("login", "auth auto login success");
                    if (loginCallback != null) {
                        loginCallback.onSuccess(LoginServiceImpl.this.getSession());
                    }
                    if (CallbackContext.mGlobalLoginCallback != null) {
                        CallbackContext.mGlobalLoginCallback.onSuccess(LoginServiceImpl.this.getSession());
                    }
                    CommonUtils.sendBroadcast(LoginAction.NOTIFY_LOGIN_SUCCESS);
                }
            }).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } else if (loginCallback != null) {
            loginCallback.onFailure(-1, "");
        }
    }

    private void a(Map<String, String> map, LoginCallback loginCallback) {
        SDKLogger.d("login", "goQrCodeLogin start");
        CallbackContext.loginCallback = loginCallback;
        Intent intent = new Intent();
        intent.setClass(KernelContext.getApplicationContext(), LoginActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(LoginConstants.PARAN_LOGIN_TYPE, 4);
        intent.putExtra("params", map == null ? "" : JSONUtils.toJsonObject(map).toString());
        KernelContext.getApplicationContext().startActivity(intent);
    }

    private boolean b(LoginCallback loginCallback) {
        if (KernelContext.checkServiceValid()) {
            try {
                Map hashMap = new HashMap();
                hashMap.put("withNoActivity", "true");
                ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(c.d.toUpperCase(), hashMap);
            } catch (Exception e) {
            }
            if (!LoginStatus.compareAndSetLogining(false, true)) {
                SDKLogger.e("login", "auth sdk is Logining, return");
                return false;
            } else if (CommonUtils.isNetworkAvailable()) {
                return true;
            } else {
                SDKLogger.d("login", "auth network not available");
                loginCallback.onFailure(SystemMessageConstants.NET_WORK_ERROR, ResourceUtils.getString("com_taobao_tae_sdk_network_not_available_message"));
                LoginStatus.resetLoginFlag();
                return false;
            }
        }
        SDKLogger.d("login", "auth static field is null");
        if (loginCallback != null) {
            loginCallback.onFailure(SystemMessageConstants.NPE_ERROR, "NullPointException");
        }
        return false;
    }

    public void auth(final Activity activity, final LoginCallback loginCallback) {
        SDKLogger.d("login", "auth start");
        if (b(loginCallback)) {
            a(new LoginCallback() {
                public void onFailure(int i, String str) {
                    LoginServiceImpl.this.a(activity, loginCallback);
                }

                public void onSuccess(Session session) {
                    if (loginCallback != null) {
                        loginCallback.onSuccess(LoginServiceImpl.this.getSession());
                    }
                }
            });
        } else {
            SDKLogger.d("login", "AutnEnvriment invalid");
        }
    }

    public void auth(LoginCallback loginCallback) {
        auth(null, loginCallback);
    }

    public boolean checkSessionValid() {
        return com.ali.auth.third.login.a.a.b.isSessionValid();
    }

    public void clear() {
        CallbackContext.loginCallback = null;
    }

    public Session getSession() {
        return com.ali.auth.third.login.a.a.b.getSession();
    }

    public boolean isLoginUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int length;
        int i;
        if (this.a == null && !TextUtils.isEmpty(ConfigManager.LOGIN_URLS)) {
            String[] split = ConfigManager.LOGIN_URLS.split("[,]");
            this.a = new Pattern[split.length];
            length = this.a.length;
            for (i = 0; i < length; i++) {
                this.a[i] = Pattern.compile(split[i]);
            }
        }
        for (Pattern matcher : this.a) {
            if (matcher.matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    public boolean isLogoutUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int length;
        int i;
        if (this.b == null && !TextUtils.isEmpty(ConfigManager.LOGOUT_URLS)) {
            String[] split = ConfigManager.LOGOUT_URLS.split("[,]");
            this.b = new Pattern[split.length];
            length = this.b.length;
            for (i = 0; i < length; i++) {
                this.b[i] = Pattern.compile(split[i]);
            }
        }
        for (Pattern matcher : this.b) {
            if (matcher.matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    public void logout(Activity activity, LogoutCallback logoutCallback) {
        ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send("logout".toUpperCase(), null);
        new LogoutTask(activity, logoutCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void logout(LogoutCallback logoutCallback) {
        try {
            Map hashMap = new HashMap();
            hashMap.put("withNoActivity", "true");
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send("logout".toUpperCase(), hashMap);
        } catch (Exception e) {
        }
        logout(null, logoutCallback);
    }

    public void refreshCookie(CommonCallback commonCallback) {
        new a(commonCallback).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
    }

    public void setLoginCallback(LoginCallback loginCallback) {
        CallbackContext.mGlobalLoginCallback = loginCallback;
    }

    public void setWebViewProxy(WebViewProxy webViewProxy) {
        KernelContext.mWebViewProxy = webViewProxy;
    }

    public void showQrCodeLogin(final Map<String, String> map, final LoginCallback loginCallback) {
        if (b(loginCallback)) {
            a(new LoginCallback() {
                public void onFailure(int i, String str) {
                    LoginServiceImpl.this.a(map, loginCallback);
                }

                public void onSuccess(Session session) {
                    if (loginCallback != null) {
                        loginCallback.onSuccess(LoginServiceImpl.this.getSession());
                    }
                }
            });
        }
    }
}

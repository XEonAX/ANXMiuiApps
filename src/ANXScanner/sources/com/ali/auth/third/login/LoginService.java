package com.ali.auth.third.login;

import android.app.Activity;
import com.ali.auth.third.core.WebViewProxy;
import com.ali.auth.third.core.callback.CommonCallback;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.model.Session;
import com.ali.auth.third.login.callback.LogoutCallback;
import java.util.Map;

public interface LoginService {
    public static final String TAG = "login";

    void auth(Activity activity, LoginCallback loginCallback);

    void auth(LoginCallback loginCallback);

    boolean checkSessionValid();

    void clear();

    Session getSession();

    boolean isLoginUrl(String str);

    boolean isLogoutUrl(String str);

    void logout(Activity activity, LogoutCallback logoutCallback);

    void logout(LogoutCallback logoutCallback);

    void refreshCookie(CommonCallback commonCallback);

    void setLoginCallback(LoginCallback loginCallback);

    void setWebViewProxy(WebViewProxy webViewProxy);

    void showQrCodeLogin(Map<String, String> map, LoginCallback loginCallback);
}

package com.ali.auth.third.ui;

import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ali.auth.third.core.MemberSDK;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.model.Session;
import com.ali.auth.third.login.LoginService;
import com.ali.auth.third.login.bridge.LoginBridge;
import com.ali.auth.third.ui.webview.BaseWebViewActivity;
import com.ali.auth.third.ui.webview.BaseWebViewClient;

public class QrLoginConfirmActivity extends BaseWebViewActivity {
    protected WebViewClient createWebViewClient() {
        return new BaseWebViewClient() {
            public boolean shouldOverrideUrlLoading(final WebView webView, String str) {
                if (!((LoginService) MemberSDK.getService(LoginService.class)).isLoginUrl(str)) {
                    return super.shouldOverrideUrlLoading(webView, str);
                }
                ((LoginService) MemberSDK.getService(LoginService.class)).auth(new LoginCallback() {
                    public void onFailure(int i, String str) {
                    }

                    public void onSuccess(Session session) {
                        webView.reload();
                    }
                });
                return true;
            }
        };
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.authWebView.addBridgeObject("accountBridge", new LoginBridge());
    }
}

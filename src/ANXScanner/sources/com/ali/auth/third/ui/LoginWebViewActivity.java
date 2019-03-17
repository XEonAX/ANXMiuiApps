package com.ali.auth.third.ui;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ali.auth.third.core.MemberSDK;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.Constants;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.login.LoginService;
import com.ali.auth.third.login.bridge.LoginBridge;
import com.ali.auth.third.login.task.RefreshSidTask;
import com.ali.auth.third.login.util.LoginStatus;
import com.ali.auth.third.ui.webview.AuthWebView;
import com.ali.auth.third.ui.webview.BaseWebViewActivity;
import com.ali.auth.third.ui.webview.BaseWebViewClient;
import com.ali.auth.third.ui.webview.BridgeWebChromeClient;

public class LoginWebViewActivity extends BaseWebViewActivity {
    public static final String CALLBACK = "https://www.alipay.com/webviewbridge";
    public static final String TAG = BaseWebViewActivity.class.getSimpleName();
    public static String scene;
    public static String token;
    private LoginService a;

    private boolean a(Uri uri) {
        Bundle serialBundle = serialBundle(uri.getQuery());
        if (serialBundle == null) {
            serialBundle = new Bundle();
        }
        serialBundle.getString("havana_mobile_reg_otherWebView");
        CharSequence string = serialBundle.getString("action");
        serialBundle.getString("loginId");
        if (TextUtils.isEmpty(string) || Constants.ACTION_QUIT.equals(string)) {
            setResult(ResultCode.SUCCESS.code, getIntent().putExtra(Constants.PARAM_IV_TOKEN, serialBundle.getString(Constants.PARAM_HAVANA_IV_TOKEN)));
            finish();
            return true;
        } else if (Constants.ACTION_RELOGIN.equals(string)) {
            finish();
            return true;
        } else if (Constants.ACTION_CONFIRMLOGIN.equals(string)) {
            return true;
        } else {
            if (Constants.ACTION_TRUSTLOGIN.equals(string)) {
                return true;
            }
            if (!Constants.ACTION_CONTINUELOGIN.equals(string)) {
                return false;
            }
            serialBundle.putString(Constants.QUERY_STRING, uri.getQuery());
            serialBundle.putString("token", token);
            serialBundle.putString("scene", scene);
            setResult(ResultCode.CHECK.code, getIntent().putExtras(serialBundle));
            finish();
            return true;
        }
    }

    public static Bundle serialBundle(String str) {
        Bundle bundle = null;
        if (str != null && str.length() > 0) {
            String[] split = str.split("&");
            bundle = new Bundle();
            for (String str2 : split) {
                int indexOf = str2.indexOf("=");
                if (indexOf > 0 && indexOf < str2.length() - 1) {
                    bundle.putString(str2.substring(0, indexOf), str2.substring(indexOf + 1));
                }
            }
        }
        return bundle;
    }

    public boolean checkWebviewBridge(String str) {
        Uri parse = Uri.parse(str);
        return CALLBACK.contains(new StringBuilder().append(parse.getAuthority()).append(parse.getPath()).toString());
    }

    protected WebChromeClient createWebChromeClient() {
        return new BridgeWebChromeClient() {
            public void onReceivedTitle(WebView webView, String str) {
                if (!LoginWebViewActivity.this.canReceiveTitle) {
                    return;
                }
                if ((str == null || !str.contains("我喜欢")) && str != null) {
                    LoginWebViewActivity.this.titleText.setText(str);
                }
            }
        };
    }

    protected WebViewClient createWebViewClient() {
        return new BaseWebViewClient() {
            public void onLoadResource(WebView webView, String str) {
                super.onLoadResource(webView, str);
                SDKLogger.d(LoginWebViewActivity.TAG, "onLoadResource url=" + str);
            }

            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                SDKLogger.d(LoginWebViewActivity.TAG, "onPageFinished url=" + str);
            }

            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                SDKLogger.d(LoginWebViewActivity.TAG, "onPageStarted url=" + str);
            }

            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                SDKLogger.d(LoginWebViewActivity.TAG, "shouldOverrideUrlLoading url=" + str);
                Uri parse = Uri.parse(str);
                if (LoginWebViewActivity.this.a.isLoginUrl(str)) {
                    new RefreshSidTask(LoginWebViewActivity.this.authWebView).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
                    return true;
                } else if (LoginWebViewActivity.this.checkWebviewBridge(str)) {
                    return LoginWebViewActivity.this.a(parse);
                } else {
                    if (webView instanceof AuthWebView) {
                        ((AuthWebView) webView).loadUrl(str);
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                }
            }
        };
    }

    public void onBackHistory() {
        if (this.authWebView.canGoBack() && (this.authWebView.getUrl().contains("authorization-notice") || this.authWebView.getUrl().contains("agreement"))) {
            this.authWebView.goBack();
            return;
        }
        setResult(ResultCode.USER_CANCEL.code, new Intent());
        LoginStatus.resetLoginFlag();
        finish();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.authWebView == null) {
            finish();
            return;
        }
        this.authWebView.addBridgeObject("accountBridge", new LoginBridge());
        this.authWebView.addBridgeObject("loginBridge", new LoginBridge());
        this.a = (LoginService) MemberSDK.getService(LoginService.class);
        if (KernelContext.context == null) {
            KernelContext.context = getApplicationContext();
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        LoginStatus.resetLoginFlag();
    }
}

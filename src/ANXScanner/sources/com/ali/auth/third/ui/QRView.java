package com.ali.auth.third.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.login.bridge.LoginBridge;
import com.ali.auth.third.ui.webview.AuthWebView;
import com.ali.auth.third.ui.webview.BridgeWebChromeClient;

public class QRView extends LinearLayout {
    public static LoginCallback mLoginCallback;
    private AuthWebView a;
    private int b;

    public QRView(Context context) {
        super(context);
    }

    public QRView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.ali_auth_qrview, this, true);
    }

    protected void onDetachedFromWindow() {
        mLoginCallback = null;
        super.onDetachedFromWindow();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (AuthWebView) findViewById(R.id.ali_auth_webview);
        this.a.setPadding(0, 0, 0, 0);
        this.a.addBridgeObject("loginBridge", new LoginBridge());
        this.a.setWebChromeClient(new BridgeWebChromeClient());
        this.a.setWebViewClient(new WebViewClient() {
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
        });
        this.a.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            @TargetApi(16)
            public void onGlobalLayout() {
                QRView.this.a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                QRView.this.b = QRView.this.a.getWidth();
            }
        });
    }

    public void showQR(LoginCallback loginCallback) {
        mLoginCallback = loginCallback;
        if (this.a != null) {
            if (this.b == 0) {
                this.b = this.a.getWidth();
            }
            float f = getResources().getDisplayMetrics().density;
            String str = String.format(ConfigManager.qrCodeLoginUrl, new Object[]{KernelContext.getAppKey()}) + "&qrwidth=" + ((int) (((double) (((float) this.b) / f)) * 0.8d));
            SDKLogger.d("QRView", "qr width = " + this.a.getPaddingLeft() + "   " + this.a.getPaddingTop());
            this.a.loadUrl(str);
            requestLayout();
        }
    }
}

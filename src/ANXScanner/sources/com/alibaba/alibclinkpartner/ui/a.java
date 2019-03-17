package com.alibaba.alibclinkpartner.ui;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.TextView;

public class a extends WebChromeClient {
    private TextView a;

    public a(TextView textView) {
        this.a = textView;
    }

    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        this.a.setText(str);
    }
}

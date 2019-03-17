package com.alibaba.alibclinkpartner.ui;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.alibclinkpartner.R;
import com.alibaba.alibclinkpartner.b;
import com.alibaba.alibclinkpartner.j.e;
import com.alibaba.alibclinkpartner.j.g;
import com.alibaba.alibclinkpartner.j.m;

public class ALPWebviewActivity extends Activity implements OnClickListener {
    private WebView a;
    private ImageView b;
    private ImageView c;
    private TextView d;

    private void a() {
        this.a = (WebView) findViewById(R.id.webview);
        this.c = (ImageView) findViewById(R.id.iv_back);
        this.b = (ImageView) findViewById(R.id.iv_close);
        this.d = (TextView) findViewById(R.id.title);
        this.c.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.a.setWebViewClient(new b());
        this.a.setWebChromeClient(new a(this.d));
    }

    private void a(Bundle bundle, Bundle bundle2) {
        if (bundle2 != null && bundle2.get("webviewUrl") != null) {
            this.a.loadUrl((String) bundle2.get("webviewUrl"));
        } else if (bundle == null || bundle.get("webviewUrl") == null) {
            e.a("ALPWebviewActivity", "loadUrl", "savedInstanceState/webview_url is null");
            finish();
        } else {
            this.a.loadUrl((String) bundle.get("webviewUrl"));
        }
    }

    private void b() {
        WebSettings settings = this.a.getSettings();
        try {
            settings.setJavaScriptEnabled(true);
        } catch (Exception e) {
        }
        settings.setSavePassword(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setDomStorageEnabled(true);
        settings.setAppCachePath(this.a.getContext().getApplicationContext().getDir("cache", 0).getPath());
        settings.setAllowFileAccess(true);
        settings.setAppCacheEnabled(true);
        settings.setDefaultTextEncodingName("UTF-8");
        if (g.a(this)) {
            settings.setCacheMode(-1);
        } else {
            settings.setCacheMode(3);
        }
        settings.setBuiltInZoomControls(false);
    }

    private void c() {
        if (this.a.canGoBack()) {
            this.a.goBack();
        } else {
            finish();
        }
    }

    public void onBackPressed() {
        c();
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_back) {
            onBackPressed();
        } else if (id == R.id.iv_close) {
            finish();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(m.a(this, "activity_alibc_link_webview"));
        e.b("ALPWebviewActivity", "onCreate", "intent = " + (getIntent() == null ? "null" : getIntent().getExtras()) + " " + "saveInstance = " + bundle + " isInit:" + b.b());
        a();
        b();
        if (b.b()) {
            a(getIntent().getExtras(), bundle);
        } else {
            finish();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("webviewUrl", this.a.getUrl());
    }
}

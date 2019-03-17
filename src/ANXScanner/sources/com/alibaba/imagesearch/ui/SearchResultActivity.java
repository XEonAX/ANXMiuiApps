package com.alibaba.imagesearch.ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.JsPromptResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.ali.auth.third.core.model.Constants;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback;
import com.alibaba.baichuan.android.trade.model.AlibcShowParams;
import com.alibaba.baichuan.android.trade.model.OpenType;
import com.alibaba.baichuan.android.trade.page.AlibcBasePage;
import com.alibaba.baichuan.android.trade.page.AlibcPage;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeResult;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.imagesearch.Pailitao;
import com.alibaba.imagesearch.a.a;
import com.alibaba.imagesearch.utils.PLog;
import com.alibaba.imagesearch.utils.c;
import com.alibaba.imagesearch.utils.d;
import com.alibaba.imagesearch.utils.e;
import com.alibaba.imagesearch.utils.f;
import com.alipay.sdk.cons.b;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class SearchResultActivity extends Activity {
    public static final AlibcTradeCallback a = new AlibcTradeCallback() {
        public void onFailure(int i, String str) {
        }

        public void onTradeSuccess(AlibcTradeResult alibcTradeResult) {
        }
    };
    private WebView b;
    private View c;
    private TextView d;
    private String e;
    private a f;
    private WebViewClient g;
    private WebChromeClient h;
    private Handler i = new Handler() {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    SearchResultActivity.this.a("加载超时");
                    return;
                default:
                    return;
            }
        }
    };
    private String j;
    private boolean k = true;

    private void a(String str) {
        if (isFinishing()) {
            PLog.SRPLogE("Activity isFinishing, showAlertDialog failed ");
        } else if (VERSION.SDK_INT < 17 || !isDestroyed()) {
            try {
                Builder builder = new Builder(this);
                builder.setTitle("温馨提示");
                builder.setIcon(17301543);
                builder.setMessage("亲，图片搜索失败了，请稍后重试~~ (" + str + ")");
                builder.setPositiveButton(17039370, new OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        SearchResultActivity.this.finish();
                    }
                });
                builder.create().show();
            } catch (Throwable th) {
                PLog.SRPLogE("showAlertDialog failed error : " + th);
            }
        } else {
            PLog.SRPLogE("Activity isDestroyed, showAlertDialog failed ");
        }
    }

    private void b() {
        if (TextUtils.isEmpty(this.e)) {
            finish();
            return;
        }
        AlibcBasePage alibcPage = new AlibcPage(this.e);
        AlibcShowParams alibcShowParams = new AlibcShowParams();
        alibcShowParams.setOpenType(OpenType.H5);
        AlibcTrade.show(this, this.b, this.g, this.h, alibcPage, alibcShowParams, null, null, a);
    }

    private void b(String str) {
        try {
            String[] split = Uri.decode(new URL(str).getQuery()).split("&");
            Map hashMap = new HashMap();
            for (String split2 : split) {
                String[] split3 = split2.split("=");
                if (split3.length == 2) {
                    hashMap.put(split3[0], split3[1]);
                }
            }
            String str2 = (String) hashMap.get("pageConfig");
            if (str2 != null) {
                JSONObject jSONObject = new JSONObject(str2);
                CharSequence optString = jSONObject.optString(Constants.TITLE);
                if (!TextUtils.isEmpty(optString)) {
                    this.d.setText(optString);
                }
                d.a((Activity) this, jSONObject.optString("statusBarColor"));
                this.c.setBackgroundColor(Color.parseColor(jSONObject.optString("titleBarColor")));
            }
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a() {
        this.i.removeMessages(1);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Pailitao.inited) {
            if (getActionBar() != null) {
                getActionBar().hide();
            }
            if (Pailitao.getSettings().enableWhiteStatusBar && VERSION.SDK_INT >= 23) {
                Window window = getWindow();
                window.addFlags(Integer.MIN_VALUE);
                window.setStatusBarColor(Pailitao.getSettings().statusBarColor);
                if (VERSION.SDK_INT >= 26) {
                    getWindow().getDecorView().setSystemUiVisibility(8208);
                    window.setNavigationBarColor(Pailitao.getSettings().statusBarColor);
                } else {
                    getWindow().getDecorView().setSystemUiVisibility(8192);
                }
            }
            setContentView(f.a(this, "layout", "com_alibaba_imagesearch_activity_search_result"));
            this.b = new WebView(this);
            this.b.setLayoutParams(new LayoutParams(-1, -1));
            ((ViewGroup) findViewById(f.a(this, AlibcConstants.ID, "activity_search_result"))).addView(this.b);
            this.d = (TextView) findViewById(f.a(this, AlibcConstants.ID, Constants.TITLE));
            this.c = findViewById(f.a(this, AlibcConstants.ID, "com_taobao_tae_sdk_web_view_title_bar"));
            findViewById(f.a(this, AlibcConstants.ID, "back_button")).setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    SearchResultActivity.this.finish();
                }
            });
            findViewById(f.a(this, AlibcConstants.ID, "close_button")).setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    SearchResultActivity.this.finish();
                }
            });
            if (c.c().enableRefreshButton) {
                View findViewById = findViewById(f.a(this, AlibcConstants.ID, "refresh_button"));
                findViewById.setVisibility(0);
                findViewById.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        SearchResultActivity.this.b();
                    }
                });
            }
            if (bundle != null) {
                this.e = bundle.getString("extra_url");
            } else {
                Intent intent = getIntent();
                if (intent != null) {
                    this.e = intent.getStringExtra("extra_url");
                }
            }
            b(this.e);
            this.h = new WebChromeClient() {
                public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                    if (!TextUtils.equals(str3, "bc_hybrid:")) {
                        return false;
                    }
                    boolean a = c.a(str2, SearchResultActivity.this.b, SearchResultActivity.this.f);
                    jsPromptResult.confirm("");
                    return a;
                }

                public void onReceivedTitle(WebView webView, String str) {
                    super.onReceivedTitle(webView, str);
                    if (TextUtils.isEmpty(SearchResultActivity.this.d.getText())) {
                        SearchResultActivity.this.d.setText(str);
                    }
                }
            };
            this.g = new WebViewClient() {
                @TargetApi(11)
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    webView.clearHistory();
                    SearchResultActivity.this.a();
                    PLog.SRPLogD(" srp webview onPageFinished");
                }

                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    super.onPageStarted(webView, str, bitmap);
                    if (!SearchResultActivity.this.isFinishing()) {
                        if (VERSION.SDK_INT < 17 || !SearchResultActivity.this.isDestroyed()) {
                            SearchResultActivity.this.a();
                            SearchResultActivity.this.i.sendEmptyMessageDelayed(1, 10000);
                            PLog.SRPLogD(" srp webview onPageStarted");
                        }
                    }
                }

                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    super.onReceivedError(webView, i, str, str2);
                    SearchResultActivity.this.a("网络错误");
                    SearchResultActivity.this.a();
                }

                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                    if (VERSION.SDK_INT < 23 || webResourceError.getErrorCode() != -8) {
                        SearchResultActivity.this.a();
                        if (VERSION.SDK_INT >= 23) {
                            PLog.SRPLogE(" srp webview onReceivedError errorCode: " + webResourceError.getErrorCode() + " errorMsg: " + webResourceError.getDescription());
                            return;
                        }
                        return;
                    }
                    PLog.SRPLogE(" srp webview timeout errorCode: " + webResourceError.getErrorCode() + " errorMsg: " + webResourceError.getDescription());
                }

                public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                    PLog.SRPLogE(" srp webview onReceivedHttpError : " + webResourceResponse);
                }

                public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                    PLog.SRPLogE(" srp webview onReceivedSslError : " + sslError);
                }

                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (c.c().forceHttps && str.startsWith("http://")) {
                        str = b.a + str.substring(4, str.length());
                    }
                    if (com.alibaba.imagesearch.utils.b.a(SearchResultActivity.this)) {
                        AlibcBasePage alibcPage = new AlibcPage(str);
                        Map hashMap = new HashMap();
                        hashMap.put("vendorId", c.c().getVendorId());
                        hashMap.put("version", Pailitao.VERSION);
                        hashMap.put("brand", c.c().getBrand());
                        AlibcShowParams alibcShowParams = new AlibcShowParams();
                        alibcShowParams.setOpenType(f.a(c.c().openType));
                        AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
                        alibcTaokeParams.setPid(c.c().getTaokePid());
                        AlibcTrade.show(SearchResultActivity.this, alibcPage, alibcShowParams, alibcTaokeParams, hashMap, SearchResultActivity.a);
                    } else {
                        new Builder(SearchResultActivity.this).setIcon(17301543).setTitle("温馨提示").setMessage("暂时没有网络哦,请检查网络连接后再试").setCancelable(false).setPositiveButton("确定", new OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                            }
                        }).create().show();
                    }
                    return true;
                }
            };
            this.f = new com.alibaba.imagesearch.a.c(null);
            this.f.a(this);
            this.j = getApplicationContext().getDir("cache", 0).getAbsolutePath();
            c.a((Context) this, this.b, false);
            this.b.setWebViewClient(this.g);
            this.b.setWebChromeClient(this.h);
            PLog.SRPLogD("result url is " + this.e);
            this.b.addOnLayoutChangeListener(new OnLayoutChangeListener() {
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (SearchResultActivity.this.k && i4 - i2 > 0 && i3 - i > 0) {
                        SearchResultActivity.this.b();
                        SearchResultActivity.this.k = false;
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("Pailitao not inited yet");
    }

    protected void onDestroy() {
        if (this.i != null) {
            this.i.removeCallbacksAndMessages(null);
        }
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null && this.b != null) {
            String stringExtra = intent.getStringExtra("extra_url");
            if (!TextUtils.isEmpty(stringExtra)) {
                b(stringExtra);
                this.e = stringExtra;
                this.b.stopLoading();
                this.b.clearHistory();
                AlibcBasePage alibcPage = new AlibcPage(this.e);
                AlibcShowParams alibcShowParams = new AlibcShowParams();
                alibcShowParams.setOpenType(OpenType.H5);
                AlibcTrade.show(this, this.b, this.g, this.h, alibcPage, alibcShowParams, null, null, a);
            }
        }
    }

    protected void onResume() {
        super.onResume();
        e.a("PailitaoResult");
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!TextUtils.isEmpty(this.e)) {
            bundle.putString("extra_url", this.e);
        }
    }
}

package com.alibaba.imagesearch;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.YuvImage;
import android.hardware.Camera;
import android.hardware.Camera.Size;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ali.auth.third.core.MemberSDK;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.login.LoginService;
import com.ali.auth.third.login.callback.LogoutCallback;
import com.alibaba.baichuan.android.trade.AlibcContext;
import com.alibaba.baichuan.android.trade.AlibcTrade;
import com.alibaba.baichuan.android.trade.AlibcTradeSDK;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback;
import com.alibaba.baichuan.android.trade.callback.AlibcTradeInitCallback;
import com.alibaba.baichuan.android.trade.model.AlibcShowParams;
import com.alibaba.baichuan.android.trade.model.OpenType;
import com.alibaba.baichuan.android.trade.page.AlibcBasePage;
import com.alibaba.baichuan.android.trade.page.AlibcDetailPage;
import com.alibaba.baichuan.android.trade.page.AlibcPage;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeResult;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.webview.jsbridge.AlibcJsCallbackContext;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcPluginManager;
import com.alibaba.imagesearch.ui.PailitaoActivity;
import com.alibaba.imagesearch.ui.PailitaoRouterActivity;
import com.alibaba.imagesearch.ui.SearchResultActivity;
import com.alibaba.imagesearch.utils.PLog;
import com.alibaba.imagesearch.utils.e;
import com.alibaba.imagesearch.utils.f;
import com.alibaba.mtl.appmonitor.AppMonitor;
import com.alibaba.mtl.log.upload.UploadEngine;
import com.alibaba.wireless.security.open.nocaptcha.INoCaptchaComponent;
import com.taobao.applink.util.TBAppLinkUtil;
import com.taobao.ma.analyze.api.MaAnalyzeAPI;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaType;
import com.taobao.tao.remotebusiness.RemoteBusiness;
import com.ut.mini.internal.UTTeamWork;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import org.json.JSONException;
import org.json.JSONObject;

public final class Pailitao {
    public static final int REQ_PAILITAO = 257;
    public static final String VERSION = "2.4.6.0";
    private static Handler a = new Handler();
    private static c b = new c();
    private static String c;
    public static volatile boolean inited = false;

    public interface PailitaoInitCallback {
        void onFailure(int i, String str);

        void onSuccess();
    }

    public interface SearchImageCallback {
        void onScrollChanged(boolean z);

        void onSearchError(SearchResult searchResult);

        void onSearchFinished(SearchResult searchResult);

        boolean onWebViewJumpWithoutNetwork(WebView webView);

        void onWebViewPageFinished(WebView webView, String str);

        void onWebViewReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError);

        void onWebViewReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse);

        void onWebViewReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError);

        WebViewEnv shouldOpenInDifferentWebView();
    }

    public static class WebViewEnv {
        public WebChromeClient chromeClient;
        public WebViewClient client;
        public WebView webView;
    }

    private static class a extends WebChromeClient {
        private final Context a;
        private SearchImageCallback b;
        private Rect c;
        private String d;
        private String e;
        private final com.alibaba.imagesearch.a.a f;

        public a(SearchImageCallback searchImageCallback, WebView webView, Context context) {
            this.b = searchImageCallback;
            this.a = context;
            this.f = new com.alibaba.imagesearch.a.c(searchImageCallback);
            this.f.a(webView.getContext());
        }

        public final void a(Rect rect) {
            this.c = rect;
        }

        public final void a(String str) {
            this.d = str;
        }

        public final void b(String str) {
            this.e = str;
        }

        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            PLog.d("searchImage in webview onJsPrompt msg = " + str2);
            if (!TextUtils.equals(str3, "bc_hybrid:")) {
                return false;
            }
            com.alibaba.imagesearch.a.b d = com.alibaba.imagesearch.utils.c.d(str2);
            PLog.d("onJsPrompt protocol = " + d);
            if (TextUtils.equals(d.b, "LoadFinished")) {
                SearchResult searchResult = new SearchResult();
                searchResult.imageSpec = this.c;
                searchResult.imageKey = this.d;
                searchResult.imageUrl = this.e;
                try {
                    JSONObject jSONObject = new JSONObject(d.c);
                    searchResult.region = f.a(jSONObject.optString("region"));
                    searchResult.httpResponseCode = jSONObject.optInt("httpResponseCode");
                    searchResult.retCode = jSONObject.optString("retCode");
                    searchResult.retMsg = jSONObject.optString("retMsg");
                } catch (JSONException e) {
                    PLog.e("parse JSBridgeProtocol error = " + e);
                    e.printStackTrace();
                }
                Pailitao.d();
                if (this.b != null) {
                    this.b.onSearchFinished(searchResult);
                    PLog.d("onSearchFinished");
                }
            }
            PLog.d("jsBridge.execute protocol = " + d);
            boolean execute = this.f.execute(d.b, d.c, new AlibcJsCallbackContext(webView));
            jsPromptResult.confirm("");
            if (this.a instanceof Activity) {
                return execute;
            }
            String a = Pailitao.b(d);
            if (a != null) {
                Pailitao.viewAuctionDetailByContext(this.a, a);
            }
            return true;
        }
    }

    private static class b extends WebViewClient {
        private final boolean a;
        private Context b;
        private SearchImageCallback c;
        private Map<String, String> d;

        public b(Context context, SearchImageCallback searchImageCallback, boolean z) {
            this.b = context;
            this.c = searchImageCallback;
            this.a = z;
        }

        public final void a(Map<String, String> map) {
            this.d = map;
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            Pailitao.d();
            this.c.onWebViewPageFinished(webView, str);
        }

        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            Pailitao.d();
            if (VERSION.SDK_INT >= 23) {
                PLog.e("onReceivedError: " + webResourceError.getErrorCode() + " " + webResourceError.getDescription());
            } else {
                PLog.e("onReceivedError");
            }
            this.c.onWebViewReceivedError(webView, webResourceRequest, webResourceError);
        }

        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (VERSION.SDK_INT >= 21) {
                PLog.e("onReceivedHttpError: " + webResourceResponse.getStatusCode() + " header =" + webResourceRequest.getRequestHeaders() + " url =" + webResourceRequest.getUrl());
            } else {
                PLog.e("onReceivedHttpError");
            }
            this.c.onWebViewReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            PLog.e("onReceivedSslError: " + sslError.getPrimaryError());
            this.c.onWebViewReceivedSslError(webView, sslErrorHandler, sslError);
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            PLog.d("shouldOverrideUrlLoading url = " + str);
            if (!com.alibaba.imagesearch.utils.b.a(this.b)) {
                boolean onWebViewJumpWithoutNetwork = this.c.onWebViewJumpWithoutNetwork(webView);
                PLog.d("shouldOverrideUrlLoading onWebViewJumpWithoutNetwork");
                if (onWebViewJumpWithoutNetwork) {
                    return true;
                }
            }
            if (this.b instanceof Activity) {
                WebViewEnv shouldOpenInDifferentWebView = this.c.shouldOpenInDifferentWebView();
                if (shouldOpenInDifferentWebView != null) {
                    AlibcBasePage alibcPage = new AlibcPage(str);
                    Map hashMap = new HashMap();
                    hashMap.put("vendorId", com.alibaba.imagesearch.utils.c.c().getVendorId());
                    hashMap.put("version", Pailitao.VERSION);
                    hashMap.put("brand", com.alibaba.imagesearch.utils.c.c().getBrand());
                    AlibcShowParams alibcShowParams = new AlibcShowParams();
                    alibcShowParams.setOpenType(f.a(com.alibaba.imagesearch.utils.c.c().openType));
                    AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
                    alibcTaokeParams.setPid(com.alibaba.imagesearch.utils.c.c().getTaokePid());
                    AlibcTrade.show((Activity) this.b, shouldOpenInDifferentWebView.webView, shouldOpenInDifferentWebView.client, shouldOpenInDifferentWebView.chromeClient, alibcPage, alibcShowParams, alibcTaokeParams, hashMap, SearchResultActivity.a);
                    return true;
                } else if (this.d == null || !TextUtils.equals((CharSequence) this.d.get("skipOverrideUrlLoading"), "1")) {
                    AlibcBasePage alibcPage2 = new AlibcPage(str);
                    Map hashMap2 = new HashMap();
                    hashMap2.put("vendorId", com.alibaba.imagesearch.utils.c.c().getVendorId());
                    hashMap2.put("version", Pailitao.VERSION);
                    hashMap2.put("brand", com.alibaba.imagesearch.utils.c.c().getBrand());
                    AlibcShowParams alibcShowParams2 = new AlibcShowParams();
                    alibcShowParams2.setOpenType(f.a(com.alibaba.imagesearch.utils.c.c().openType));
                    AlibcTaokeParams alibcTaokeParams2 = new AlibcTaokeParams();
                    alibcTaokeParams2.setPid(com.alibaba.imagesearch.utils.c.c().getTaokePid());
                    AlibcTrade.show((Activity) this.b, alibcPage2, alibcShowParams2, alibcTaokeParams2, hashMap2, SearchResultActivity.a);
                    return true;
                } else {
                    PLog.d("skipOverrideUrlLoading");
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            PLog.d("shouldOverrideUrlLoading standAlone mode url = " + str);
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    private static class c extends Handler {
        private static SearchImageCallback a;

        private c() {
        }

        /* synthetic */ c(AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a(SearchImageCallback searchImageCallback) {
            a = searchImageCallback;
        }

        public void handleMessage(Message message) {
            if (a != null) {
                SearchResult searchResult = new SearchResult();
                searchResult.retCode = SearchResult.WEBVIEW_TIMEOUT;
                searchResult.retMsg = SearchResult.WEBVIEW_TIMEOUT;
                PLog.e("onSearchError: " + searchResult);
                a.onSearchError(searchResult);
            }
        }
    }

    private static SearchResult a(byte[] bArr, RectF rectF, String str, int i) {
        SearchResult searchResult = new SearchResult();
        PLog.similarLogD("\n====== predictSimilarAuction Start ======");
        if (!a(searchResult)) {
            return searchResult;
        }
        Rect rect = new Rect(1, 1, 1, 1);
        if (bArr != null) {
            PLog.similarLogD("predictSimilarAuction start by imageBytes, length = " + bArr.length);
            PLog.similarLogD("\n====== Upload Image Start ======");
            str = com.alibaba.imagesearch.utils.c.a(bArr, rect);
            PLog.similarLogD("====== Upload Image End ======");
        } else if (com.alibaba.imagesearch.utils.c.c(str)) {
            PLog.similarLogD("\npredictSimilarAuction start by CDNUrl, CDNUrl = " + str);
        } else {
            PLog.similarLogD("predictSimilarAuction start by imageUri, Uri = " + str);
            PLog.similarLogD("\n====== Upload Image Start ======");
            str = com.alibaba.imagesearch.utils.c.a(str, rect);
            PLog.similarLogD("====== Upload Image End ======");
        }
        searchResult.imageSpec = rect;
        searchResult.imageUrl = str;
        if (rectF != null) {
            int i2 = rect.right;
            int i3 = rect.bottom;
            searchResult.region = new Rect((int) (rectF.left * ((float) i2)), (int) (rectF.top * ((float) i3)), (int) (((float) i2) * rectF.right), (int) (((float) i3) * rectF.bottom));
        }
        if (TextUtils.isEmpty(str)) {
            PLog.similarLogE("current imageKey is null");
            searchResult.retCode = SearchResult.RETCODE_IMGKEY_EMPTY;
            searchResult.retMsg = SearchResult.RETCODE_IMGKEY_EMPTY;
            return null;
        }
        CharSequence b = com.alibaba.imagesearch.utils.c.b(str);
        searchResult.imageKey = b;
        if (TextUtils.isEmpty(b)) {
            PLog.similarLogE("current tfskey is null");
            searchResult.retCode = SearchResult.RETCODE_TFSKEY_EMPTY;
            searchResult.retMsg = SearchResult.RETCODE_TFSKEY_EMPTY;
            return null;
        }
        a(searchResult, i);
        com.alibaba.imagesearch.utils.c.a(searchResult);
        PLog.similarLogD("\n====== predictSimilarAuction End ======");
        return searchResult;
    }

    private static void a(Context context, WebView webView, String str, byte[] bArr, Rect rect, Map<String, String> map, SearchImageCallback searchImageCallback) {
        boolean z;
        if (context instanceof Activity) {
            PLog.searchLogD("searchImage with activity");
            z = false;
        } else {
            boolean z2 = !isTaobaoAppInstalled(context);
            PLog.searchLogD("searchImage without activity, standAlone: " + z2);
            z = z2;
        }
        start();
        if (searchImageCallback != null) {
            SearchResult searchResult = new SearchResult();
            if (context == null || webView == null || (TextUtils.isEmpty(str) && bArr == null)) {
                searchResult.retCode = SearchResult.RETCODE_SEARCH_ERROR;
                searchResult.retMsg = SearchResult.RETCODE_PARAM_ILLEGAL;
                PLog.e("onSearchError: " + searchResult);
                searchImageCallback.onSearchError(searchResult);
            } else if (a(searchResult)) {
                String a;
                final Rect rect2 = new Rect(1, 1, 1, 1);
                if (bArr != null) {
                    a = com.alibaba.imagesearch.utils.c.a(bArr, rect2);
                } else {
                    if (!com.alibaba.imagesearch.utils.c.c(str)) {
                        str = com.alibaba.imagesearch.utils.c.a(str, rect2);
                    }
                    a = str;
                }
                if (TextUtils.isEmpty(a)) {
                    searchResult.retCode = SearchResult.RETCODE_SEARCH_ERROR;
                    searchResult.retMsg = SearchResult.RETCODE_IMGKEY_EMPTY;
                    PLog.e("onSearchError: " + searchResult);
                    searchImageCallback.onSearchError(searchResult);
                    return;
                }
                final Object b = com.alibaba.imagesearch.utils.c.b(a);
                if (TextUtils.isEmpty(b)) {
                    searchResult.retCode = SearchResult.RETCODE_SEARCH_ERROR;
                    searchResult.retMsg = SearchResult.RETCODE_TFSKEY_EMPTY;
                    PLog.e("onSearchError: " + searchResult);
                    searchImageCallback.onSearchError(searchResult);
                    return;
                }
                b.a(searchImageCallback);
                c();
                final WebView webView2 = webView;
                final Context context2 = context;
                final SearchImageCallback searchImageCallback2 = searchImageCallback;
                final Map<String, String> map2 = map;
                final Rect rect3 = rect;
                a.post(new Runnable() {
                    public void run() {
                        if (!TextUtils.equals(Pailitao.c, webView2.toString())) {
                            com.alibaba.imagesearch.utils.c.a(context2, webView2, z);
                            Pailitao.c = webView2.toString();
                            PLog.d("initWebviewSettings");
                        }
                        WebViewClient bVar = new b(context2, searchImageCallback2, z);
                        bVar.a(map2);
                        webView2.setWebViewClient(bVar);
                        WebChromeClient aVar = new a(searchImageCallback2, webView2, context2);
                        aVar.a(rect2);
                        aVar.a(b);
                        aVar.b(a);
                        webView2.setWebChromeClient(aVar);
                        webView2.setTag(f.a(context2, AlibcConstants.ID, "com_alibaba_iamgesearch__web_client_holder"), bVar);
                        webView2.setTag(f.a(context2, AlibcConstants.ID, "com_alibaba_iamgesearch__web_chrome_client_holder"), aVar);
                        String a = com.alibaba.imagesearch.utils.c.a(a, map2);
                        if (rect3 != null) {
                            a = a + "&region=" + f.a(rect3);
                        }
                        PLog.searchLogD("searchImage srpUrl = " + a);
                        if (context2 instanceof Activity) {
                            PLog.searchLogD("searchImage loadBy bc");
                            AlibcBasePage alibcPage = new AlibcPage(a);
                            AlibcShowParams alibcShowParams = new AlibcShowParams();
                            alibcShowParams.setOpenType(OpenType.H5);
                            AlibcTrade.show((Activity) context2, webView2, bVar, aVar, alibcPage, alibcShowParams, null, null, SearchResultActivity.a);
                            return;
                        }
                        PLog.searchLogD("searchImage loadBy webview");
                        webView2.loadUrl(a);
                    }
                });
            } else {
                PLog.e("onSearchError: " + searchResult);
                searchImageCallback.onSearchError(searchResult);
            }
        }
    }

    private static void a(SearchResult searchResult, int i) {
        MtopRequest mtopRequest = new MtopRequest();
        mtopRequest.setApiName("mtop.taobao.wsearch.picture.sdk.samsung");
        mtopRequest.setVersion("1.0");
        mtopRequest.setNeedEcode(false);
        mtopRequest.setNeedSession(false);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("vm", "nw");
            jSONObject.put("m", "api4etao");
            jSONObject.put("biz_type", "pai");
            jSONObject.put("page", 1);
            jSONObject.put("vendor", com.alibaba.imagesearch.utils.c.c().vendorId);
            jSONObject.put("brand", com.alibaba.imagesearch.utils.c.c().brand);
            jSONObject.put("region", f.a(searchResult.region));
            String str = "n";
            if (i <= 0) {
                i = 10;
            }
            jSONObject.put(str, i);
            jSONObject.put("searchimg", searchResult.imageKey);
            if (com.alibaba.imagesearch.utils.c.c().notInCN) {
                jSONObject.put("extraParams", "editionCode:notCN");
            }
            mtopRequest.setData(jSONObject.toString());
            PLog.similarLogD("notInCN = " + com.alibaba.imagesearch.utils.c.c().notInCN);
            PLog.similarLogD("mtop request = " + mtopRequest);
            RemoteBusiness build = RemoteBusiness.build(mtopRequest);
            long currentTimeMillis = System.currentTimeMillis();
            MtopResponse syncRequest = build.syncRequest();
            if (SearchResult.isLimited(syncRequest)) {
                searchResult.httpResponseCode = 420;
                searchResult.retCode = SearchResult.RETCODE_FLOW_LIMITIED;
                searchResult.retMsg = SearchResult.RETCODE_FLOW_LIMITIED;
                return;
            }
            PLog.PerformanceLog("search request finish, use " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            PLog.similarLogD("MtopResponse Msg = " + syncRequest.getRetMsg());
            jSONObject = syncRequest.getDataJsonObject();
            if (jSONObject == null) {
                PLog.similarLogE("res.getDataJsonObject is null");
                searchResult.httpResponseCode = syncRequest.getResponseCode();
                searchResult.retCode = SearchResult.RETCODE_REQUEST_FAILED;
                searchResult.retMsg = syncRequest.getRetMsg() + "(" + syncRequest.getRetCode() + ")";
                return;
            }
            searchResult.httpResponseCode = syncRequest.getResponseCode();
            searchResult.retCode = SearchResult.RETCODE_REQUEST_SUCCESS;
            searchResult.retMsg = SearchResult.RETCODE_REQUEST_SUCCESS;
            PLog.similarLogD("mtop respone = " + jSONObject);
            com.alibaba.imagesearch.utils.c.a(jSONObject, searchResult);
        } catch (JSONException e) {
            PLog.e("construct req error: " + e.getMessage());
        }
    }

    private static void a(boolean z) {
    }

    private static boolean a(SearchResult searchResult) {
        int i = 0;
        do {
            if (KernelContext.isInitOk != null && KernelContext.isInitOk.booleanValue()) {
                break;
            }
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                PLog.e("checkBeforeSearch InterruptedException happened e = " + e);
                Thread.currentThread().interrupt();
            }
            i++;
        } while (i < 6);
        if (!(KernelContext.isInitOk == null ? false : KernelContext.isInitOk.booleanValue())) {
            PLog.e("baichuan SDK init time out ,return");
            searchResult.retCode = SearchResult.RETCODE_SEARCH_ERROR;
            searchResult.retMsg = SearchResult.RETCODE_BAICHUAN_INITFAILED;
            return false;
        } else if (com.alibaba.imagesearch.utils.b.a(AlibcContext.context)) {
            return true;
        } else {
            PLog.e("network traffic, return");
            searchResult.retCode = SearchResult.RETCODE_SEARCH_ERROR;
            searchResult.retMsg = SearchResult.RETCODE_NET_TRAFFIC;
            return false;
        }
    }

    private static String b(com.alibaba.imagesearch.a.b bVar) {
        if (bVar == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(bVar.c);
            if (!AlibcConstants.DETAIL.equalsIgnoreCase(jSONObject.optString("type"))) {
                return null;
            }
            jSONObject = jSONObject.optJSONObject("params");
            if (jSONObject == null) {
                return null;
            }
            CharSequence optString = jSONObject.optString("itemId");
            return !TextUtils.isEmpty(optString) ? optString : null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static void c() {
        PLog.e("startWebviewTimeout");
        b.removeCallbacksAndMessages(null);
        b.sendEmptyMessageDelayed(0, 30000);
    }

    private static void d() {
        PLog.e("stopWebviewTimeout");
        b.removeCallbacksAndMessages(null);
    }

    public static MaResult decode(Bitmap bitmap) {
        if (bitmap == null) {
            PLog.MaLogE("srcImg == null");
            return null;
        }
        com.alibaba.imagesearch.utils.c.d();
        MaResult decode = MaAnalyzeAPI.decode(bitmap, MaType.QR, MaType.PRODUCT, MaType.MEDICINE);
        PLog.MaLogD("MaResult = " + decode);
        return decode;
    }

    public static MaResult decode(byte[] bArr, Camera camera) {
        if (bArr == null || bArr.length == 0) {
            PLog.MaLogE("yuvData is empty");
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        com.alibaba.imagesearch.utils.c.d();
        Size previewSize = camera.getParameters().getPreviewSize();
        MaResult decode = MaAnalyzeAPI.decode(new YuvImage(bArr, camera.getParameters().getPreviewFormat(), previewSize.width, previewSize.height, null), null, MaType.QR, MaType.PRODUCT, MaType.MEDICINE);
        PLog.MaLogD("MaResult = " + decode + " timeUse = " + (System.currentTimeMillis() - currentTimeMillis));
        return decode;
    }

    private static void e() {
        try {
            AlibcConfigService instance = AlibcConfigService.getInstance();
            Field declaredField = instance.getClass().getDeclaredField("a");
            Field declaredField2 = instance.getClass().getDeclaredField("h");
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            ((Handler) declaredField2.get(instance)).removeCallbacks((Runnable) declaredField.get(instance));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getMaQueryUrl(int i, String str) {
        return com.alibaba.imagesearch.utils.a.a(i, str);
    }

    public static PailitaoSettings getSettings() {
        return com.alibaba.imagesearch.utils.c.c();
    }

    public static void initialize(Application application, PailitaoSettings pailitaoSettings) {
        initialize(application, pailitaoSettings, new PailitaoInitCallback() {
            public void onFailure(int i, String str) {
            }

            public void onSuccess() {
            }
        });
    }

    public static final void initialize(final Application application, PailitaoSettings pailitaoSettings, final PailitaoInitCallback pailitaoInitCallback) {
        if (pailitaoSettings != null && !TextUtils.isEmpty(pailitaoSettings.getVendorId())) {
            com.alibaba.imagesearch.utils.c.a(pailitaoSettings);
            PLog.initLogD("settings = " + pailitaoSettings);
            AlibcTradeSDK.asyncInit(application, new AlibcTradeInitCallback() {
                public void onFailure(int i, String str) {
                    Pailitao.inited = false;
                    Map hashMap = new HashMap();
                    hashMap.put(INoCaptchaComponent.errorCode, i + "");
                    hashMap.put("errorMsg", str);
                    e.a("PailitaoHome", "BCInitFailed", hashMap);
                    PLog.initLogD("Alibc init Failed i = " + i + " msg = " + str);
                    if (pailitaoInitCallback != null) {
                        pailitaoInitCallback.onFailure(i, str);
                    }
                }

                public void onSuccess() {
                    PLog.initLogD("Alibc init Success");
                    AlibcPluginManager.registerPlugin("PSFuncBridge", com.alibaba.imagesearch.a.c.class);
                    com.alibaba.baichuan.android.trade.a.setISVCode(com.alibaba.imagesearch.utils.c.c().getVendorId());
                    AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
                    alibcTaokeParams.setPid(com.alibaba.imagesearch.utils.c.c().getTaokePid());
                    com.alibaba.baichuan.android.trade.a.setTaokeParams(alibcTaokeParams);
                    com.alibaba.imagesearch.utils.c.a(application);
                    com.alibaba.imagesearch.utils.c.b(application);
                    if (AlibcTradeCommon.context == null) {
                        AlibcTradeCommon.context = application;
                    }
                    Pailitao.inited = true;
                    if (pailitaoInitCallback != null) {
                        pailitaoInitCallback.onSuccess();
                    }
                }
            });
        } else if (pailitaoInitCallback != null) {
            pailitaoInitCallback.onFailure(-1, "settings is null or vendorId is empty");
        }
    }

    public static boolean isTaobaoAppInstalled(Context context) {
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        for (PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
            if (TextUtils.equals(TBAppLinkUtil.TAOPACKAGENAME, packageInfo.packageName)) {
                return true;
            }
        }
        return false;
    }

    public static void logout() {
        ((LoginService) MemberSDK.getService(LoginService.class)).logout(new LogoutCallback() {
            public void onFailure(int i, String str) {
                PLog.e("logout failed, code " + i + "  msg:" + str);
            }

            public void onSuccess() {
                PLog.d("logout succ");
            }
        });
    }

    @Deprecated
    public static ArrayList<Auction> predictSimilarAuctions(String str) {
        SearchResult a = a(null, null, str, 10);
        return a == null ? null : a.auctions;
    }

    @Deprecated
    public static ArrayList<Auction> predictSimilarAuctions(byte[] bArr) {
        SearchResult a = a(bArr, null, null, 10);
        return a == null ? null : a.auctions;
    }

    public static void release() {
        com.alibaba.baichuan.android.trade.a.destory();
        d();
    }

    public static void searchBy(Context context, WebView webView, String str, Map<String, String> map, SearchImageCallback searchImageCallback) {
        a(context, webView, str, null, null, map, searchImageCallback);
    }

    public static void searchBy(Context context, WebView webView, byte[] bArr, Map<String, String> map, SearchImageCallback searchImageCallback) {
        a(context, webView, null, bArr, null, map, searchImageCallback);
    }

    public static void searchImage(Activity activity, WebView webView, String str, Rect rect, SearchImageCallback searchImageCallback) {
        a(activity, webView, str, null, rect, null, searchImageCallback);
    }

    public static void searchImage(Activity activity, WebView webView, String str, Rect rect, Map<String, String> map, SearchImageCallback searchImageCallback) {
        a(activity, webView, str, null, rect, map, searchImageCallback);
    }

    public static void searchImage(Activity activity, WebView webView, String str, SearchImageCallback searchImageCallback) {
        a(activity, webView, str, null, null, null, searchImageCallback);
    }

    public static void searchImage(Activity activity, WebView webView, String str, Map<String, String> map, SearchImageCallback searchImageCallback) {
        a(activity, webView, str, null, null, map, searchImageCallback);
    }

    public static void searchImage(Activity activity, WebView webView, byte[] bArr, SearchImageCallback searchImageCallback) {
        a(activity, webView, null, bArr, null, null, searchImageCallback);
    }

    public static void searchImage(Activity activity, WebView webView, byte[] bArr, Map<String, String> map, SearchImageCallback searchImageCallback) {
        a(activity, webView, null, bArr, null, map, searchImageCallback);
    }

    public static void searchImage(Context context, String str) {
        searchImage(context, str, null);
    }

    public static void searchImage(Context context, String str, RectF rectF, Map<String, String> map) {
        e.a("PailitaoHome", "searchImage");
        if (context != null) {
            PLog.searchLogD("==========searchImage by " + str + "============");
            if (TextUtils.isEmpty(str)) {
                PLog.similarLogE("searchImage by empty path = " + str);
                str = "";
            }
            if (com.alibaba.imagesearch.utils.c.c(str)) {
                PLog.searchLogD("isCDNUrl fileName = " + str);
                c.a(context, com.alibaba.imagesearch.utils.c.a(str, (Map) map));
                return;
            }
            Intent intent = new Intent();
            intent.setClass(context, PailitaoActivity.class);
            intent.putExtra("extra_image_type", "pathtype");
            intent.putExtra("extra_image", str);
            intent.putExtra("extra_rect", rectF);
            if (map != null) {
                Bundle bundle = new Bundle();
                for (Entry entry : map.entrySet()) {
                    bundle.putString((String) entry.getKey(), (String) entry.getValue());
                }
                intent.putExtra("pageConfig", bundle);
            }
            start();
            if (context instanceof Activity) {
                ((Activity) context).startActivityForResult(intent, 257);
            } else {
                context.startActivity(intent);
            }
        }
    }

    public static void searchImage(Context context, String str, Map<String, String> map) {
        searchImage(context, str, null, (Map) map);
    }

    public static void searchImage(Context context, byte[] bArr) {
        searchImage(context, bArr, null);
    }

    public static void searchImage(Context context, byte[] bArr, RectF rectF, Map<String, String> map) {
        e.a("PailitaoHome", "searchImage");
        PLog.searchLogD("==========searchImage by imageBytes legth = " + bArr.length + "============");
        Intent intent = new Intent();
        intent.setClass(context, PailitaoActivity.class);
        if (map != null) {
            Bundle bundle = new Bundle();
            for (Entry entry : map.entrySet()) {
                bundle.putString((String) entry.getKey(), (String) entry.getValue());
            }
            intent.putExtra("pageConfig", bundle);
        }
        intent.putExtra("extra_rect", rectF);
        com.alibaba.imagesearch.utils.c.a(bArr);
        start();
        if (context instanceof Activity) {
            ((Activity) context).startActivityForResult(intent, 257);
        } else {
            context.startActivity(intent);
        }
    }

    public static void searchImage(Context context, byte[] bArr, Map<String, String> map) {
        searchImage(context, bArr, null, (Map) map);
    }

    public static SearchResult searchSimilarAuctions(String str) {
        return a(null, null, str, 10);
    }

    public static SearchResult searchSimilarAuctions(String str, int i) {
        return a(null, null, str, i);
    }

    public static SearchResult searchSimilarAuctions(String str, RectF rectF, int i) {
        return a(null, rectF, str, i);
    }

    public static SearchResult searchSimilarAuctions(byte[] bArr) {
        return a(bArr, null, null, 10);
    }

    public static SearchResult searchSimilarAuctions(byte[] bArr, int i) {
        return a(bArr, null, null, i);
    }

    public static SearchResult searchSimilarAuctions(byte[] bArr, RectF rectF, int i) {
        return a(bArr, rectF, null, i);
    }

    public static SearchResult searchSimilarAuctionsWithImageKey(String str, Rect rect) {
        return searchSimilarAuctionsWithImageKey(str, rect, 10);
    }

    public static SearchResult searchSimilarAuctionsWithImageKey(String str, Rect rect, int i) {
        SearchResult searchResult = new SearchResult();
        searchResult.imageKey = str;
        searchResult.region = rect;
        PLog.similarLogD("\n====== predictSimilarAuction by tfskey Start ======");
        if (a(searchResult)) {
            a(searchResult, i);
            com.alibaba.imagesearch.utils.c.a(searchResult);
            PLog.similarLogD("similar auctions size = " + searchResult.auctions.size());
            PLog.similarLogD("\n====== predictSimilarAuction End ======");
        }
        return searchResult;
    }

    public static void setSettings(PailitaoSettings pailitaoSettings) {
        com.alibaba.imagesearch.utils.c.a(pailitaoSettings);
    }

    public static boolean showHomePage(Activity activity, AlibcTradeCallback alibcTradeCallback) {
        AlibcBasePage alibcPage = new AlibcPage("http://m.taobao.com");
        Map hashMap = new HashMap();
        hashMap.put("vendorId", com.alibaba.imagesearch.utils.c.c().getVendorId());
        hashMap.put("version", VERSION);
        hashMap.put("brand", com.alibaba.imagesearch.utils.c.c().getBrand());
        AlibcShowParams alibcShowParams = new AlibcShowParams();
        alibcShowParams.setOpenType(f.a(getSettings().openType));
        AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
        alibcTaokeParams.setPid(com.alibaba.imagesearch.utils.c.c().getTaokePid());
        PLog.MaLogD("showMaPage ===> taokeParams = " + alibcTaokeParams + "  extraParams = " + hashMap);
        PLog.MaLogD("show home page");
        AlibcTrade.show(activity, alibcPage, alibcShowParams, alibcTaokeParams, hashMap, alibcTradeCallback);
        return true;
    }

    public static boolean showMaPage(Activity activity, MaResult maResult, AlibcTradeCallback alibcTradeCallback) {
        if (alibcTradeCallback == null) {
            return false;
        }
        if (maResult != null && maResult.getType() != null) {
            return showMaPage(activity, com.alibaba.imagesearch.utils.a.a(maResult.getType().getType(), maResult.getText()), alibcTradeCallback);
        }
        alibcTradeCallback.onFailure(-1, "maResult == null || maResult.getType() == null");
        return false;
    }

    public static boolean showMaPage(Activity activity, String str, AlibcTradeCallback alibcTradeCallback) {
        if (TextUtils.isEmpty(str)) {
            alibcTradeCallback.onFailure(-1, "MAH5QueryUrl is empty");
            return false;
        }
        Map hashMap = new HashMap();
        hashMap.put("url", str);
        e.a("PailitaoHome", "showMaPage", hashMap);
        AlibcBasePage alibcPage = new AlibcPage(str);
        Map hashMap2 = new HashMap();
        hashMap2.put("vendorId", com.alibaba.imagesearch.utils.c.c().getVendorId());
        hashMap2.put("version", VERSION);
        hashMap2.put("brand", com.alibaba.imagesearch.utils.c.c().getBrand());
        AlibcShowParams alibcShowParams = new AlibcShowParams();
        alibcShowParams.setOpenType(OpenType.H5);
        AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
        alibcTaokeParams.setPid(com.alibaba.imagesearch.utils.c.c().getTaokePid());
        PLog.MaLogD("showMaPage ===> taokeParams = " + alibcTaokeParams + "  extraParams = " + hashMap2);
        PLog.MaLogD(str);
        AlibcTrade.show(activity, alibcPage, alibcShowParams, alibcTaokeParams, hashMap2, alibcTradeCallback);
        return true;
    }

    public static void start() {
        PLog.d("plt-check");
        AppMonitor.init((Application) KernelContext.getApplicationContext().getApplicationContext());
        UploadEngine.getInstance().start();
        UTTeamWork.getInstance().enableUpload(true);
        a(true);
        e();
        AlibcConfigService.getInstance().init();
    }

    public static void stop() {
        PLog.d("plt-checked");
        a(false);
        UploadEngine.getInstance().stop();
        UTTeamWork.getInstance().enableUpload(false);
        AppMonitor.destroy();
        if ("3.1.1.209".equals(AlibcMiniTradeBiz.systemVersion)) {
            e();
            return;
        }
        throw new IllegalStateException("calling stop error; not \"3.1.1.209\" alibc_trad_biz");
    }

    public static void viewAuctionDetailByContext(Context context, String str) {
        PLog.d("viewAuctionDetailByContext");
        Intent intent = new Intent(context, PailitaoRouterActivity.class);
        intent.putExtra("itemId", str);
        intent.setFlags(65536);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static void viewAuctionDetails(Activity activity, AuctionItem auctionItem) {
        if (activity != null && auctionItem != null) {
            viewAuctionDetails(activity, auctionItem.itemId);
        }
    }

    public static void viewAuctionDetails(Activity activity, String str) {
        PLog.d("viewAuctionDetails");
        Map hashMap = new HashMap();
        hashMap.put("itemId", str);
        e.a("PailitaoHome", "viewAuctionDetails", hashMap);
        PLog.d("itemId = " + str);
        if (!TextUtils.isEmpty(str)) {
            AlibcBasePage alibcDetailPage = new AlibcDetailPage(str);
            Map hashMap2 = new HashMap();
            hashMap2.put("vendorId", com.alibaba.imagesearch.utils.c.c().getVendorId());
            hashMap2.put("version", VERSION);
            hashMap2.put("brand", com.alibaba.imagesearch.utils.c.c().getBrand());
            hashMap2.put("spm", "a2141.8068109/" + com.alibaba.imagesearch.utils.c.c().getVendorId() + ".0.0");
            AlibcShowParams alibcShowParams = new AlibcShowParams();
            alibcShowParams.setOpenType(f.a(com.alibaba.imagesearch.utils.c.c().openType));
            AlibcTaokeParams alibcTaokeParams = new AlibcTaokeParams();
            alibcTaokeParams.setPid(com.alibaba.imagesearch.utils.c.c().getTaokePid());
            PLog.d("taokeParams = " + alibcTaokeParams + "  extraParams = " + hashMap2);
            AlibcTrade.show(activity, alibcDetailPage, alibcShowParams, alibcTaokeParams, hashMap2, new AlibcTradeCallback() {
                public void onFailure(int i, String str) {
                    PLog.e("onTradeFailure");
                }

                public void onTradeSuccess(AlibcTradeResult alibcTradeResult) {
                    PLog.d("onTradeSuccess");
                }
            });
        }
    }
}

package com.miui.gallery.hybrid.hybridclient;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.miui.gallery.hybrid.GalleryHybridFragment;
import com.miui.gallery.hybrid.hybridclient.HybridClient.ActualPathCallback;
import com.miui.gallery.hybrid.hybridclient.HybridClient.JsInterfacePair;
import com.miui.gallery.hybrid.hybridclient.wrapper.DownloadListenerWrapper;
import com.miui.gallery.hybrid.hybridclient.wrapper.WebChromeClientWrapper;
import com.miui.gallery.hybrid.hybridclient.wrapper.WebViewClientWrapper;
import com.miui.gallery.util.Log;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import miui.webkit.WebViewClient;
import miui.yellowpage.YellowPageContract.Cache;

public class GalleryHybridClient implements HybridClient {
    private static Set<String> sSchemes = new HashSet();
    protected Context mContext;
    protected String mCurrentUrl;
    protected String mUrl;
    protected WebView mWebView;
    protected GalleryHybridFragment mWebViewFragment;

    public class GalleryDownloadListenerWrapper extends DownloadListenerWrapper {
        public GalleryDownloadListenerWrapper(DownloadListener downloadListener) {
            super(downloadListener);
        }

        public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
            if (getWrapped() == null) {
                GalleryHybridClient.this.mContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                return;
            }
            super.onDownloadStart(url, userAgent, contentDisposition, mimetype, contentLength);
        }
    }

    public class GalleryWebChromeClientWrapper extends WebChromeClientWrapper {
        public GalleryWebChromeClientWrapper(WebChromeClient wrappedWebChromeClient) {
            super(wrappedWebChromeClient);
        }
    }

    public class GalleryWebViewClientWrapper extends WebViewClientWrapper {
        public GalleryWebViewClientWrapper(WebViewClient wrappedWebViewClient) {
            super(wrappedWebViewClient);
        }

        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            if (super.shouldOverrideUrlLoading(view, url)) {
                return true;
            }
            if (GalleryHybridClient.sSchemes.contains(Uri.parse(url).getScheme())) {
                return tryToOverrideUrlLoading(view, url);
            }
            return false;
        }

        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            GalleryHybridClient.this.mCurrentUrl = url;
            super.onPageStarted(view, url, favicon);
        }

        private boolean tryToOverrideUrlLoading(WebView view, String url) {
            try {
                Intent intent = Intent.parseUri(url, 1);
                intent.addCategory("android.intent.category.BROWSABLE");
                intent.setComponent(null);
                Intent selector = intent.getSelector();
                if (selector != null) {
                    selector.addCategory("android.intent.category.BROWSABLE");
                    selector.setComponent(null);
                }
                intent.putExtra("com.android.browser.application_id", view.getContext().getPackageName());
                try {
                    view.getContext().startActivity(intent);
                    return true;
                } catch (Throwable ex) {
                    Log.w("GalleryHybridClient", ex);
                    return false;
                }
            } catch (Throwable ex2) {
                Log.w("GalleryHybridClient", ex2);
                return false;
            }
        }
    }

    public interface ImageCountGotCallback {
        void onGetMaxImageCount(int i);
    }

    public static class ImageInfo {
        String data;
    }

    static {
        sSchemes.add("tel");
        sSchemes.add("sip");
        sSchemes.add("sms");
        sSchemes.add("smsto");
        sSchemes.add("mailto");
        sSchemes.add("micloud");
    }

    public GalleryHybridClient(Context context, String url) {
        this.mContext = context;
        this.mUrl = url;
    }

    public void bindWebViewFragment(GalleryHybridFragment fragment) {
        this.mWebViewFragment = fragment;
    }

    public void getActualPath(ActualPathCallback callback) {
        if (callback != null) {
            callback.onGetActualPath(this.mUrl);
        }
    }

    public List<JsInterfacePair> getJavascriptInterfaces() {
        return null;
    }

    public DownloadListener getDownloadListener(DownloadListener downloadListener) {
        return new GalleryDownloadListenerWrapper(downloadListener);
    }

    public WebViewClientWrapper getWebViewClient(WebViewClient webViewClient) {
        return new GalleryWebViewClientWrapper(webViewClient);
    }

    public WebChromeClientWrapper getWebChromeClient(WebChromeClient webChromeClient) {
        return new GalleryWebChromeClientWrapper(webChromeClient);
    }

    public void onConfigWebSettings(WebSettings settings) {
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(-1);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setTextZoom(100);
        setGeoLocation(settings);
        setAppCache(settings);
        setDOMStorage(settings);
        setBrowserUA(settings);
    }

    public void onStartConfigWebView(WebView webView) {
        this.mWebView = webView;
    }

    public void onPostConfigWebView(WebView webView) {
        webView.setOverScrollMode(2);
    }

    public boolean isSupportPullToRefresh() {
        return true;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public String[] getRuntimePermissions() {
        return new String[0];
    }

    private void setBrowserUA(WebSettings settings) {
        StringBuilder sbUA = new StringBuilder();
        sbUA.append(settings.getUserAgentString()).append(" ");
        sbUA.append("MiuiGallery").append(" ");
        sbUA.append("lg/").append(Locale.getDefault().toString()).append(" ");
        sbUA.append("XiaoMi/MiuiBrowser/4.3");
        settings.setUserAgentString(sbUA.toString());
    }

    private void setGeoLocation(WebSettings settings) {
        settings.setGeolocationEnabled(true);
        settings.setGeolocationDatabasePath(this.mContext.getDir("geodatabase", 0).getPath());
    }

    private void setAppCache(WebSettings settings) {
        settings.setAppCacheEnabled(true);
        String cacheDir = this.mContext.getDir(Cache.DIRECTORY, 0).getPath();
        ensureExistence(cacheDir);
        settings.setAppCachePath(cacheDir);
    }

    private void ensureExistence(String cacheDir) {
        File file = new File(cacheDir);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    private static void setDOMStorage(WebSettings settings) {
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
    }

    public void callJsMethod(final WebView webView, final String jsMethod, final ValueCallback<String> resultCallback) {
        if (webView != null) {
            webView.post(new Runnable() {
                public void run() {
                    webView.evaluateJavascript(jsMethod, resultCallback);
                }
            });
        }
    }
}

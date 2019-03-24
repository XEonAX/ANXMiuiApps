package miui.webkit;

import android.graphics.Bitmap;
import android.webkit.WebView;
import com.miui.internal.webkit.WebViewClientDelegate;
import com.miui.internal.webkit.WebViewWrapper;

public class WebViewClient extends android.webkit.WebViewClient {
    public static final int FEATURE_AUTO_LOGIN = 2;
    public static final int FEATURE_DEEP_LINK = 1;
    private WebViewClientDelegate Ok;

    public WebViewClient() {
        this.Ok = new WebViewClientDelegate();
    }

    public WebViewClient(int i) {
        this.Ok = new WebViewClientDelegate(i);
    }

    public WebViewClient(int i, int i2) {
        this.Ok = new WebViewClientDelegate(i, i2);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return this.Ok.shouldOverrideUrlLoading(new WebViewWrapper(webView), str);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.Ok.onPageStarted(new WebViewWrapper(webView), str, bitmap);
    }

    public void onPageFinished(WebView webView, String str) {
        this.Ok.onPageFinished(new WebViewWrapper(webView), str);
    }

    public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        this.Ok.onReceivedLoginRequest(new WebViewWrapper(webView), str, str2, str3);
    }
}

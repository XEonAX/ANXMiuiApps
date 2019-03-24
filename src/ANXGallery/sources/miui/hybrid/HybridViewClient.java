package miui.hybrid;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.net.http.SslError;
import com.miui.internal.hybrid.HybridManager;
import com.miui.internal.webkit.WebViewClientDelegate;
import java.io.IOException;
import java.util.UUID;

public class HybridViewClient {
    private static final String yO = "hybrid/";
    private static final String yP = "android_asset/hybrid/";
    private HybridManager fy;
    private WebViewClientDelegate yQ = new WebViewClientDelegate();

    public void setHybridManager(HybridManager hybridManager) {
        this.fy = hybridManager;
    }

    public void onPageStarted(HybridView hybridView, String str, Bitmap bitmap) {
        PageContext pageContext = new PageContext();
        pageContext.setId(UUID.randomUUID().toString());
        pageContext.setUrl(str);
        this.fy.setPageContext(pageContext);
        this.fy.onPageChange();
        hybridView.z(str);
        hybridView.t(false);
        this.yQ.onPageStarted(hybridView.cp(), str, bitmap);
    }

    public void onPageFinished(HybridView hybridView, String str) {
        if (this.fy.getActivity().getActionBar() != null) {
            this.fy.getActivity().getActionBar().setTitle(hybridView.getTitle());
        }
        this.yQ.onPageFinished(hybridView.cp(), str);
    }

    public HybridResourceResponse shouldInterceptRequest(HybridView hybridView, String str) {
        if (str == null || !str.startsWith("http")) {
            return null;
        }
        int indexOf = str.indexOf(yP);
        if (indexOf < 0 || yP.length() + indexOf >= str.length()) {
            return null;
        }
        str = str.substring(indexOf + yP.length());
        try {
            AssetManager assets = this.fy.getActivity().getAssets();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(yO);
            stringBuilder.append(str);
            return new HybridResourceResponse(null, null, assets.open(stringBuilder.toString()));
        } catch (IOException e) {
            return null;
        }
    }

    public boolean shouldOverrideUrlLoading(HybridView hybridView, String str) {
        return this.yQ.shouldOverrideUrlLoading(hybridView.cp(), str);
    }

    public void onReceivedSslError(HybridView hybridView, SslErrorHandler sslErrorHandler, SslError sslError) {
        sslErrorHandler.cancel();
    }

    public void onReceivedError(HybridView hybridView, int i, String str, String str2) {
        hybridView.t(true);
        hybridView.cq();
    }

    public void onReceivedLoginRequest(HybridView hybridView, String str, String str2, String str3) {
        this.yQ.onReceivedLoginRequest(hybridView.cp(), str, str2, str3);
    }
}

package com.taobao.applink;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.taobao.applink.c.b;
import com.taobao.applink.exception.TBAppLinkException;
import com.taobao.applink.g.a;
import com.taobao.applink.h.d;
import com.taobao.applink.param.TBAuthParam;
import com.taobao.applink.param.TBBaseParam;
import com.taobao.applink.param.TBDetailParam;
import com.taobao.applink.param.TBShopParam;
import com.taobao.applink.param.TBURIParam;
import com.taobao.applink.secret.TBAppLinkSecret;
import com.taobao.applink.util.TBAppLinkUtil;
import com.taobao.applink.util.e;

public class TBAppLinkSDK {
    private static final String TAG = "TBAppLinkSDK";
    private static volatile TBAppLinkSDK mTBAppLinkSDKInstances;
    public JumpFailedMode mJumpFailedMode = JumpFailedMode.DOWNLOAD_TAOBAO;
    public TBAppLinkSecret mTBAppLinkSecret;
    public TBAppLinkParam sOpenParam;

    public enum JumpFailedMode {
        DOWNLOAD_TAOBAO,
        OPEN_H5,
        NONE
    }

    private TBAppLinkSDK() {
    }

    public static TBAppLinkSDK getInstance() {
        if (mTBAppLinkSDKInstances != null) {
            return mTBAppLinkSDKInstances;
        }
        synchronized (TBAppLinkSDK.class) {
            if (mTBAppLinkSDKInstances == null) {
                mTBAppLinkSDKInstances = new TBAppLinkSDK();
            }
        }
        return mTBAppLinkSDKInstances;
    }

    private void initUserTrack() {
        if (this.sOpenParam == null || e.a(this.sOpenParam.mAppkey)) {
            a.a(new d(TBAppLinkUtil.getApplication().getApplicationContext(), ""));
            b.a().a(null);
            return;
        }
        a.a(new d(TBAppLinkUtil.getApplication().getApplicationContext(), this.sOpenParam.mAppkey));
        b.a().a(null);
    }

    public boolean doAuth(Context context, TBAuthParam tBAuthParam) throws TBAppLinkException {
        if (context != null && tBAuthParam != null && tBAuthParam.mListener != null) {
            return com.taobao.applink.d.a.a(context, (TBBaseParam) tBAuthParam, null);
        }
        throw new TBAppLinkException(com.taobao.applink.exception.a.NULL_POINT);
    }

    public TBAppLinkSDK init(Context context, TBAppLinkParam tBAppLinkParam) {
        this.sOpenParam = tBAppLinkParam;
        if (TBAppLinkUtil.getApplication() == null) {
            TBAppLinkUtil.setApplication(context);
        }
        initUserTrack();
        return mTBAppLinkSDKInstances;
    }

    public boolean jumpDetail(Context context, TBDetailParam tBDetailParam) throws TBAppLinkException {
        if (tBDetailParam != null && context != null) {
            return com.taobao.applink.d.a.a(context, (TBBaseParam) tBDetailParam, null);
        }
        throw new TBAppLinkException(com.taobao.applink.exception.a.NULL_POINT);
    }

    public boolean jumpShop(Context context, TBShopParam tBShopParam) throws TBAppLinkException {
        if (tBShopParam != null && context != null) {
            return com.taobao.applink.d.a.a(context, (TBBaseParam) tBShopParam, null);
        }
        throw new TBAppLinkException(com.taobao.applink.exception.a.NULL_POINT);
    }

    public boolean jumpTBURI(Context context, TBURIParam tBURIParam) throws TBAppLinkException {
        if (tBURIParam != null && context != null) {
            return com.taobao.applink.d.a.a(context, (TBBaseParam) tBURIParam, null);
        }
        throw new TBAppLinkException(com.taobao.applink.exception.a.NULL_POINT);
    }

    public TBAppLinkSDK setJumpFailedMode(JumpFailedMode jumpFailedMode) {
        this.mJumpFailedMode = jumpFailedMode;
        return mTBAppLinkSDKInstances;
    }

    public TBAppLinkSDK setTaoAppLinkSecret(TBAppLinkSecret tBAppLinkSecret) {
        this.mTBAppLinkSecret = tBAppLinkSecret;
        return mTBAppLinkSDKInstances;
    }

    public TBAppLinkSDK setupJsBridge(WebView webView, WebViewClient webViewClient) throws TBAppLinkException {
        if (webView == null) {
            throw new TBAppLinkException(com.taobao.applink.exception.a.NULL_POINT);
        }
        if (webViewClient == null) {
            webViewClient = new WebViewClient();
        }
        com.taobao.applink.i.a aVar = new com.taobao.applink.i.a(webViewClient);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(aVar);
        aVar.a(new com.taobao.applink.f.b());
        com.taobao.applink.util.a.a(webView, aVar);
        return mTBAppLinkSDKInstances;
    }
}

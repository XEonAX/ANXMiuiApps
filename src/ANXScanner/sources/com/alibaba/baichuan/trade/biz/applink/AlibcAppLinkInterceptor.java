package com.alibaba.baichuan.trade.biz.applink;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.alibaba.baichuan.android.trade.page.AlibcBasePage;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcApplink;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcFailModeType;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcNavResult;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam.OpenType;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.urlroute.AlibcUriContext;
import com.alibaba.baichuan.trade.biz.utils.AlibcURLCheck;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlarmUtils;
import com.alibaba.baichuan.trade.common.utils.ExecutorServiceUtils;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus.IUrlInterceptor;

public class AlibcAppLinkInterceptor implements IUrlInterceptor {
    public static final String[] RE_ADDCART_SUCCESS_URLS = new String[]{"^http(s)?://h5\\.(.*)\\.taobao\\.com/baichuanWebViewBridge?(.*)addCart=success(.*)$"};
    public static final String[] RE_DETAIL_URLS = new String[]{"^http(s)?://h5\\.(.*)\\.taobao.com/cm/snap/index\\.html(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)", "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)"};
    public static final String[] RE_SHOP_URLS = new String[]{"^http(s)?://shop\\.(.*)\\.taobao.com/shop/shop_index.htm(.*)", "^http(s)?://shop\\.(.*)\\.tmall.com/shop/shop_index.htm(.*)", "^http(s)?://shop(.*)\\.(.*)\\.taobao.com/shop/shopIndex.htm(.*)"};
    public static final String[] RE_TBOPEN_URLS = new String[]{"^tbopen://m.taobao\\.com/tbopen/index\\.htm(.*)$"};
    private static AlibcAppLinkInterceptor a;

    private AlibcAppLinkInterceptor() {
    }

    private String a() {
        return AlibcBasePage.DEFAULT_BACK_URL + AlibcTradeCommon.getAppKey() + ".nativeTaobao/handleraction";
    }

    private boolean a(WebView webView) {
        if (webView == null) {
            return false;
        }
        ExecutorServiceUtils.getInstance().postUITask(new a(this, webView));
        return true;
    }

    private boolean a(WebView webView, String str) {
        AlibcApplink.getInstance();
        if (!AlibcApplink.isApplinkSupported("taobao")) {
            return false;
        }
        Intent intent = new Intent();
        intent.setFlags(268435456);
        intent.setData(Uri.parse(str));
        webView.getContext().startActivity(intent);
        return true;
    }

    private boolean a(WebView webView, String str, AlibcTradeContext alibcTradeContext) {
        if (alibcTradeContext.showParam == null || !alibcTradeContext.showParam.getOpenType().equals(OpenType.Auto) || AlibcConfigService.getInstance().isForceH5()) {
            return false;
        }
        String queryParameter = new AlibcUriContext(str).getQueryParameter(AlibcConstants.URL_SHOP_ID);
        AlibcTradeContext context = AlibcTradeContextManager.getContext(webView);
        if (context == null) {
            return false;
        }
        AlibcTradeTaokeParam alibcTradeTaokeParam = context.taokeParam;
        AlibcTradeShowParam alibcTradeShowParam = context.showParam;
        AlibcNavResult jumpShop = AlibcApplink.getInstance().jumpShop((Context) context.activity.get(), queryParameter, AlibcFailModeType.AlibcNativeFailModeNONE, a(), alibcTradeShowParam == null ? "taobao" : alibcTradeShowParam.getClientType(), alibcTradeTaokeParam, context.urlParam);
        return jumpShop == null ? false : jumpShop.isSuccess;
    }

    private boolean b(WebView webView, String str, AlibcTradeContext alibcTradeContext) {
        if (alibcTradeContext.showParam == null || !alibcTradeContext.showParam.getOpenType().equals(OpenType.Auto) || AlibcConfigService.getInstance().isForceH5()) {
            return false;
        }
        Object queryParameter = new AlibcUriContext(str).getQueryParameter(AlibcConstants.ID);
        AlibcTradeContext context = AlibcTradeContextManager.getContext(webView);
        if (TextUtils.isEmpty(queryParameter) || context == null) {
            return false;
        }
        AlibcTradeTaokeParam alibcTradeTaokeParam = context.taokeParam;
        AlibcTradeShowParam alibcTradeShowParam = context.showParam;
        AlibcNavResult jumpDetail = AlibcApplink.getInstance().jumpDetail((Context) context.activity.get(), queryParameter, AlibcFailModeType.AlibcNativeFailModeNONE, a(), alibcTradeShowParam == null ? "taobao" : alibcTradeShowParam.getClientType(), alibcTradeTaokeParam, context.urlParam);
        return jumpDetail == null ? false : jumpDetail.isSuccess;
    }

    public static synchronized AlibcAppLinkInterceptor getInstance() {
        AlibcAppLinkInterceptor alibcAppLinkInterceptor;
        synchronized (AlibcAppLinkInterceptor.class) {
            if (a == null) {
                a = new AlibcAppLinkInterceptor();
            }
            alibcAppLinkInterceptor = a;
        }
        return alibcAppLinkInterceptor;
    }

    public boolean interceptor(WebView webView, String str) {
        AlibcTradeContext context = AlibcTradeContextManager.getContext(webView);
        if (str != null && webView != null && context != null) {
            return context.showParam != null ? AlibcURLCheck.regular.check(RE_ADDCART_SUCCESS_URLS, str) ? a(webView) : context.showParam.getOpenType().equals(OpenType.Auto) ? AlibcURLCheck.regular.check(RE_TBOPEN_URLS, str) ? a(webView, str) : AlibcURLCheck.regular.check(RE_DETAIL_URLS, str) ? b(webView, str, context) : AlibcURLCheck.regular.check(RE_SHOP_URLS, str) ? a(webView, str, context) : false : false : false;
        } else {
            AlarmUtils.alarm("TbopenHandlerAction", "execute", "url is null");
            return false;
        }
    }
}

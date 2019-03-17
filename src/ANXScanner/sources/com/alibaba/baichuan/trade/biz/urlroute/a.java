package com.alibaba.baichuan.trade.biz.urlroute;

import android.text.TextUtils;
import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.biz.utils.AlibcURLCheck;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus.IUrlInterceptor;
import java.util.Map;

public class a implements IUrlInterceptor {
    static final String[] a = new String[]{"^http(s)?://h5\\.(.*)\\.taobao\\.com/cm/snap/index\\.html(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/order\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/cart\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/base/bag\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/mlapp/cart\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/cart/order\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/awp/core/detail\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/mlapp/olist\\.htm(.*)", "^http(s)?://shop\\.(.*)\\.taobao\\.com/shop/shopIndex\\.htm(.*)", "^http(s)?://shop\\.(.*)\\.taobao\\.com/shop/shop_index\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.taobao\\.com/trade/detail\\.htm(.*)", "^http(s)?://detail\\.(.*)\\.tmall\\.(com|hk)/item\\.htm(.*)", "^http(s)?://buy\\.(.*)\\.tmall\\.(com|hk)/order/confirmOrderWap\\.htm(.*)", "^http(s)?://((?!(login|buy|s.click))\\.)(.*)\\.tmall\\.com(.*)$", "^http(s)?://buy\\.(.*)\\.tmall\\.(com|hk)/order/confirm_order_wap\\.htm(.*)", "^http(s)?://cart\\.(.*)\\.tmall\\.(com|hk)/cart/myCart\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.tmall\\.(com|hk)/awp/base/order\\.htm(.*)", "^http(s)?://h5\\.(.*)\\.tmall\\.(com|hk)/cart/order\\.htm(.*)"};
    private static a b;

    private a() {
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (b == null) {
                b = new a();
            }
            aVar = b;
        }
        return aVar;
    }

    public boolean interceptor(WebView webView, String str) {
        AlibcLogger.d("AlibcTradeParamInterceptor", "进入到加参数拦截器,url = " + str);
        if (AlibcURLCheck.regular.check(a, str)) {
            Map map = AlibcTradeContextManager.getContext(webView).urlParam;
            AlibcLogger.d("AlibcTradeParamInterceptor", "拦截加参的参数为, urlParams = " + map);
            String addParamsUrl = new AlibcUriContext(str).getAddParamsUrl(map);
            if (TextUtils.isEmpty(addParamsUrl) || addParamsUrl.equals(str)) {
                return false;
            }
            AlibcLogger.d("AlibcTradeParamInterceptor", "加参数后的url与原来的url不一样,重新调用webview.loadUrl,新的url = " + addParamsUrl);
            webView.loadUrl(addParamsUrl);
            return true;
        }
        AlibcLogger.d("AlibcTradeParamInterceptor", "该url不满足匹配规则");
        return false;
    }
}

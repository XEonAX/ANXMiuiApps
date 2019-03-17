package com.alibaba.baichuan.trade.biz.login;

import android.webkit.WebView;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContextManager;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.biz.utils.AlibcURLCheck;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus.IUrlInterceptor;
import java.util.HashMap;
import java.util.Map;

public class d implements IUrlInterceptor {
    public static final String[] a = new String[]{"^http(s)?://login\\.(.*)\\.taobao.com/login\\.htm(.*)$", "^http(s)?://login\\.tmall\\.com(.*)$", "^http(s)?://login.taobao.com/member/login.jhtml(.*)$"};
    public static final String[] b = new String[]{"^http(s)?://login\\.(.*)\\.taobao\\.com/logout(.*)$"};
    public static String c = "https://h5.m.taobao.com/";
    private static d d;

    private d() {
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (d == null) {
                d = new d();
            }
            dVar = d;
        }
        return dVar;
    }

    private boolean a(WebView webView) {
        AlibcLogger.d("AlibcLoginInterceptor", "拦截到loginUrl");
        if (AlibcConfigService.getInstance().getLoginDegarade(false)) {
            AlibcLogger.d("AlibcLoginInterceptor", "loginDegarade = false,直接采用H5进行登录");
            return false;
        }
        AlibcLogger.d("AlibcLoginInterceptor", "调用login sdk接口");
        AlibcLogin.getInstance().showLogin(new f(this, webView));
        return true;
    }

    private void b(WebView webView) {
        Map hashMap = new HashMap();
        hashMap.put("appkey", AlibcTradeCommon.getAppKey());
        hashMap.put("userId", AlibcLogin.getInstance().getSession().openId);
        hashMap.put("utdid", AlibcTradeCommon.getUtdid());
        hashMap.put(AlibcConstants.TTID, AlibcMiniTradeBiz.getTTID());
        hashMap.put("ybhpss", c(webView));
        AlibcUserTracker.getInstance().sendCustomHit(UserTrackerConstants.E_SHOWLOGIN, "", hashMap);
    }

    private String c(WebView webView) {
        if (webView == null) {
            return "";
        }
        AlibcTradeContext context = AlibcTradeContextManager.getContext(webView);
        if (context == null || context.urlParam == null || context.urlParam.get("ybhpss") == null) {
            return "";
        }
        Object obj = context.urlParam.get("ybhpss");
        return obj instanceof String ? (String) obj : "";
    }

    public boolean interceptor(WebView webView, String str) {
        if (AlibcURLCheck.regular.check(a, str)) {
            return a(webView);
        }
        if (!AlibcURLCheck.regular.check(b, str)) {
            return false;
        }
        AlibcLogger.d("AlibcLoginInterceptor", "拦截到logoutUrl,调用login sdk登出接口");
        AlibcLogin.getInstance().logout(new e(this));
        webView.loadUrl(c);
        return true;
    }
}

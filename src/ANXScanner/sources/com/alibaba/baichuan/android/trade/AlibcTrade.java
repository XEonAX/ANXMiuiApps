package com.alibaba.baichuan.android.trade;

import android.app.Activity;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alibaba.baichuan.android.trade.c.b;
import com.alibaba.baichuan.android.trade.model.AlibcShowParams;
import com.alibaba.baichuan.android.trade.model.InitResult;
import com.alibaba.baichuan.android.trade.page.AlibcBasePage;
import com.alibaba.baichuan.android.trade.usertracker.monitor.BaseTradeMonitorPoint;
import com.alibaba.baichuan.android.trade.usertracker.monitor.a;
import com.alibaba.baichuan.android.trade.usertracker.monitor.c;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeContext.AlibcTradeCallback;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeResult;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import com.alibaba.baichuan.trade.biz.utils.AlibcTradeHelper;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlarmUtils;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;
import java.util.Map;

public class AlibcTrade {
    public static final String ALI_URL = "^(?:https?):\\/\\/(([^/\\?#]+\\.)*((taobao|tmall|juhuasuan|xiami|amap|taobaocdn|alipay|etao|alibaba|aliyun|alimama|weibo|tanx|laiwang|alicdn|mmstat|yunos|alibaba-inc|alitrip|aliloan|kanbox|wirlesshare|dingtalk|alimei|cnzz|kuaidadi|autonavi|m\\.yintai|polyinno|spdyidea|h5util|h5tool|5945i|miaostreet|1688|cainiao|taohua|m\\.dfkhgj|m\\.edcdfg|liangxinyao|taopiaopiao)\\.com|(tb|tbcdn|weibo|mashort|mybank|ba\\.ugame\\.uc|game\\.uc)\\.cn|(fastidea|juzone)\\.(me|cc)|lwurl\\.to|(taobao|alipay|cnzz)\\.net|tdd\\.la|yao\\.95095\\.com|(tmall|alipay)\\.hk|ahd\\.so|atb\\.so|mshare\\.cc|juhs\\.me|xianyu\\.mobi)([\\?|#|/].*)?)$";
    public static final String ERRCODE_APPLINK_FAIL = "03";
    public static final String ERRCODE_PAGE_H5 = "12";
    public static final String ERRCODE_PAGE_NATIVE = "11";
    public static final String ERRCODE_PARAM_ERROR = "01";
    public static final String ERRMSG_APPLINK_FAIL = "applink调用失败";
    public static final String ERRMSG_LOAD_FAIL = "加载失败";
    public static final String ERRMSG_PARAM_ERROR = "参数错误";
    public static final String MONITOR_POINT_H5 = "Page_H5";
    public static final String MONITOR_POINT_NATIVE = "Page_Native";
    public static final int SHOW_FAILURE = -1;
    public static final int SHOW_H5 = 1;
    public static final int SHOW_NATIVE = 0;

    private static class MyAlibcTradeCallback implements AlibcTradeCallback {
        com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback tradeProcessCallback;

        public MyAlibcTradeCallback(com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback alibcTradeCallback) {
            this.tradeProcessCallback = alibcTradeCallback;
        }

        public void onFailure(int i, String str) {
            if (this.tradeProcessCallback != null) {
                this.tradeProcessCallback.onFailure(i, str);
            }
        }

        public void onTradeSuccess(AlibcTradeResult alibcTradeResult) {
            if (this.tradeProcessCallback != null) {
                this.tradeProcessCallback.onTradeSuccess(alibcTradeResult);
            }
        }
    }

    private static BaseTradeMonitorPoint a(AlibcBasePage alibcBasePage, AlibcShowParams alibcShowParams, AlibcTaokeParams alibcTaokeParams) {
        return (alibcBasePage == null || alibcShowParams == null) ? new a() : alibcBasePage.isNativeOpen(b.a(alibcShowParams), alibcTaokeParams) ? new c() : new a();
    }

    private static AlibcTradeContext a(Activity activity, AlibcBasePage alibcBasePage, WebView webView, AlibcShowParams alibcShowParams, Map<String, String> map, AlibcTaokeParams alibcTaokeParams, com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback alibcTradeCallback) {
        if (alibcShowParams == null) {
            alibcShowParams = new AlibcShowParams();
        }
        Map createUrlParams = AlibcTradeHelper.createUrlParams(map);
        AlibcLogger.d("AlibcTrade", "构造urlParams = " + createUrlParams);
        if (alibcTaokeParams == null && AlibcConfigService.getInstance().getGlobalTaokeParams() != null) {
            alibcTaokeParams = AlibcConfigService.getInstance().getTaokeParams();
            AlibcLogger.d("AlibcTrade", "流程淘客参数为空,全局淘客参数不为空,采用全局淘客参数,taokeParams = " + alibcTaokeParams);
        }
        if (alibcTaokeParams != null && alibcTaokeParams.isAdZoneIdExist() && alibcBasePage != null && alibcBasePage.supportAid()) {
            alibcTaokeParams.pid = null;
        }
        return new AlibcTradeContext(activity, webView, b.a(alibcShowParams), b.a(alibcTaokeParams), b.a(createUrlParams), new MyAlibcTradeCallback(alibcTradeCallback));
    }

    private static void a() {
        AlibcUserTradeHelper.sendUseabilitySuccess(MONITOR_POINT_NATIVE);
    }

    private static void a(AlibcBasePage alibcBasePage, AlibcTradeShowParam alibcTradeShowParam, AlibcTaokeParams alibcTaokeParams, String str, String str2) {
        if (alibcBasePage == null) {
            AlarmUtils.alarm("AlibcTrade", "sendUsabilityFailure", "tradePage is null!");
            AlibcLogger.e("AlibcTrade", "tradePage is null");
            return;
        }
        boolean isNativeOpen = alibcBasePage.isNativeOpen(alibcTradeShowParam, alibcTaokeParams);
        AlibcUserTradeHelper.sendUseabilityFailure(isNativeOpen ? MONITOR_POINT_NATIVE : MONITOR_POINT_H5, str, (isNativeOpen ? ERRCODE_PAGE_NATIVE : ERRCODE_PAGE_H5) + alibcBasePage.getUsabilityPageType() + str2);
    }

    private static void a(AlibcBasePage alibcBasePage, AlibcTradeTaokeParam alibcTradeTaokeParam, Map<String, String> map) {
        if (alibcBasePage.getApi() != null) {
            Map hashMap = new HashMap();
            hashMap.putAll(map);
            if (!TextUtils.isEmpty(AlibcTradeCommon.getAppKey())) {
                hashMap.put("appkey", AlibcTradeCommon.getAppKey());
            }
            hashMap.put(UserTrackerConstants.TAOKEPARAMS, alibcTradeTaokeParam == null ? "{}" : alibcTradeTaokeParam.toString());
            AlibcUserTracker.getInstance().sendCustomHit(alibcBasePage.getApi(), "", hashMap);
        }
    }

    private static boolean a(AlibcBasePage alibcBasePage, Activity activity, com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback alibcTradeCallback) {
        if (alibcTradeCallback == null) {
            com.alibaba.baichuan.android.trade.c.c.a(alibcTradeCallback, com.alibaba.baichuan.android.trade.c.a.a.a(14, "tradeProcessCallback"));
            return false;
        } else if (activity == null) {
            com.alibaba.baichuan.android.trade.c.c.a(alibcTradeCallback, com.alibaba.baichuan.android.trade.c.a.a.a(14, "Activity"));
            return false;
        } else if (alibcBasePage != null && alibcBasePage.checkParams()) {
            return true;
        } else {
            com.alibaba.baichuan.android.trade.c.c.a(alibcTradeCallback, com.alibaba.baichuan.android.trade.c.a.a.a(14, "AlibcPage"));
            return false;
        }
    }

    public static boolean isAliUrl(String str) {
        return (TextUtils.isEmpty(ALI_URL) || TextUtils.isEmpty(str) || !str.matches(ALI_URL)) ? false : true;
    }

    public static boolean isNativeOpen(AlibcBasePage alibcBasePage, AlibcTradeShowParam alibcTradeShowParam, AlibcTaokeParams alibcTaokeParams) {
        return alibcBasePage.isNativeOpen(alibcTradeShowParam, alibcTaokeParams);
    }

    public static int show(Activity activity, WebView webView, WebViewClient webViewClient, WebChromeClient webChromeClient, AlibcBasePage alibcBasePage, AlibcShowParams alibcShowParams, AlibcTaokeParams alibcTaokeParams, Map<String, String> map, com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback alibcTradeCallback) {
        AlibcLogger.d("AlibcTrade", "show流程开始调用");
        InitResult initResult = AlibcTradeSDK.initResult;
        if (initResult != null && !initResult.isSuccess()) {
            AlibcLogger.e("AlibcTrade", "初始化状态失败,show流程结束");
            com.alibaba.baichuan.android.trade.c.c.a(alibcTradeCallback, 1001, "初始化失败, " + initResult.errorMessage);
            return -1;
        } else if (AlibcTradeSDK.initState.isInitializing()) {
            AlibcLogger.e("AlibcTrade", "电商SDK正在初始化,show流程结束");
            com.alibaba.baichuan.android.trade.c.c.a(alibcTradeCallback, 1002, "初始化未完成,请稍后!");
            return -1;
        } else {
            alibcShowParams.setOriginalOpenType(alibcShowParams.getOpenType());
            AlibcLogger.d("AlibcTrade", "show流程调用参数为: activity=" + activity + "\n webView=" + webView + "\n webViewClient=" + webViewClient + "\n webChromeClient=" + webChromeClient + "\n tradePage=" + alibcBasePage + "\n showParams=" + alibcShowParams + "\n taokeParams=" + alibcTaokeParams + "\n trackParam=" + map + "\n tradeProcessCallback=" + alibcTradeCallback);
            if (a(alibcBasePage, activity, alibcTradeCallback)) {
                BaseTradeMonitorPoint a = a(alibcBasePage, alibcShowParams, alibcTaokeParams);
                a.b = alibcBasePage.getPerformancePageType();
                a.c();
                a.a();
                AlibcLogger.d("AlibcTrade", "初始化构造参数");
                AlibcTradeContext a2 = a(activity, alibcBasePage, webView, alibcShowParams, map, alibcTaokeParams, alibcTradeCallback);
                AlibcLogger.d("AlibcTrade", "判断打开方式");
                if (isNativeOpen(alibcBasePage, a2.showParam, alibcTaokeParams)) {
                    AlibcLogger.d("AlibcTrade", "Native方式打开");
                    if (alibcBasePage.openNative(activity, a2, a.f())) {
                        AlibcLogger.d("AlibcTrade", "Native打开成功");
                        a.d();
                        a.e();
                        a(alibcBasePage, a2.taokeParam, a2.urlParam);
                        a();
                        return 0;
                    }
                    AlibcLogger.d("AlibcTrade", "Native打开失败");
                    if (a2.showParam == null || !a2.showParam.isNativeFailedNone()) {
                        com.alibaba.baichuan.android.trade.usertracker.a.a().b();
                        com.alibaba.baichuan.android.trade.usertracker.a.a().a(a.g(), alibcBasePage);
                        AlibcLogger.d("AlibcTrade", "通过H5打开流程");
                        alibcBasePage.openH5(activity, webView, webViewClient, webChromeClient, a2, a.g());
                    } else {
                        AlibcLogger.d("AlibcTrade", "用户传入的failMode为NONE,当前流程结束");
                        return -1;
                    }
                }
                AlibcLogger.d("AlibcTrade", "通过H5打开流程");
                com.alibaba.baichuan.android.trade.usertracker.a.a().b();
                com.alibaba.baichuan.android.trade.usertracker.a.a().a(a.g(), alibcBasePage);
                alibcBasePage.openH5(activity, webView, webViewClient, webChromeClient, a2, a.g());
                a(alibcBasePage, a2.taokeParam, a2.urlParam);
                return 1;
            }
            AlibcLogger.d("AlibcTrade", "检查参数错误,show流程结束");
            if (alibcBasePage == null) {
                alibcBasePage = new AlibcBasePage();
            }
            a(alibcBasePage, b.a(alibcShowParams), alibcTaokeParams, ERRMSG_PARAM_ERROR, ERRCODE_PARAM_ERROR);
            return -1;
        }
    }

    public static int show(Activity activity, AlibcBasePage alibcBasePage, AlibcShowParams alibcShowParams, AlibcTaokeParams alibcTaokeParams, Map<String, String> map, com.alibaba.baichuan.android.trade.callback.AlibcTradeCallback alibcTradeCallback) {
        return show(activity, null, null, null, alibcBasePage, alibcShowParams, alibcTaokeParams, map, alibcTradeCallback);
    }
}

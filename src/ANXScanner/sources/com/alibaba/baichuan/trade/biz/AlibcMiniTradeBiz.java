package com.alibaba.baichuan.trade.biz;

import com.alibaba.baichuan.trade.biz.alipay.AlibcAlipay;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcApplink;
import com.alibaba.baichuan.trade.biz.applink.adapter.AlibcApplink.AlibcApplinkResult;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcAidCompoment;
import com.alibaba.baichuan.trade.biz.login.AlibcLogin;
import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;
import com.alibaba.baichuan.trade.biz.urlroute.a;
import com.alibaba.baichuan.trade.common.AlibcMiniTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus;
import com.alibaba.baichuan.trade.common.webview.jsbridge.plugin.AlibcPluginManager;
import java.util.concurrent.CountDownLatch;

public class AlibcMiniTradeBiz {
    private static String a;
    private static CountDownLatch b;
    public static String channel = "0";
    public static String systemVersion = "3.1.1.209";

    public static class AlibcTradeBizResult {
        public int errCode;
        public String errMsg;
        public boolean isSuccess = false;
    }

    public static String getTTID() {
        a = String.format("2014_%s_%s@baichuan_android_%s", new Object[]{channel, AlibcMiniTradeCommon.getAppKey(), AlibcTradeBiz.systemVersion});
        return a;
    }

    public static AlibcTradeBizResult init() {
        AlibcTradeBizResult alibcTradeBizResult = new AlibcTradeBizResult();
        b = new CountDownLatch(1);
        AlibcConfigService.getInstance().init();
        AlibcUrlBus.registInterceptor(a.a());
        boolean[] zArr = new boolean[]{false};
        AlibcLogin.getInstance().init(new a(zArr));
        AlibcApplinkResult init = AlibcApplink.getInstance().init();
        if (init == null || init.result != 0) {
            alibcTradeBizResult.errCode = 101;
            alibcTradeBizResult.errMsg = AlibcApplink.ERR_MSG;
        } else {
            AlibcAlipay.getInstance().init();
            AlibcPluginManager.registerPlugin(com.alibaba.baichuan.trade.biz.core.a.a.a, com.alibaba.baichuan.trade.biz.core.a.a.class, true);
            AlibcAidCompoment.init();
            try {
                b.await();
                if (zArr[0]) {
                    alibcTradeBizResult.isSuccess = true;
                } else {
                    alibcTradeBizResult.errCode = 102;
                    alibcTradeBizResult.errMsg = "登录初始化失败";
                }
            } catch (Throwable e) {
                AlibcLogger.e(InitMonitorPoint.MONITOR_POINT, "闭锁超时", e);
                alibcTradeBizResult.errCode = 102;
                alibcTradeBizResult.errMsg = "登录初始化没有返回";
            }
        }
        return alibcTradeBizResult;
    }

    public static void setChannel(String str) {
        AlibcTradeBiz.channel = str;
        a = String.format("2014_%s_%s@baichuan_android_%s", new Object[]{str, AlibcMiniTradeCommon.getAppKey(), systemVersion});
        AlibcApplink.getInstance().setTTID(a);
        AlibcMiniTradeCommon.setTTID(a);
    }

    public static void turnOffDebug() {
        AlibcLogin.getInstance().turnOffDebug();
        AlibcApplink.getInstance().turnOffDebug();
    }

    public static void turnOnDebug() {
        AlibcLogin.getInstance().turnOnDebug();
        AlibcApplink.getInstance().turnOnDebug();
    }
}

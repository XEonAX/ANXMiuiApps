package com.alibaba.baichuan.trade.common;

import android.app.Application;
import com.alibaba.baichuan.trade.common.adapter.mtop.AlibcMtop;
import com.alibaba.baichuan.trade.common.adapter.security.AlibcSecurityGuard;
import com.alibaba.baichuan.trade.common.adapter.security.AlibcSecurityGuard.a;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker.AlibcUserTrackerResult;
import com.alibaba.baichuan.trade.common.monitor.CommomInitMonitor;
import com.alibaba.baichuan.trade.common.webview.AlibcWebViewProxy;
import com.ut.device.UTDevice;

public class AlibcTradeCommon extends AlibcMiniTradeCommon {

    public static class AlibcTradeCommonResult {
        public int errCode;
        public String errMsg;
        public CommomInitMonitor initMonitor = new CommomInitMonitor();
        public boolean isSuccess = false;
    }

    public static String getAppKey() {
        return b;
    }

    public static Environment getEnvironment() {
        return e;
    }

    public static String getUtdid() {
        return a;
    }

    public static AlibcTradeCommonResult init(Application application, String str) {
        AlibcTradeCommonResult alibcTradeCommonResult = new AlibcTradeCommonResult();
        if (application != null) {
            context = application;
            if (str == null) {
                str = "99";
            }
            systemVersion = str;
            a = UTDevice.getUtdid(application);
            alibcTradeCommonResult.initMonitor.startSecurityInitRecord();
            a init = AlibcSecurityGuard.getInstance().init();
            alibcTradeCommonResult.initMonitor.stopSecurityInitRecord();
            if (init == null || init.a == 1) {
                alibcTradeCommonResult.errCode = 1;
                alibcTradeCommonResult.errMsg = AlibcSecurityGuard.ERR_MSG;
            } else {
                b = AlibcSecurityGuard.getInstance().getAppKey();
                alibcTradeCommonResult.initMonitor.startUTInitRecord();
                AlibcUserTrackerResult init2 = AlibcUserTracker.getInstance().init();
                alibcTradeCommonResult.initMonitor.stopUTInitRecord();
                if (init2.result == 1) {
                    alibcTradeCommonResult.errCode = 2;
                    alibcTradeCommonResult.errMsg = AlibcUserTracker.ERR_MSG;
                } else if (AlibcMtop.getInstance().init() == 1) {
                    alibcTradeCommonResult.errCode = 3;
                    alibcTradeCommonResult.errMsg = AlibcMtop.ERR_MSG;
                } else {
                    AlibcWebViewProxy.init();
                    alibcTradeCommonResult.isSuccess = true;
                }
            }
        }
        return alibcTradeCommonResult;
    }

    public static boolean isDebug() {
        return c;
    }

    public static void setChannel(String str) {
        AlibcUserTracker.getInstance().setChannel(str);
    }

    public static void setEnvironment(Environment environment) {
        e = environment;
    }

    public static void setTTID(String str) {
        AlibcMiniTradeCommon.setTTID(str);
        AlibcMtop.getInstance().setTTID(str);
    }

    public static void turnOffDebug() {
        c = false;
        AlibcMtop.getInstance().turnOffDebug();
        AlibcUserTracker.getInstance().turnOffDebug();
    }

    public static void turnOnDebug() {
        c = true;
        AlibcMtop.getInstance().turnOnDebug();
        AlibcUserTracker.getInstance().turnOnDebug();
    }
}

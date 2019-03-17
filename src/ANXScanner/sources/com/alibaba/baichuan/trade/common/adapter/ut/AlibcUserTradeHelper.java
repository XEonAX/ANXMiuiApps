package com.alibaba.baichuan.trade.common.adapter.ut;

import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;

public class AlibcUserTradeHelper {
    public static String getArgs() {
        ArgsInfo argsInfo = new ArgsInfo();
        argsInfo.appKey = AlibcTradeCommon.getAppKey();
        argsInfo.sdkVersion = AlibcTradeCommon.systemVersion;
        return argsInfo.getJSONString();
    }

    public static void sendUseabilityFailure(String str, String str2, String str3) {
        AlibcUserTracker.getInstance().sendUseabilityFailure(InitMonitorPoint.MODULE, str, getArgs(), str3, str2);
    }

    public static void sendUseabilitySuccess(String str) {
        AlibcUserTracker.getInstance().sendUseabilitySuccess(InitMonitorPoint.MODULE, str, getArgs());
    }
}

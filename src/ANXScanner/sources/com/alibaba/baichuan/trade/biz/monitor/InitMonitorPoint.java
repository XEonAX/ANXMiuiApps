package com.alibaba.baichuan.trade.biz.monitor;

import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionValueSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureValueSet;
import com.alibaba.baichuan.trade.common.utils.AlibcTradeCommonUtil;

public class InitMonitorPoint {
    public static final String ALL_TIME = "allTime";
    public static final String APPKEY = "appkey";
    public static final String APP_VERSION = "app_version";
    public static final String MODULE = "BCTradeSDK";
    public static final String MONITOR_POINT = "init";
    public static final String PLATFORM = "platform";
    public static final String SDK_VERSION = "sdk_version";
    public static final String SECURITY_TIME = "securityInitTime";
    public static final String UT_INIT_TIME = "utInitTime";
    public long allTime;
    public long securityInitTime;
    public long utInitTime;

    public static void registerMonitorPoint() {
        AlibcDimensionSet addDimension = AlibcDimensionSet.create().addDimension("appkey").addDimension("app_version").addDimension("sdk_version").addDimension("platform");
        AlibcUserTracker.getInstance().registerPerformancePoint(MODULE, MONITOR_POINT, AlibcMeasureSet.create().addMeasure(SECURITY_TIME).addMeasure(UT_INIT_TIME).addMeasure(ALL_TIME), addDimension);
    }

    public void send() {
        AlibcUserTracker.getInstance().sendPerfomancePoint(MODULE, MONITOR_POINT, AlibcDimensionValueSet.create().setValue("appkey", AlibcTradeCommon.getAppKey()).setValue("app_version", AlibcTradeCommonUtil.getVersion(AlibcTradeCommon.context)).setValue("sdk_version", AlibcTradeCommon.systemVersion).setValue("platform", "android"), AlibcMeasureValueSet.create().setValue(SECURITY_TIME, (double) this.securityInitTime).setValue(UT_INIT_TIME, (double) this.utInitTime).setValue(ALL_TIME, (double) this.allTime));
    }

    public void setSecurityInitTime(long j) {
        this.securityInitTime = j;
    }

    public void setUtInitTime(long j) {
        this.utInitTime = j;
    }

    public void startAllTimeRecord() {
        this.allTime = System.currentTimeMillis();
    }

    public void stopAllTimeRecord() {
        this.allTime = System.currentTimeMillis() - this.allTime;
    }
}

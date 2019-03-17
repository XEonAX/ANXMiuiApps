package com.alibaba.baichuan.android.trade.usertracker.monitor;

import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionValueSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureValueSet;
import com.alibaba.baichuan.trade.common.utils.AlibcTradeCommonUtil;

public class d {
    public long a;
    public long b;
    public long c;

    public static void e() {
        AlibcDimensionSet addDimension = AlibcDimensionSet.create().addDimension("appkey").addDimension("app_version").addDimension("sdk_version").addDimension("platform");
        AlibcUserTracker.getInstance().registerPerformancePoint(InitMonitorPoint.MODULE, "urlLoad", AlibcMeasureSet.create().addMeasure("urlLoadTime").addMeasure("urlLoadTime").addMeasure(InitMonitorPoint.ALL_TIME), addDimension);
    }

    public void a() {
        this.b = System.currentTimeMillis();
    }

    public void b() {
        this.b = System.currentTimeMillis() - this.b;
    }

    public void c() {
        this.c = System.currentTimeMillis();
    }

    public void d() {
        this.c = System.currentTimeMillis() - this.c;
    }

    public void f() {
        AlibcUserTracker.getInstance().sendPerfomancePoint(InitMonitorPoint.MODULE, "urlLoad", AlibcDimensionValueSet.create().setValue("appkey", AlibcTradeCommon.getAppKey()).setValue("app_version", AlibcTradeCommonUtil.getVersion(AlibcTradeCommon.context)).setValue("sdk_version", AlibcTradeCommon.systemVersion).setValue("platform", "android"), AlibcMeasureValueSet.create().setValue("urlLoadTime", (double) this.a).setValue("urlLoadTime", (double) this.b).setValue(InitMonitorPoint.ALL_TIME, (double) this.c));
    }
}

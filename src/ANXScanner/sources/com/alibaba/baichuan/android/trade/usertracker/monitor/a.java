package com.alibaba.baichuan.android.trade.usertracker.monitor;

import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionValueSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureValueSet;
import com.alibaba.baichuan.trade.common.utils.AlibcTradeCommonUtil;

public class a extends BaseTradeMonitorPoint {
    public long e;
    public long f;
    public long g;

    public static void o() {
        AlibcDimensionSet addDimension = AlibcDimensionSet.create().addDimension("appkey").addDimension("app_version").addDimension("sdk_version").addDimension("platform").addDimension(AlibcConstants.PAGE_TYPE).addDimension(AlibcConstants.TK_TYPE);
        AlibcUserTracker.getInstance().registerPerformancePoint(InitMonitorPoint.MODULE, "showH5", AlibcMeasureSet.create().addMeasure("analysisTime").addMeasure("taokeTime").addMeasure("urlHandleTime").addMeasure("urlLoadTime").addMeasure(InitMonitorPoint.ALL_TIME), addDimension);
    }

    public void e() {
        AlibcUserTracker.getInstance().sendPerfomancePoint(InitMonitorPoint.MODULE, "showH5", AlibcDimensionValueSet.create().setValue("appkey", AlibcTradeCommon.getAppKey()).setValue("app_version", AlibcTradeCommonUtil.getVersion(AlibcTradeCommon.context)).setValue("sdk_version", AlibcTradeCommon.systemVersion).setValue("platform", "android").setValue(AlibcConstants.PAGE_TYPE, this.b).setValue(AlibcConstants.TK_TYPE, this.a), AlibcMeasureValueSet.create().setValue("analysisTime", (double) this.c).setValue("taokeTime", (double) this.e).setValue("urlHandleTime", (double) this.f).setValue("urlLoadTime", (double) this.g).setValue(InitMonitorPoint.ALL_TIME, (double) this.d));
    }

    public void h() {
        this.e = System.currentTimeMillis();
    }

    public void i() {
        this.e = System.currentTimeMillis() - this.e;
    }

    public void j() {
        this.f = System.currentTimeMillis();
    }

    public void k() {
        this.f = System.currentTimeMillis() - this.f;
    }

    public void l() {
        this.g = System.currentTimeMillis();
    }

    public void m() {
        this.g = System.currentTimeMillis() - this.g;
    }

    public void n() {
        this.e = 0;
    }
}

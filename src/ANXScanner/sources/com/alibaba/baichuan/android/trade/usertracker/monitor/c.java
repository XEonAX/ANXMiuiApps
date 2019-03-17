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

public class c extends BaseTradeMonitorPoint {
    public long e;

    public static void j() {
        AlibcDimensionSet addDimension = AlibcDimensionSet.create().addDimension("appkey").addDimension("app_version").addDimension("sdk_version").addDimension("platform").addDimension(AlibcConstants.PAGE_TYPE);
        AlibcUserTracker.getInstance().registerPerformancePoint(InitMonitorPoint.MODULE, "showNative", AlibcMeasureSet.create().addMeasure("analysisTime").addMeasure("goTaobaoTime").addMeasure(InitMonitorPoint.ALL_TIME), addDimension);
    }

    public void e() {
        AlibcUserTracker.getInstance().sendPerfomancePoint(InitMonitorPoint.MODULE, "showNative", AlibcDimensionValueSet.create().setValue("appkey", AlibcTradeCommon.getAppKey()).setValue("app_version", AlibcTradeCommonUtil.getVersion(AlibcTradeCommon.context)).setValue("sdk_version", AlibcTradeCommon.systemVersion).setValue("platform", "android").setValue(AlibcConstants.PAGE_TYPE, this.b), AlibcMeasureValueSet.create().setValue("analysisTime", (double) this.c).setValue("goTaobaoTime", (double) this.e).setValue(InitMonitorPoint.ALL_TIME, (double) this.d));
    }

    public void h() {
        this.e = System.currentTimeMillis();
    }

    public void i() {
        this.e = System.currentTimeMillis() - this.e;
    }
}

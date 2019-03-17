package com.alibaba.baichuan.trade.common.adapter.ut;

import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionValueSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureValueSet;
import java.util.Map;

public abstract class AlibcBaseUserTracker {
    public boolean init() {
        return false;
    }

    public void registerPerformancePoint(String str, String str2, AlibcMeasureSet alibcMeasureSet, AlibcDimensionSet alibcDimensionSet) {
    }

    public void sendCustomHit(String str, int i, String str2, long j, String str3, Map<String, String> map) {
    }

    public void sendCustomHit(String str, int i, String str2, String str3, String str4, Map<String, String> map) {
    }

    public void sendCustomHit(String str, String str2, long j, Map<String, String> map) {
    }

    public void sendCustomHit(String str, String str2, String str3, long j, Map<String, String> map) {
    }

    public void sendCustomHit(String str, String str2, Map<String, String> map) {
    }

    public void sendInitHit4DAU(String str, String str2) {
    }

    public void sendPerfomancePoint(String str, String str2, AlibcDimensionValueSet alibcDimensionValueSet, AlibcMeasureValueSet alibcMeasureValueSet) {
    }

    public void sendUseabilityFailure(String str, String str2, String str3, String str4, String str5) {
    }

    public void sendUseabilitySuccess(String str, String str2, String str3) {
    }

    public void setChannel(String str) {
    }

    public void setSampling(int i) {
    }

    public void turnOffDebug() {
    }

    public void turnOnDebug() {
    }
}

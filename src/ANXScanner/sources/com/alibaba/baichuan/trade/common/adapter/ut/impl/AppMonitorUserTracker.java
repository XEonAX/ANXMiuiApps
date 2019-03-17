package com.alibaba.baichuan.trade.common.adapter.ut.impl;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcBaseUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimension;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionValueSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasure;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureValue;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureValueSet;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.mtl.appmonitor.AppMonitor;
import com.alibaba.mtl.appmonitor.AppMonitor.Alarm;
import com.alibaba.mtl.appmonitor.AppMonitor.Stat;
import com.alibaba.mtl.appmonitor.model.Dimension;
import com.alibaba.mtl.appmonitor.model.DimensionSet;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.Measure;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.MeasureValue;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import com.ut.mini.UTAnalytics;
import com.ut.mini.UTHitBuilders.UTCustomHitBuilder;
import com.ut.mini.core.sign.UTSecuritySDKRequestAuthentication;
import com.ut.mini.internal.UTOriginalCustomHitBuilder;
import com.ut.mini.internal.UTTeamWork;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class AppMonitorUserTracker extends AlibcBaseUserTracker {
    public static final String TRACKER_ID = "aliTradesdk";
    public static final String USER_ID = "user_id";
    public static final String USER_NICK = "user_nick";
    private boolean a = true;
    private String b;

    public String getMeasures(Map<String, MeasureValue> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        Map hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            if (!(TextUtils.isEmpty((CharSequence) entry.getKey()) || entry.getValue() == null)) {
                hashMap.put(entry.getKey(), String.valueOf(((MeasureValue) entry.getValue()).getValue()));
            }
        }
        return hashMap.toString();
    }

    public boolean init() {
        try {
            UTAnalytics.getInstance().setContext(AlibcTradeCommon.context);
            UTAnalytics.getInstance().setAppApplicationInstance(AlibcTradeCommon.context);
            UTAnalytics.getInstance().setRequestAuthentication(new UTSecuritySDKRequestAuthentication(AlibcTradeCommon.getAppKey(), ""));
            if (AlibcTradeCommon.isDebug()) {
                turnOnDebug();
            }
            UTAnalytics.getInstance().turnOffAutoPageTrack();
            UTAnalytics.getInstance().getTracker(TRACKER_ID).setGlobalProperty("sdk_version", AlibcTradeCommon.systemVersion);
            return true;
        } catch (Throwable th) {
            this.a = false;
            return false;
        }
    }

    public boolean isThirdVersion() {
        return this.a;
    }

    public void registerPerformancePoint(String str, String str2, AlibcMeasureSet alibcMeasureSet, AlibcDimensionSet alibcDimensionSet) {
        MeasureSet create;
        DimensionSet dimensionSet;
        if (alibcMeasureSet != null) {
            create = MeasureSet.create();
            for (AlibcMeasure alibcMeasure : alibcMeasureSet.getMeasures()) {
                create.addMeasure(new Measure(alibcMeasure.getName(), alibcMeasure.getConstantValue(), alibcMeasure.getMin(), alibcMeasure.getMax()));
            }
        } else {
            create = null;
        }
        if (alibcDimensionSet != null) {
            DimensionSet create2 = DimensionSet.create();
            for (AlibcDimension alibcDimension : alibcDimensionSet.getDimensions()) {
                create2.addDimension(new Dimension(alibcDimension.getName(), alibcDimension.getConstantValue()));
            }
            dimensionSet = create2;
        } else {
            dimensionSet = null;
        }
        AppMonitor.register(str, str2, create, dimensionSet);
    }

    public void sendCustomHit(String str, int i, String str2, long j, String str3, Map<String, String> map) {
        UTAnalytics.getInstance().getTracker(TRACKER_ID).send(new UTOriginalCustomHitBuilder(str3, i, str, str2, String.valueOf(j), map).build());
    }

    public void sendCustomHit(String str, int i, String str2, String str3, String str4, Map<String, String> map) {
        UTAnalytics.getInstance().getTracker(TRACKER_ID).send(new UTOriginalCustomHitBuilder(str, i, str2, str3, str4, map).build());
    }

    public void sendCustomHit(String str, String str2, long j, Map<String, String> map) {
        sendCustomHit(TRACKER_ID, str, str2, j, map);
    }

    public void sendCustomHit(String str, String str2, String str3, long j, Map<String, String> map) {
        try {
            if (AlibcTradeCommon.isDebug()) {
                AlibcLogger.d("AppMonitorUserTracker-CustomHit", "业务埋点信息为: trackId = " + str + "\n label = " + str2 + "\n page = " + str3 + "\n time = " + j + "\n prop = " + map);
            }
        } catch (Throwable th) {
        }
        UTCustomHitBuilder uTCustomHitBuilder = new UTCustomHitBuilder(str2);
        uTCustomHitBuilder.setDurationOnEvent(j);
        uTCustomHitBuilder.setEventPage(str3);
        uTCustomHitBuilder.setProperties(map);
        Map build = uTCustomHitBuilder.build();
        if (!TextUtils.isEmpty(str)) {
            str = TRACKER_ID;
        }
        UTAnalytics.getInstance().getTracker(str).send(build);
    }

    public void sendCustomHit(String str, String str2, Map<String, String> map) {
        sendCustomHit(str, str2, 60, map);
    }

    public void sendInitHit4DAU(String str, String str2) {
        UTCustomHitBuilder uTCustomHitBuilder = new UTCustomHitBuilder("80001");
        Map hashMap = new HashMap();
        hashMap.put("model", AlibcConstants.TRADE_GROUP);
        hashMap.put("version", str2);
        uTCustomHitBuilder.setProperties(hashMap);
        UTAnalytics.getInstance().getTracker(str).send(uTCustomHitBuilder.build());
    }

    public void sendPerfomancePoint(String str, String str2, AlibcDimensionValueSet alibcDimensionValueSet, AlibcMeasureValueSet alibcMeasureValueSet) {
        DimensionValueSet dimensionValueSet;
        MeasureValueSet measureValueSet = null;
        if (alibcDimensionValueSet != null) {
            DimensionValueSet create = DimensionValueSet.create();
            Map map = alibcDimensionValueSet.getMap();
            if (map != null) {
                create.setMap(map);
            }
            dimensionValueSet = create;
        } else {
            dimensionValueSet = null;
        }
        if (alibcMeasureValueSet != null) {
            MeasureValueSet create2 = MeasureValueSet.create();
            Map map2 = alibcMeasureValueSet.getMap();
            if (map2 != null) {
                for (Entry entry : map2.entrySet()) {
                    AlibcMeasureValue alibcMeasureValue = (AlibcMeasureValue) entry.getValue();
                    if (alibcMeasureValue != null) {
                        MeasureValue create3 = MeasureValue.create();
                        create3.setOffset(alibcMeasureValue.getOffset().doubleValue());
                        create3.setValue(alibcMeasureValue.getValue());
                        create2.setValue((String) entry.getKey(), create3);
                    }
                }
            }
            measureValueSet = create2;
        }
        try {
            if (AlibcTradeCommon.isDebug()) {
                AlibcLogger.d("AppMonitorUserTracker-PerfomancePoint", "性能埋点信息为: module = " + str + "\n monitorPoint = " + str2 + "\n dimensionValueSet = " + dimensionValueSet.getMap() + "\n measureValueSet = " + getMeasures(measureValueSet.getMap()));
            }
        } catch (Throwable th) {
        }
        Stat.commit(str, str2, dimensionValueSet, measureValueSet);
    }

    public void sendUseabilityFailure(String str, String str2, String str3, String str4, String str5) {
        try {
            if (AlibcTradeCommon.isDebug()) {
                AlibcLogger.d("AppMonitorUserTracker-UseabilityPoint", "可用性埋点-success: module = " + str + "\n monitorPoint = " + str2 + "\n args = " + str3 + "\n errorCode = " + str4 + "\n errorMsg = " + str5);
            }
        } catch (Throwable th) {
        }
        Alarm.commitFail(str, str2, str3, str4, str5);
    }

    public void sendUseabilitySuccess(String str, String str2, String str3) {
        try {
            if (AlibcTradeCommon.isDebug()) {
                AlibcLogger.d("AppMonitorUserTracker-UseabilityPoint", "可用性埋点-success: module = " + str + "\n monitorPoint = " + str2 + "\n args = " + str3);
            }
        } catch (Throwable th) {
        }
        Alarm.commitSuccess(str, str2, str3);
    }

    public void setChannel(String str) {
        this.b = str;
        UTAnalytics.getInstance().setChannel(str);
    }

    public void setSampling(int i) {
        AppMonitor.setSampling(i);
        Stat.setSampling(i);
    }

    public void turnOffDebug() {
        AppMonitor.enableLog(false);
        UTTeamWork.getInstance().turnOffRealTimeDebug();
    }

    public void turnOnDebug() {
        UTAnalytics.getInstance().turnOnDebug();
        AppMonitor.enableLog(true);
    }
}

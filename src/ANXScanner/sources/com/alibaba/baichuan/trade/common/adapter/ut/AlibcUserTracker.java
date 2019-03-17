package com.alibaba.baichuan.trade.common.adapter.ut;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.adapter.ut.impl.AplusUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.impl.AppMonitorUserTracker;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcDimensionValueSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureSet;
import com.alibaba.baichuan.trade.common.adapter.ut.performance.AlibcMeasureValueSet;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.Map;

public class AlibcUserTracker {
    public static final int ERR_CODE = 2;
    public static final String ERR_MSG = "UT初始化失败";
    private static AlibcUserTracker a;
    private boolean b;
    private AlibcBaseUserTracker c;

    public class AlibcUserTrackerResult {
        public static final int UT_INIT_AD = 2;
        public static final int UT_INIT_FAIL = 1;
        public static final int UT_INIT_SUCCESS = 0;
        public static final int UT_INIT_THIRD_FAIL = 3;
        public int errorCode;
        public String errorMessage;
        public int result;

        public AlibcUserTrackerResult() {
            this.result = 0;
        }

        public AlibcUserTrackerResult(int i) {
            this.result = 0;
            this.result = i;
        }

        public AlibcUserTrackerResult(int i, String str) {
            this.result = 0;
            this.result = 1;
            this.errorCode = i;
            this.errorMessage = str;
        }
    }

    private AlibcUserTracker() {
        if (a()) {
            this.c = new AppMonitorUserTracker();
            return;
        }
        this.c = new AplusUserTracker();
        this.b = this.c.init();
    }

    private boolean a() {
        try {
            if (Class.forName("com.alibaba.mtl.appmonitor.AppMonitor") != null) {
                return true;
            }
        } catch (Throwable e) {
            AlibcLogger.e("AlibcUserTracker", "no appmonitor", e);
        }
        return false;
    }

    public static synchronized AlibcUserTracker getInstance() {
        AlibcUserTracker alibcUserTracker;
        synchronized (AlibcUserTracker.class) {
            if (a == null) {
                a = new AlibcUserTracker();
            }
            alibcUserTracker = a;
        }
        return alibcUserTracker;
    }

    public synchronized AlibcUserTrackerResult init() {
        AlibcUserTrackerResult alibcUserTrackerResult;
        if (this.b) {
            alibcUserTrackerResult = new AlibcUserTrackerResult(2);
        } else if (AlibcTradeCommon.context == null) {
            alibcUserTrackerResult = new AlibcUserTrackerResult(1);
        } else if (this.c.init()) {
            this.b = true;
            alibcUserTrackerResult = new AlibcUserTrackerResult(0);
        } else {
            alibcUserTrackerResult = new AlibcUserTrackerResult(3);
        }
        return alibcUserTrackerResult;
    }

    public boolean isThirdVersion() {
        return this.c instanceof AppMonitorUserTracker ? ((AppMonitorUserTracker) this.c).isThirdVersion() : false;
    }

    public void registerPerformancePoint(String str, String str2, AlibcMeasureSet alibcMeasureSet, AlibcDimensionSet alibcDimensionSet) {
        if (this.b) {
            this.c.registerPerformancePoint(str, str2, alibcMeasureSet, alibcDimensionSet);
        }
    }

    public void sendCustomHit(String str, int i, String str2, long j, String str3, Map<String, String> map) {
        if (this.b) {
            this.c.sendCustomHit(str, i, str2, j, str3, (Map) map);
        }
    }

    public void sendCustomHit(String str, int i, String str2, String str3, String str4, Map<String, String> map) {
        if (this.b) {
            this.c.sendCustomHit(str, i, str2, str3, str4, (Map) map);
        }
    }

    public void sendCustomHit(String str, String str2, long j, Map<String, String> map) {
        if (this.b) {
            this.c.sendCustomHit(str, str2, j, map);
        }
    }

    public void sendCustomHit(String str, String str2, String str3, long j, Map<String, String> map) {
        if (this.b) {
            this.c.sendCustomHit(str, str2, str3, j, map);
        }
    }

    public void sendCustomHit(String str, String str2, Map<String, String> map) {
        if (this.b) {
            this.c.sendCustomHit(str, str2, map);
        }
    }

    public void sendInitHit4DAU(String str, String str2) {
        if (this.b) {
            this.c.sendInitHit4DAU(str, str2);
        }
    }

    public void sendPerfomancePoint(String str, String str2, AlibcDimensionValueSet alibcDimensionValueSet, AlibcMeasureValueSet alibcMeasureValueSet) {
        if (this.b) {
            this.c.sendPerfomancePoint(str, str2, alibcDimensionValueSet, alibcMeasureValueSet);
        }
    }

    public void sendUseabilityFailure(String str, String str2, String str3, String str4, String str5) {
        if (this.b) {
            this.c.sendUseabilityFailure(str, str2, str3, str4, str5);
        }
    }

    public void sendUseabilitySuccess(String str, String str2, String str3) {
        if (this.b) {
            this.c.sendUseabilitySuccess(str, str2, str3);
        }
    }

    public void setChannel(String str) {
        if (this.b && !TextUtils.isEmpty(str)) {
            this.c.setChannel(str);
        }
    }

    public void setSampling(int i) {
        if (this.b) {
            this.c.setSampling(i);
        }
    }

    public void turnOffDebug() {
        if (this.b) {
            this.c.turnOffDebug();
        }
    }

    public void turnOnDebug() {
        if (this.b) {
            this.c.turnOnDebug();
        }
    }
}

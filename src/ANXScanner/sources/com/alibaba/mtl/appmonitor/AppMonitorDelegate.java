package com.alibaba.mtl.appmonitor;

import android.app.Application;
import android.text.TextUtils;
import com.alibaba.mtl.appmonitor.a.e;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.b.b;
import com.alibaba.mtl.appmonitor.d.j;
import com.alibaba.mtl.appmonitor.model.DimensionSet;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.Measure;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import com.alibaba.mtl.appmonitor.model.Metric;
import com.alibaba.mtl.appmonitor.model.MetricRepo;
import com.alibaba.mtl.log.b.a;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.l;
import com.alibaba.mtl.log.sign.BaseRequestAuth;
import com.alibaba.mtl.log.sign.IRequestAuth;
import com.alibaba.mtl.log.sign.SecurityRequestAuth;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class AppMonitorDelegate {
    public static final String DEFAULT_VALUE = "defaultValue";
    public static boolean IS_DEBUG = false;
    public static final String MAX_VALUE = "maxValue";
    public static final String MIN_VALUE = "minValue";
    public static final String TAG = "AppMonitorDelegate";
    private static Application b;
    static volatile boolean i = false;

    public static class Alarm {
        public static void setStatisticsInterval(int statisticsInterval) {
            f.ALARM.setStatisticsInterval(statisticsInterval);
            AppMonitorDelegate.setStatisticsInterval(f.ALARM, statisticsInterval);
        }

        public static void setSampling(int sampling) {
            j.a().a(f.ALARM, sampling);
        }

        @Deprecated
        public static boolean checkSampled(String module, String monitorPoint) {
            return j.a(f.ALARM, module, monitorPoint);
        }

        public static void commitSuccess(String module, String monitorPoint, Map<String, String> exta) {
            commitSuccess(module, monitorPoint, null, exta);
        }

        public static void commitSuccess(String module, String monitorPoint, String arg, Map<String, String> exta) {
            try {
                if (TextUtils.isEmpty(module) || TextUtils.isEmpty(monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, (Object) "module & monitorPoint must not null");
                    return;
                }
                a.A();
                if (AppMonitorDelegate.i && com.alibaba.mtl.log.a.a.f() && f.ALARM.isOpen() && (AppMonitorDelegate.IS_DEBUG || j.a(module, monitorPoint, Boolean.valueOf(true), null))) {
                    i.a(AppMonitorDelegate.TAG, "commitSuccess module:", module, " monitorPoint:", monitorPoint);
                    a.B();
                    e.a().a(f.ALARM.a(), module, monitorPoint, arg, (Map) exta);
                    return;
                }
                i.a("log discard !", (Object) "");
            } catch (Throwable th) {
                b.a(th);
            }
        }

        public static void commitFail(String module, String monitorPoint, String errorCode, String errorMsg, Map<String, String> exta) {
            commitFail(module, monitorPoint, null, errorCode, errorMsg, exta);
        }

        public static void commitFail(String module, String monitorPoint, String arg, String errorCode, String errorMsg, Map<String, String> exta) {
            try {
                if (TextUtils.isEmpty(module) || TextUtils.isEmpty(monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, (Object) "module & monitorPoint must not null");
                    return;
                }
                a.A();
                Map hashMap = new HashMap();
                hashMap.put("_status", "0");
                if (AppMonitorDelegate.i && com.alibaba.mtl.log.a.a.f() && f.ALARM.isOpen() && (AppMonitorDelegate.IS_DEBUG || j.a(module, monitorPoint, Boolean.valueOf(false), hashMap))) {
                    i.a(AppMonitorDelegate.TAG, "commitFail module:", module, " monitorPoint:", monitorPoint, " errorCode:", errorCode, "errorMsg:", errorMsg);
                    a.B();
                    e.a().a(f.ALARM.a(), module, monitorPoint, arg, errorCode, errorMsg, exta);
                    return;
                }
                i.a("log discard !", (Object) "");
            } catch (Throwable th) {
                b.a(th);
            }
        }
    }

    public static class Counter {
        public static void setStatisticsInterval(int statisticsInterval) {
            f.COUNTER.setStatisticsInterval(statisticsInterval);
            AppMonitorDelegate.setStatisticsInterval(f.COUNTER, statisticsInterval);
        }

        public static void setSampling(int sampling) {
            j.a().a(f.COUNTER, sampling);
        }

        @Deprecated
        public static boolean checkSampled(String module, String monitorPoint) {
            return j.a(f.COUNTER, module, monitorPoint);
        }

        public static void commit(String module, String monitorPoint, double value, Map<String, String> exta) {
            commit(module, monitorPoint, null, value, exta);
        }

        public static void commit(String module, String monitorPoint, String arg, double value, Map<String, String> exta) {
            try {
                if (TextUtils.isEmpty(module) || TextUtils.isEmpty(monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, (Object) "module & monitorPoint must not null");
                    return;
                }
                a.y();
                if (!AppMonitorDelegate.i || !com.alibaba.mtl.log.a.a.f() || !f.COUNTER.isOpen()) {
                    return;
                }
                if (AppMonitorDelegate.IS_DEBUG || j.a(f.COUNTER, module, monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, "commitCount module: ", module, " monitorPoint: ", monitorPoint, " value: ", Double.valueOf(value));
                    a.z();
                    e.a().a(f.COUNTER.a(), module, monitorPoint, arg, value, (Map) exta);
                }
            } catch (Throwable th) {
                b.a(th);
            }
        }
    }

    public static class OffLineCounter {
        public static void setStatisticsInterval(int statisticsInterval) {
            f.OFFLINE_COUNTER.setStatisticsInterval(statisticsInterval);
            AppMonitorDelegate.setStatisticsInterval(f.OFFLINE_COUNTER, statisticsInterval);
        }

        public static void setSampling(int sampling) {
            j.a().a(f.OFFLINE_COUNTER, sampling);
        }

        @Deprecated
        public static boolean checkSampled(String module, String monitorPoint) {
            return j.a(f.OFFLINE_COUNTER, module, monitorPoint);
        }

        public static void commit(String module, String monitorPoint, double value) {
            try {
                if (TextUtils.isEmpty(module) || TextUtils.isEmpty(monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, (Object) "module & monitorPoint must not null");
                    return;
                }
                a.w();
                if (!AppMonitorDelegate.i || !com.alibaba.mtl.log.a.a.f() || !f.OFFLINE_COUNTER.isOpen()) {
                    return;
                }
                if (AppMonitorDelegate.IS_DEBUG || j.a(f.OFFLINE_COUNTER, module, monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, "commitOffLineCount module: ", module, " monitorPoint: ", monitorPoint, " value: ", Double.valueOf(value));
                    a.x();
                    e.a().a(f.OFFLINE_COUNTER.a(), module, monitorPoint, null, value, null);
                }
            } catch (Throwable th) {
                b.a(th);
            }
        }
    }

    public static class Stat {
        public static void setStatisticsInterval(int statisticsInterval) {
            f.STAT.setStatisticsInterval(statisticsInterval);
            AppMonitorDelegate.setStatisticsInterval(f.STAT, statisticsInterval);
        }

        public static void setSampling(int sampling) {
            j.a().a(f.STAT, sampling);
        }

        @Deprecated
        public static boolean checkSampled(String module, String monitorPoint) {
            return j.a(f.STAT, module, monitorPoint);
        }

        public static void begin(String module, String monitorPoint, String measureName) {
            try {
                if (!AppMonitorDelegate.i || !com.alibaba.mtl.log.a.a.f() || !f.STAT.isOpen()) {
                    return;
                }
                if (AppMonitorDelegate.IS_DEBUG || j.a(f.STAT, module, monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, "statEvent begin. module: ", module, " monitorPoint: ", monitorPoint, " measureName: ", measureName);
                    e.a().a(Integer.valueOf(f.STAT.a()), module, monitorPoint, measureName);
                }
            } catch (Throwable th) {
                b.a(th);
            }
        }

        public static void end(String module, String monitorPoint, String measureName) {
            try {
                if (!AppMonitorDelegate.i || !com.alibaba.mtl.log.a.a.f() || !f.STAT.isOpen()) {
                    return;
                }
                if (AppMonitorDelegate.IS_DEBUG || j.a(f.STAT, module, monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, "statEvent end. module: ", module, " monitorPoint: ", monitorPoint, " measureName: ", measureName);
                    e.a().a(module, monitorPoint, measureName);
                }
            } catch (Throwable th) {
                b.a(th);
            }
        }

        public static Transaction createTransaction(String module, String monitorPoint) {
            return createTransaction(module, monitorPoint, null);
        }

        public static Transaction createTransaction(String module, String monitorPoint, DimensionValueSet dimensionValues) {
            return new Transaction(Integer.valueOf(f.STAT.a()), module, monitorPoint, dimensionValues);
        }

        public static void commit(String module, String monitorPoint, double value, Map<String, String> exta) {
            commit(module, monitorPoint, null, value, (Map) exta);
        }

        public static void commit(String module, String monitorPoint, DimensionValueSet dimensionValues, double value, Map<String, String> exta) {
            try {
                if (TextUtils.isEmpty(module) || TextUtils.isEmpty(monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, (Object) "module & monitorPoint must not null");
                    return;
                }
                a.u();
                if (!AppMonitorDelegate.i || !com.alibaba.mtl.log.a.a.f() || !f.STAT.isOpen()) {
                    return;
                }
                if (AppMonitorDelegate.IS_DEBUG || j.a(f.STAT, module, monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, "statEvent commit. module: ", module, " monitorPoint: ", monitorPoint);
                    Metric metric = MetricRepo.getRepo().getMetric(module, monitorPoint);
                    a.v();
                    if (metric != null) {
                        List measures = metric.getMeasureSet().getMeasures();
                        if (measures.size() == 1) {
                            commit(module, monitorPoint, dimensionValues, ((MeasureValueSet) com.alibaba.mtl.appmonitor.c.a.a().a(MeasureValueSet.class, new Object[0])).setValue(((Measure) measures.get(0)).getName(), value), (Map) exta);
                        }
                    }
                }
            } catch (Throwable th) {
                b.a(th);
            }
        }

        /* JADX WARNING: Missing block: B:18:0x0039, code:
            if (com.alibaba.mtl.appmonitor.d.j.a(com.alibaba.mtl.appmonitor.a.f.STAT, r7, r8, r9 != null ? r9.getMap() : null) != false) goto L_0x003b;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static void commit(String module, String monitorPoint, DimensionValueSet dimensionValues, MeasureValueSet measureValues, Map<String, String> exta) {
            try {
                if (TextUtils.isEmpty(module) || TextUtils.isEmpty(monitorPoint)) {
                    i.a(AppMonitorDelegate.TAG, (Object) "module & monitorPoint must not null");
                    return;
                }
                a.u();
                if (AppMonitorDelegate.i && com.alibaba.mtl.log.a.a.f() && f.STAT.isOpen()) {
                    if (!AppMonitorDelegate.IS_DEBUG) {
                    }
                    i.a("statEvent commit success", "statEvent commit. module: ", module, " monitorPoint: ", monitorPoint);
                    a.v();
                    e.a().a(f.STAT.a(), module, monitorPoint, measureValues, dimensionValues, (Map) exta);
                    return;
                }
                i.a("statEvent commit failed,log discard", " ,. module: ", module, " monitorPoint: ", monitorPoint);
            } catch (Throwable th) {
                b.a(th);
            }
        }
    }

    public static synchronized void init(Application application) {
        synchronized (AppMonitorDelegate.class) {
            i.a(TAG, "start init");
            try {
                if (!i) {
                    b = application;
                    com.alibaba.mtl.log.a.a(application.getApplicationContext());
                    b.init();
                    c.init();
                    a.init(application);
                    l.b(application.getApplicationContext());
                    i = true;
                }
            } catch (Throwable th) {
                destroy();
            }
        }
        return;
    }

    public static synchronized void destroy() {
        synchronized (AppMonitorDelegate.class) {
            try {
                i.a(TAG, "start destory");
                if (i) {
                    c.d();
                    c.destroy();
                    b.destroy();
                    if (b != null) {
                        l.c(b.getApplicationContext());
                    }
                    i = false;
                }
            } catch (Throwable th) {
                b.a(th);
            }
        }
        return;
    }

    public static synchronized void triggerUpload() {
        synchronized (AppMonitorDelegate.class) {
            try {
                i.a(TAG, "triggerUpload");
                if (i && com.alibaba.mtl.log.a.a.f()) {
                    c.d();
                }
            } catch (Throwable th) {
                b.a(th);
            }
        }
        return;
    }

    public static void setStatisticsInterval(int statisticsInterval) {
        for (f fVar : f.a()) {
            fVar.setStatisticsInterval(statisticsInterval);
            setStatisticsInterval(fVar, statisticsInterval);
        }
    }

    public static void setSampling(int sampling) {
        int i = 0;
        i.a(TAG, "[setSampling]");
        f[] a = f.a();
        int length = a.length;
        while (i < length) {
            f fVar = a[i];
            fVar.c(sampling);
            j.a().a(fVar, sampling);
            i++;
        }
    }

    public static void enableLog(boolean open) {
        i.a(TAG, "[enableLog]");
        i.setDebug(open);
    }

    public static void register(String module, String monitorPoint, MeasureSet measures) {
        register(module, monitorPoint, measures, null);
    }

    public static void register(String module, String monitorPoint, MeasureSet measures, boolean isCommitDetail) {
        register(module, monitorPoint, measures, null, isCommitDetail);
    }

    public static void register(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions) {
        register(module, monitorPoint, measures, dimensions, false);
    }

    public static void register(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions, boolean isCommitDetail) {
        try {
            if (!i) {
                return;
            }
            if (com.alibaba.mtl.appmonitor.f.b.d(module) || com.alibaba.mtl.appmonitor.f.b.d(monitorPoint)) {
                i.a(TAG, "register stat event. module: ", module, " monitorPoint: ", monitorPoint);
                if (IS_DEBUG) {
                    throw new com.alibaba.mtl.appmonitor.b.a("register error. module and monitorPoint can't be null");
                }
                return;
            }
            MetricRepo.getRepo().add(new Metric(module, monitorPoint, measures, dimensions, isCommitDetail));
        } catch (Throwable th) {
            b.a(th);
        }
    }

    public static void updateMeasure(String module, String monitorPoint, String measureName, double min, double max, double defaultValue) {
        i.a(TAG, "[updateMeasure]");
        try {
            if (i && !com.alibaba.mtl.appmonitor.f.b.d(module) && !com.alibaba.mtl.appmonitor.f.b.d(monitorPoint)) {
                Metric metric = MetricRepo.getRepo().getMetric(module, monitorPoint);
                if (metric != null && metric.getMeasureSet() != null) {
                    metric.getMeasureSet().upateMeasure(new Measure(measureName, Double.valueOf(defaultValue), Double.valueOf(min), Double.valueOf(max)));
                }
            }
        } catch (Exception e) {
        }
    }

    static void setStatisticsInterval(f eventType, int statisticsInterval) {
        try {
            if (i && eventType != null) {
                c.a(eventType.a(), statisticsInterval);
                if (statisticsInterval > 0) {
                    eventType.b(true);
                } else {
                    eventType.b(false);
                }
            }
        } catch (Throwable th) {
            b.a(th);
        }
    }

    public static void setRequestAuthInfo(boolean isSecurity, String appkey, String secret, String authcode) {
        IRequestAuth securityRequestAuth;
        if (isSecurity) {
            securityRequestAuth = new SecurityRequestAuth(appkey, authcode);
        } else {
            boolean z = false;
            if ("1".equalsIgnoreCase(authcode)) {
                z = true;
            }
            Object securityRequestAuth2 = new BaseRequestAuth(appkey, secret, z);
        }
        com.alibaba.mtl.log.a.a(securityRequestAuth2);
        com.alibaba.mtl.log.a.a.a(b);
    }

    public static void setChannel(String channel) {
        com.alibaba.mtl.log.a.setChannel(channel);
    }

    public static void turnOnRealTimeDebug(Map<String, String> params) {
        com.alibaba.mtl.log.a.a.turnOnRealTimeDebug(params);
    }

    public static void turnOffRealTimeDebug() {
        i.a(TAG, "[turnOffRealTimeDebug]");
    }
}

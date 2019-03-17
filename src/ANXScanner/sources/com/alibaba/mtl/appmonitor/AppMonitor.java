package com.alibaba.mtl.appmonitor;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.mtl.appmonitor.IMonitor.Stub;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.model.DimensionSet;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import com.alibaba.mtl.log.d.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

public final class AppMonitor {
    public static final String TAG = "AppMonitor";
    private static Application a = null;
    /* renamed from: a */
    private static ServiceConnection f1a = new ServiceConnection() {
        public void onServiceConnected(ComponentName name, IBinder service) {
            if (b.Service == AppMonitor.a) {
                AppMonitor.a = Stub.asInterface(service);
                if (AppMonitor.restart() && AppMonitor.a != null) {
                    AppMonitor.a.postAtFrontOfQueue(new Runnable() {
                        public void run() {
                            AppMonitor.restart();
                        }
                    });
                }
            }
            synchronized (AppMonitor.a) {
                AppMonitor.a.notifyAll();
            }
        }

        public void onServiceDisconnected(ComponentName name) {
            i.a(AppMonitor.TAG, "[onServiceDisconnected]");
            synchronized (AppMonitor.a) {
                AppMonitor.a.notifyAll();
            }
            AppMonitor.b = true;
        }
    };
    /* renamed from: a */
    private static HandlerThread f2a = null;
    /* renamed from: a */
    private static b f3a = b.Local;
    /* renamed from: a */
    protected static c f4a = null;
    /* renamed from: a */
    protected static IMonitor f5a;
    /* renamed from: a */
    private static Object f6a = new Object();
    /* renamed from: a */
    private static List<a> f7a = Collections.synchronizedList(new ArrayList());
    /* renamed from: a */
    private static volatile boolean f8a;
    private static Map<String, APTrack> b = Collections.synchronizedMap(new HashMap());
    /* renamed from: b */
    private static boolean f9b = false;
    private static boolean c;
    private static String f;
    private static String g;
    private static String h;
    private static String i;
    private static Context mContext;

    public static class Alarm {
        public static void setStatisticsInterval(final int statisticsInterval) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.alarm_setStatisticsInterval(statisticsInterval);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void setSampling(final int sampling) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.alarm_setSampling(sampling);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        @Deprecated
        public static boolean checkSampled(String module, String monitorPoint) {
            boolean z = false;
            if (AppMonitor.a == null) {
                return z;
            }
            try {
                return AppMonitor.a.alarm_checkSampled(module, monitorPoint);
            } catch (Exception e) {
                AppMonitor.a(e);
                return z;
            }
        }

        public static void commitSuccess(final String module, final String monitorPoint) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.alarm_commitSuccess1(module, monitorPoint, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void commitSuccess(final String module, final String monitorPoint, final String arg) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.alarm_commitSuccess2(module, monitorPoint, arg, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void commitFail(final String module, final String monitorPoint, final String errorCode, final String errorMsg) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.alarm_commitFail1(module, monitorPoint, errorCode, errorMsg, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void commitFail(String module, String monitorPoint, String arg, String errorCode, String errorMsg) {
            if (AppMonitor.checkInit()) {
                final String str = module;
                final String str2 = monitorPoint;
                final String str3 = arg;
                final String str4 = errorCode;
                final String str5 = errorMsg;
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.alarm_commitFail2(str, str2, str3, str4, str5, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }
    }

    public static class Counter {
        public static void setStatisticsInterval(final int statisticsInterval) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.counter_setStatisticsInterval(statisticsInterval);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void setSampling(final int sampling) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.counter_setSampling(sampling);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        @Deprecated
        public static boolean checkSampled(String module, String monitorPoint) {
            boolean z = false;
            if (AppMonitor.a == null) {
                return z;
            }
            try {
                return AppMonitor.a.counter_checkSampled(module, monitorPoint);
            } catch (Exception e) {
                AppMonitor.a(e);
                return z;
            }
        }

        public static void commit(final String module, final String monitorPoint, final double value) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.counter_commit1(value, monitorPoint, value, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void commit(String module, String monitorPoint, String arg, double value) {
            if (AppMonitor.checkInit()) {
                final String str = module;
                final String str2 = monitorPoint;
                final String str3 = arg;
                final double d = value;
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.counter_commit2(d, str2, str3, d, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }
    }

    public static class OffLineCounter {
        public static void setStatisticsInterval(final int statisticsInterval) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.offlinecounter_setStatisticsInterval(statisticsInterval);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void setSampling(final int sampling) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.offlinecounter_setSampling(sampling);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        @Deprecated
        public static boolean checkSampled(String module, String monitorPoint) {
            boolean z = false;
            if (AppMonitor.a == null) {
                return z;
            }
            try {
                return AppMonitor.a.offlinecounter_checkSampled(module, monitorPoint);
            } catch (Exception e) {
                AppMonitor.a(e);
                return z;
            }
        }

        public static void commit(final String module, final String monitorPoint, final double value) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.offlinecounter_commit(value, monitorPoint, value);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }
    }

    public static class Stat {
        public static void setStatisticsInterval(final int statisticsInterval) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.stat_setStatisticsInterval(statisticsInterval);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void setSampling(final int sampling) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.stat_setSampling(sampling);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static boolean checkSampled(String module, String monitorPoint) {
            boolean z = false;
            if (AppMonitor.a == null) {
                return z;
            }
            try {
                return AppMonitor.a.stat_checkSampled(module, monitorPoint);
            } catch (Exception e) {
                AppMonitor.a(e);
                return z;
            }
        }

        public static void begin(final String module, final String monitorPoint, final String measureName) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.stat_begin(module, monitorPoint, measureName);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void end(final String module, final String monitorPoint, final String measureName) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.stat_end(module, monitorPoint, measureName);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static Transaction createTransaction(String module, String monitorPoint) {
            return createTransaction(module, monitorPoint, null);
        }

        public static Transaction createTransaction(String module, String monitorPoint, DimensionValueSet dimensionValues) {
            return new Transaction(Integer.valueOf(f.STAT.a()), module, monitorPoint, dimensionValues);
        }

        public static Transaction createTransaction(String module, String monitorPoint, DimensionValueSet dimensionValues, String appkey) {
            return new Transaction(Integer.valueOf(f.STAT.a()), module, monitorPoint, dimensionValues, appkey);
        }

        public static void commit(String module, String monitorPoint, double value) {
            commit(module, monitorPoint, null, value);
        }

        public static void commit(String module, String monitorPoint, DimensionValueSet dimensionValues, double value) {
            if (AppMonitor.checkInit()) {
                final String str = module;
                final String str2 = monitorPoint;
                final DimensionValueSet dimensionValueSet = dimensionValues;
                final double d = value;
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.stat_commit2(d, str2, d, d, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }

        public static void commit(String module, String monitorPoint, String[] dimensionNames, String[] dimensionValues, String[] measureNames, String[] measureValues) {
            DimensionValueSet dimensionValueSet;
            int i;
            MeasureValueSet measureValueSet;
            i.a(AppMonitor.TAG, "[commit from jni]");
            if (dimensionNames == null || dimensionValues == null || dimensionNames.length != dimensionValues.length) {
                dimensionValueSet = null;
            } else {
                DimensionValueSet create = DimensionValueSet.create();
                for (i = 0; i < dimensionValues.length; i++) {
                    create.setValue(dimensionNames[i], dimensionValues[i]);
                }
                dimensionValueSet = create;
            }
            if (measureNames == null || measureValues == null || measureNames.length != measureValues.length) {
                i.a(AppMonitor.TAG, "measure is null ,or lenght not match");
                measureValueSet = null;
            } else {
                MeasureValueSet create2 = MeasureValueSet.create();
                for (i = 0; i < measureValues.length; i++) {
                    double d = 0.0d;
                    if (!TextUtils.isEmpty(measureValues[i])) {
                        try {
                            d = Double.valueOf(measureValues[i]).doubleValue();
                        } catch (Exception e) {
                            i.a(AppMonitor.TAG, "measure's value cannot convert to double. measurevalue:" + measureValues[i]);
                        }
                    }
                    create2.setValue(measureNames[i], d);
                }
                measureValueSet = create2;
            }
            commit(module, monitorPoint, dimensionValueSet, measureValueSet);
        }

        public static void commit(final String module, final String monitorPoint, final DimensionValueSet dimensionValues, final MeasureValueSet measureValues) {
            if (AppMonitor.checkInit()) {
                AppMonitor.a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.stat_commit3(dimensionValues, monitorPoint, dimensionValues, dimensionValues, null);
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }
    }

    static class a {
        public DimensionSet b;
        /* renamed from: b */
        public MeasureSet f24b;
        public boolean g;
        public String o;
        public String p;

        a() {
        }
    }

    enum b {
        Local,
        Service
    }

    static class c extends Handler {
        private boolean h = false;

        public c(Looper looper) {
            super(looper);
        }

        public void a(Runnable runnable) {
            if (runnable != null) {
                try {
                    Message obtain = Message.obtain();
                    obtain.what = 1;
                    obtain.obj = runnable;
                    sendMessage(obtain);
                } catch (Throwable th) {
                }
            }
        }

        public void handleMessage(Message msg) {
            try {
                if (this.h) {
                    this.h = false;
                    synchronized (AppMonitor.a) {
                        try {
                            AppMonitor.a.wait(5000);
                        } catch (InterruptedException e) {
                            AppMonitor.a;
                        }
                    }
                }
                if (msg.obj != null && (msg.obj instanceof Runnable)) {
                    try {
                        ((Runnable) msg.obj).run();
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
            }
            super.handleMessage(msg);
        }

        public void a(boolean z) {
            this.h = true;
        }
    }

    static {
        try {
            System.loadLibrary("ut_c_api");
            Log.i(TAG, "load ut_c_api.so success");
        } catch (Throwable th) {
            Log.w(TAG, "load ut_c_api.so failed");
        }
    }

    public static synchronized void init(Application application) {
        synchronized (AppMonitor.class) {
            i.a(TAG, "[init]");
            try {
                if (!a) {
                    a = application;
                    if (a != null) {
                        mContext = a.getApplicationContext();
                    }
                    a = new HandlerThread("AppMonitor_Client");
                    a.start();
                    a = new c(a.getLooper());
                    if (a == b.Local) {
                        a;
                    } else if (a) {
                        a.a(true);
                    }
                    a.run();
                    a = true;
                }
            } catch (Throwable th) {
            }
        }
    }

    @Deprecated
    public static synchronized void destroy() {
        synchronized (AppMonitor.class) {
            if (checkInit()) {
                a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.destroy();
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }
    }

    @Deprecated
    public static synchronized void triggerUpload() {
        synchronized (AppMonitor.class) {
            if (a) {
                a.a(new Runnable() {
                    public void run() {
                        try {
                            AppMonitor.a.triggerUpload();
                        } catch (Exception e) {
                            AppMonitor.a(e);
                        }
                    }
                });
            }
        }
    }

    public static void setStatisticsInterval(final int statisticsInterval) {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.setStatisticsInterval1(statisticsInterval);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
        }
    }

    public static void setSampling(final int sampling) {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.setSampling(sampling);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
        }
    }

    public static void enableLog(final boolean open) {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.enableLog(open);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
        }
    }

    public static void register(final String module, final String monitorPoint, final MeasureSet measures) {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.register1(measures, monitorPoint, measures);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
            a(module, monitorPoint, measures, null, false);
        }
    }

    public static void register(final String module, final String monitorPoint, final MeasureSet measures, final boolean isCommitDetail) {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.register2(measures, monitorPoint, measures, isCommitDetail);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
            a(module, monitorPoint, measures, null, isCommitDetail);
        }
    }

    public static void register(final String module, final String monitorPoint, final MeasureSet measures, final DimensionSet dimensions) {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        i.a(AppMonitor.TAG, "[register]:", AppMonitor.a);
                        AppMonitor.a.register3(dimensions, monitorPoint, dimensions, dimensions);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
            a(module, monitorPoint, measures, dimensions, false);
        }
    }

    public static void register(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions, boolean isCommitDetail) {
        if (checkInit()) {
            registerInternal(module, monitorPoint, measures, dimensions, isCommitDetail, false);
        }
    }

    public static void register(String module, String monitorPoint, String[] measures, String[] dimensions, boolean isCommitDetail) {
        int i = 0;
        String str = TAG;
        Object[] objArr = new Object[9];
        objArr[0] = "[register]";
        objArr[1] = "module:";
        objArr[2] = module;
        objArr[3] = "measures:";
        objArr[4] = measures == null ? "null" : new JSONArray(Arrays.asList(measures)).toString();
        objArr[5] = "dimensions:";
        objArr[6] = dimensions == null ? "null" : new JSONArray(Arrays.asList(dimensions)).toString();
        objArr[7] = "isCommitDetail:";
        objArr[8] = Boolean.valueOf(isCommitDetail);
        i.a(str, objArr);
        if (measures != null) {
            MeasureSet create = MeasureSet.create();
            for (String addMeasure : measures) {
                create.addMeasure(addMeasure);
            }
            DimensionSet dimensionSet = null;
            if (dimensions != null) {
                dimensionSet = DimensionSet.create();
                while (i < dimensions.length) {
                    dimensionSet.addDimension(dimensions[i]);
                    i++;
                }
            }
            register(module, monitorPoint, create, dimensionSet, isCommitDetail);
            return;
        }
        i.a(TAG, "register failed:no mearsure");
    }

    public static void updateMeasure(String module, String monitorPoint, String name, double min, double max, double defaultValue) {
        i.a(TAG, "[updateMeasure]");
        if (checkInit()) {
            final String str = module;
            final String str2 = monitorPoint;
            final String str3 = name;
            final double d = min;
            final double d2 = max;
            final double d3 = defaultValue;
            a.post(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.updateMeasure(str, d, str3, d, d2, d3);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
        }
    }

    public static void registerInternal(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions, boolean isCommitDetail, boolean isInternal) {
        if (checkInit()) {
            i.a(TAG, "[registerInternal] : module:", module, "monitorPoint:", monitorPoint, "measures:", measures, "dimensions:", dimensions, "isCommitDetail:", Boolean.valueOf(isCommitDetail), "isInternal:", Boolean.valueOf(isInternal));
            if (!isInternal) {
                a(module, monitorPoint, measures, dimensions, isCommitDetail);
            }
            a.a(a(module, monitorPoint, measures, dimensions, isCommitDetail));
        }
    }

    /* renamed from: a */
    private static void m2a(String str, String str2, MeasureSet measureSet, DimensionSet dimensionSet, boolean z) {
        try {
            a aVar = new a();
            aVar.o = str;
            aVar.p = str2;
            aVar.b = measureSet;
            aVar.b = dimensionSet;
            aVar.g = z;
            a.add(aVar);
        } catch (Throwable th) {
        }
    }

    public static void setStatisticsInterval(f eventType, final int statisticsInterval) {
        if (checkInit()) {
            final int a = a(eventType);
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.setStatisticsInterval2(a, statisticsInterval);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
        }
    }

    private static int a(f fVar) {
        return fVar.a();
    }

    public static void setRequestAuthInfo(boolean isSecurity, String appkey, String secret, String authcode) {
        if (checkInit()) {
            a.a(a(isSecurity, appkey, secret, authcode));
            c = isSecurity;
            g = appkey;
            h = secret;
            i = authcode;
        }
    }

    public static void setChannel(String channel) {
        if (checkInit()) {
            a.a(a(channel));
            f = channel;
        }
    }

    public static void turnOnRealTimeDebug(final Map<String, String> params) {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.turnOnRealTimeDebug(params);
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
        }
    }

    public static void turnOffRealTimeDebug() {
        if (checkInit()) {
            a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.turnOffRealTimeDebug();
                    } catch (Exception e) {
                        AppMonitor.a(e);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    private static boolean m3a() {
        if (a == null) {
            return false;
        }
        boolean bindService = a.getApplicationContext().bindService(new Intent(a.getApplicationContext(), AppMonitorService.class), a, 1);
        if (!bindService) {
            a;
        }
        i.a(TAG, "bindsuccess:", Boolean.valueOf(bindService));
        return bindService;
    }

    private static void a(Exception exception) {
        i.a(TAG, "", exception);
        if (exception instanceof DeadObjectException) {
            restart();
        }
    }

    private static synchronized void restart() {
        int i = 0;
        synchronized (AppMonitor.class) {
            i.a(TAG, "[restart]");
            try {
                if (b) {
                    b = false;
                    a;
                    a.run();
                    a(c, g, h, i).run();
                    a(f).run();
                    synchronized (a) {
                        while (true) {
                            int i2 = i;
                            if (i2 >= a.size()) {
                                break;
                            }
                            a aVar = (a) a.get(i2);
                            if (aVar != null) {
                                try {
                                    a(aVar.o, aVar.p, aVar.b, aVar.b, aVar.g).run();
                                } catch (Throwable th) {
                                }
                            }
                            i = i2 + 1;
                        }
                        while (true) {
                        }
                    }
                }
            } catch (Throwable th2) {
            }
        }
    }

    /* renamed from: a */
    private static void m1a() {
        a = new Monitor(a);
        a = b.Local;
        i.a(TAG, (Object) "Start AppMonitor Service failed,AppMonitor run in local Mode...");
    }

    public static boolean checkInit() {
        if (!a) {
            i.a(TAG, "Please call UTAnalytics.getInstance().setAppApplicationInstance()||.setAppApplicationInstance4sdk() before call other method");
        }
        return a;
    }

    private static Runnable a() {
        return new Runnable() {
            public void run() {
                try {
                    AppMonitor.a.init();
                } catch (RemoteException e) {
                    AppMonitor.a;
                    AppMonitor.a.init();
                } catch (Throwable th) {
                }
            }
        };
    }

    private static Runnable a(final boolean z, final String str, final String str2, final String str3) {
        return new Runnable() {
            public void run() {
                try {
                    AppMonitor.a.setRequestAuthInfo(z, str, str2, str3);
                } catch (Throwable th) {
                }
            }
        };
    }

    private static Runnable a(final String str) {
        return new Runnable() {
            public void run() {
                try {
                    AppMonitor.a.setChannel(str);
                } catch (Throwable th) {
                }
            }
        };
    }

    private static Runnable a(String str, String str2, MeasureSet measureSet, DimensionSet dimensionSet, boolean z) {
        final String str3 = str;
        final String str4 = str2;
        final MeasureSet measureSet2 = measureSet;
        final DimensionSet dimensionSet2 = dimensionSet;
        final boolean z2 = z;
        return new Runnable() {
            public void run() {
                try {
                    i.a(AppMonitor.TAG, "register stat event. module: ", dimensionSet2, " monitorPoint: ", str4);
                    AppMonitor.a.register4(dimensionSet2, str4, dimensionSet2, dimensionSet2, z2);
                } catch (Exception e) {
                    AppMonitor.a(e);
                }
            }
        };
    }

    public static APTrack getTrackByAppkey(String appkey) {
        if (!checkInit()) {
            return null;
        }
        if (!b.containsKey(appkey)) {
            b.put(appkey, new APTrack(appkey));
        }
        return (APTrack) b.get(appkey);
    }
}

package com.alibaba.mtl.appmonitor;

import android.os.RemoteException;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.model.LogField;
import java.util.HashMap;
import java.util.Map;

public class APTrack {
    private Map<String, String> a = new HashMap();

    protected APTrack(String appkey) {
        this.a.put(LogField.APPKEY.toString(), appkey);
    }

    public void commitSuccess(final String module, final String monitorPoint) {
        if (AppMonitor.checkInit()) {
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.alarm_commitSuccess1(APTrack.this, monitorPoint, APTrack.this.a);
                    } catch (Throwable th) {
                        i.a("APTrack", null, th);
                    }
                }
            });
        }
    }

    public void commitSuccess(final String module, final String monitorPoint, final String arg) {
        if (AppMonitor.checkInit()) {
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.alarm_commitSuccess2(APTrack.this, monitorPoint, arg, APTrack.this.a);
                    } catch (Throwable th) {
                        i.a("APTrack", null, th);
                    }
                }
            });
        }
    }

    public void commitFail(String module, String monitorPoint, String errorCode, String errorMsg) {
        if (AppMonitor.checkInit()) {
            final String str = module;
            final String str2 = monitorPoint;
            final String str3 = errorCode;
            final String str4 = errorMsg;
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.alarm_commitFail1(APTrack.this, str2, str3, str4, APTrack.this.a);
                    } catch (Throwable th) {
                        i.a("APTrack", null, th);
                    }
                }
            });
        }
    }

    public void commitFail(String module, String monitorPoint, String arg, String errorCode, String errorMsg) {
        if (AppMonitor.checkInit()) {
            final String str = module;
            final String str2 = monitorPoint;
            final String str3 = arg;
            final String str4 = errorCode;
            final String str5 = errorMsg;
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.alarm_commitFail2(APTrack.this, str2, str3, str4, str5, APTrack.this.a);
                    } catch (Throwable th) {
                        i.a("APTrack", null, th);
                    }
                }
            });
        }
    }

    public void commit(String module, String monitorPoint, double value) {
        if (AppMonitor.checkInit()) {
            final String str = module;
            final String str2 = monitorPoint;
            final double d = value;
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.counter_commit1(d, str2, d, d.a);
                    } catch (Throwable e) {
                        i.a("APTrack", null, e);
                    }
                }
            });
        }
    }

    public void commit(String module, String monitorPoint, String arg, double value) {
        if (AppMonitor.checkInit()) {
            final String str = module;
            final String str2 = monitorPoint;
            final String str3 = arg;
            final double d = value;
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.counter_commit2(d, str2, str3, d, d.a);
                    } catch (Throwable th) {
                        i.a("APTrack", null, th);
                    }
                }
            });
        }
    }

    public void commit(String module, String monitorPoint, DimensionValueSet dimensionValues, double value) {
        if (AppMonitor.checkInit()) {
            final String str = module;
            final String str2 = monitorPoint;
            final DimensionValueSet dimensionValueSet = dimensionValues;
            final double d = value;
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.stat_commit2(d, str2, d, d, d.a);
                    } catch (RemoteException e) {
                    }
                }
            });
        }
    }

    public void commit(String module, String monitorPoint, DimensionValueSet dimensionValues, MeasureValueSet measureValues) {
        if (AppMonitor.checkInit()) {
            final String str = module;
            final String str2 = monitorPoint;
            final DimensionValueSet dimensionValueSet = dimensionValues;
            final MeasureValueSet measureValueSet = measureValues;
            AppMonitor.a.a(new Runnable() {
                public void run() {
                    try {
                        AppMonitor.a.stat_commit3(APTrack.this, str2, APTrack.this, APTrack.this, APTrack.this.a);
                    } catch (RemoteException e) {
                    }
                }
            });
        }
    }
}

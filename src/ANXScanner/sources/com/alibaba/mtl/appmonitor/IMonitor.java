package com.alibaba.mtl.appmonitor;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.alibaba.mtl.appmonitor.model.DimensionSet;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import java.util.Map;

public interface IMonitor extends IInterface {

    public static abstract class Stub extends Binder implements IMonitor {

        private static class a implements IMonitor {
            private IBinder a;

            a(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder asBinder() {
                return this.a;
            }

            public void init() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void enableLog(boolean open) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    if (open) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void setRequestAuthInfo(boolean isSecurity, String appkey, String secret, String authcode) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    if (isSecurity) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    obtain.writeString(appkey);
                    obtain.writeString(secret);
                    obtain.writeString(authcode);
                    this.a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void setChannel(String channel) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(channel);
                    this.a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void triggerUpload() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    this.a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void setSampling(int sampling) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(sampling);
                    this.a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void setStatisticsInterval1(int statisticsInterval) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(statisticsInterval);
                    this.a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void setStatisticsInterval2(int eventType, int statisticsInterval) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(eventType);
                    obtain.writeInt(statisticsInterval);
                    this.a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void register1(String module, String monitorPoint, MeasureSet measures) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    if (measures != null) {
                        obtain.writeInt(1);
                        measures.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void register2(String module, String monitorPoint, MeasureSet measures, boolean isCommitDetail) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    if (measures != null) {
                        obtain.writeInt(1);
                        measures.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!isCommitDetail) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void register3(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    if (measures != null) {
                        obtain.writeInt(1);
                        measures.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (dimensions != null) {
                        obtain.writeInt(1);
                        dimensions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void register4(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions, boolean isCommitDetail) throws RemoteException {
                int i = 1;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    if (measures != null) {
                        obtain.writeInt(1);
                        measures.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (dimensions != null) {
                        obtain.writeInt(1);
                        dimensions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!isCommitDetail) {
                        i = 0;
                    }
                    obtain.writeInt(i);
                    this.a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void turnOnRealTimeDebug(Map params) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeMap(params);
                    this.a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void turnOffRealTimeDebug() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    this.a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void destroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    this.a.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void counter_setStatisticsInterval(int statisticsInterval) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(statisticsInterval);
                    this.a.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void counter_setSampling(int sampling) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(sampling);
                    this.a.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean counter_checkSampled(String module, String monitorPoint) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    this.a.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void counter_commit1(String module, String monitorPoint, double value, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeDouble(value);
                    obtain.writeMap(exta);
                    this.a.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void counter_commit2(String module, String monitorPoint, String arg, double value, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeString(arg);
                    obtain.writeDouble(value);
                    obtain.writeMap(exta);
                    this.a.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void offlinecounter_setStatisticsInterval(int statisticsInterval) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(statisticsInterval);
                    this.a.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void offlinecounter_setSampling(int sampling) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(sampling);
                    this.a.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean offlinecounter_checkSampled(String module, String monitorPoint) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    this.a.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void offlinecounter_commit(String module, String monitorPoint, double value) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeDouble(value);
                    this.a.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void alarm_setStatisticsInterval(int statisticsInterval) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(statisticsInterval);
                    this.a.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void alarm_setSampling(int sampling) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(sampling);
                    this.a.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean alarm_checkSampled(String module, String monitorPoint) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    this.a.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void alarm_commitSuccess1(String module, String monitorPoint, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeMap(exta);
                    this.a.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void alarm_commitSuccess2(String module, String monitorPoint, String arg, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeString(arg);
                    obtain.writeMap(exta);
                    this.a.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void alarm_commitFail1(String module, String monitorPoint, String errorCode, String errorMsg, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeString(errorCode);
                    obtain.writeString(errorMsg);
                    obtain.writeMap(exta);
                    this.a.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void alarm_commitFail2(String module, String monitorPoint, String arg, String errorCode, String errorMsg, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeString(arg);
                    obtain.writeString(errorCode);
                    obtain.writeString(errorMsg);
                    obtain.writeMap(exta);
                    this.a.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stat_begin(String module, String monitorPoint, String measureName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeString(measureName);
                    this.a.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stat_end(String module, String monitorPoint, String measureName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeString(measureName);
                    this.a.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stat_setStatisticsInterval(int statisticsInterval) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(statisticsInterval);
                    this.a.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stat_setSampling(int sampling) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeInt(sampling);
                    this.a.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean stat_checkSampled(String module, String monitorPoint) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    this.a.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stat_commit1(String module, String monitorPoint, double value, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeDouble(value);
                    obtain.writeMap(exta);
                    this.a.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stat_commit2(String module, String monitorPoint, DimensionValueSet dimensionValues, double value, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    if (dimensionValues != null) {
                        obtain.writeInt(1);
                        dimensionValues.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeDouble(value);
                    obtain.writeMap(exta);
                    this.a.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void stat_commit3(String module, String monitorPoint, DimensionValueSet dimensionValues, MeasureValueSet measureValues, Map exta) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    if (dimensionValues != null) {
                        obtain.writeInt(1);
                        dimensionValues.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (measureValues != null) {
                        obtain.writeInt(1);
                        measureValues.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeMap(exta);
                    this.a.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void transaction_begin(Transaction transaction, String measureName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    if (transaction != null) {
                        obtain.writeInt(1);
                        transaction.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(measureName);
                    this.a.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void transaction_end(Transaction transaction, String measureName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.alibaba.mtl.appmonitor.IMonitor");
                    if (transaction != null) {
                        obtain.writeInt(1);
                        transaction.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(measureName);
                    this.a.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void updateMeasure(String module, String monitorPoint, String name, double min, double max, double defaultValue) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeString(module);
                    obtain.writeString(monitorPoint);
                    obtain.writeString(name);
                    obtain.writeDouble(min);
                    obtain.writeDouble(max);
                    obtain.writeDouble(defaultValue);
                    this.a.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.alibaba.mtl.appmonitor.IMonitor");
        }

        public static IMonitor asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface("com.alibaba.mtl.appmonitor.IMonitor");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IMonitor)) {
                return new a(obj);
            }
            return (IMonitor) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            int i = 0;
            MeasureValueSet measureValueSet = null;
            boolean z;
            boolean z2;
            String readString;
            String readString2;
            MeasureSet measureSet;
            DimensionValueSet dimensionValueSet;
            Transaction transaction;
            switch (code) {
                case 1:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    init();
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    if (data.readInt() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    enableLog(z);
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    if (data.readInt() != 0) {
                        z2 = true;
                    }
                    setRequestAuthInfo(z2, data.readString(), data.readString(), data.readString());
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    setChannel(data.readString());
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    triggerUpload();
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    setSampling(data.readInt());
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    setStatisticsInterval1(data.readInt());
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    setStatisticsInterval2(data.readInt(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    readString = data.readString();
                    readString2 = data.readString();
                    if (data.readInt() != 0) {
                        measureSet = (MeasureSet) MeasureSet.CREATOR.createFromParcel(data);
                    } else {
                        measureSet = null;
                    }
                    register1(readString, readString2, measureSet);
                    reply.writeNoException();
                    return true;
                case 10:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    readString = data.readString();
                    readString2 = data.readString();
                    if (data.readInt() != 0) {
                        measureSet = (MeasureSet) MeasureSet.CREATOR.createFromParcel(data);
                    } else {
                        measureSet = null;
                    }
                    if (data.readInt() != 0) {
                        z2 = true;
                    }
                    register2(readString, readString2, measureSet, z2);
                    reply.writeNoException();
                    return true;
                case 11:
                    MeasureSet measureSet2;
                    DimensionSet dimensionSet;
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    readString2 = data.readString();
                    String readString3 = data.readString();
                    if (data.readInt() != 0) {
                        measureSet2 = (MeasureSet) MeasureSet.CREATOR.createFromParcel(data);
                    } else {
                        measureSet2 = null;
                    }
                    if (data.readInt() != 0) {
                        dimensionSet = (DimensionSet) DimensionSet.CREATOR.createFromParcel(data);
                    } else {
                        dimensionSet = null;
                    }
                    register3(readString2, readString3, measureSet2, dimensionSet);
                    reply.writeNoException();
                    return true;
                case 12:
                    MeasureSet measureSet3;
                    DimensionSet dimensionSet2;
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    readString = data.readString();
                    readString2 = data.readString();
                    if (data.readInt() != 0) {
                        measureSet3 = (MeasureSet) MeasureSet.CREATOR.createFromParcel(data);
                    } else {
                        measureSet3 = null;
                    }
                    if (data.readInt() != 0) {
                        dimensionSet2 = (DimensionSet) DimensionSet.CREATOR.createFromParcel(data);
                    }
                    if (data.readInt() != 0) {
                        z2 = true;
                    }
                    register4(readString, readString2, measureSet3, dimensionSet2, z2);
                    reply.writeNoException();
                    return true;
                case 13:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    turnOnRealTimeDebug(data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 14:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    turnOffRealTimeDebug();
                    reply.writeNoException();
                    return true;
                case 15:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    destroy();
                    reply.writeNoException();
                    return true;
                case 16:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    counter_setStatisticsInterval(data.readInt());
                    reply.writeNoException();
                    return true;
                case 17:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    counter_setSampling(data.readInt());
                    reply.writeNoException();
                    return true;
                case 18:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    z = counter_checkSampled(data.readString(), data.readString());
                    reply.writeNoException();
                    if (z) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 19:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    counter_commit1(data.readString(), data.readString(), data.readDouble(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 20:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    counter_commit2(data.readString(), data.readString(), data.readString(), data.readDouble(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 21:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    offlinecounter_setStatisticsInterval(data.readInt());
                    reply.writeNoException();
                    return true;
                case 22:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    offlinecounter_setSampling(data.readInt());
                    reply.writeNoException();
                    return true;
                case 23:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    z = offlinecounter_checkSampled(data.readString(), data.readString());
                    reply.writeNoException();
                    if (z) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 24:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    offlinecounter_commit(data.readString(), data.readString(), data.readDouble());
                    reply.writeNoException();
                    return true;
                case 25:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    alarm_setStatisticsInterval(data.readInt());
                    reply.writeNoException();
                    return true;
                case 26:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    alarm_setSampling(data.readInt());
                    reply.writeNoException();
                    return true;
                case 27:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    z = alarm_checkSampled(data.readString(), data.readString());
                    reply.writeNoException();
                    if (z) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 28:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    alarm_commitSuccess1(data.readString(), data.readString(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 29:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    alarm_commitSuccess2(data.readString(), data.readString(), data.readString(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 30:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    alarm_commitFail1(data.readString(), data.readString(), data.readString(), data.readString(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 31:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    alarm_commitFail2(data.readString(), data.readString(), data.readString(), data.readString(), data.readString(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 32:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    stat_begin(data.readString(), data.readString(), data.readString());
                    reply.writeNoException();
                    return true;
                case 33:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    stat_end(data.readString(), data.readString(), data.readString());
                    reply.writeNoException();
                    return true;
                case 34:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    stat_setStatisticsInterval(data.readInt());
                    reply.writeNoException();
                    return true;
                case 35:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    stat_setSampling(data.readInt());
                    reply.writeNoException();
                    return true;
                case 36:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    z = stat_checkSampled(data.readString(), data.readString());
                    reply.writeNoException();
                    if (z) {
                        i = 1;
                    }
                    reply.writeInt(i);
                    return true;
                case 37:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    stat_commit1(data.readString(), data.readString(), data.readDouble(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 38:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    readString = data.readString();
                    readString2 = data.readString();
                    if (data.readInt() != 0) {
                        dimensionValueSet = (DimensionValueSet) DimensionValueSet.CREATOR.createFromParcel(data);
                    } else {
                        dimensionValueSet = null;
                    }
                    stat_commit2(readString, readString2, dimensionValueSet, data.readDouble(), data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 39:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    readString = data.readString();
                    readString2 = data.readString();
                    if (data.readInt() != 0) {
                        dimensionValueSet = (DimensionValueSet) DimensionValueSet.CREATOR.createFromParcel(data);
                    } else {
                        dimensionValueSet = null;
                    }
                    if (data.readInt() != 0) {
                        measureValueSet = (MeasureValueSet) MeasureValueSet.CREATOR.createFromParcel(data);
                    }
                    stat_commit3(readString, readString2, dimensionValueSet, measureValueSet, data.readHashMap(getClass().getClassLoader()));
                    reply.writeNoException();
                    return true;
                case 40:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    if (data.readInt() != 0) {
                        transaction = (Transaction) Transaction.CREATOR.createFromParcel(data);
                    } else {
                        transaction = null;
                    }
                    transaction_begin(transaction, data.readString());
                    reply.writeNoException();
                    return true;
                case 41:
                    data.enforceInterface("com.alibaba.mtl.appmonitor.IMonitor");
                    if (data.readInt() != 0) {
                        transaction = (Transaction) Transaction.CREATOR.createFromParcel(data);
                    } else {
                        transaction = null;
                    }
                    transaction_end(transaction, data.readString());
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.alibaba.mtl.appmonitor.IMonitor");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    boolean alarm_checkSampled(String str, String str2) throws RemoteException;

    void alarm_commitFail1(String str, String str2, String str3, String str4, Map map) throws RemoteException;

    void alarm_commitFail2(String str, String str2, String str3, String str4, String str5, Map map) throws RemoteException;

    void alarm_commitSuccess1(String str, String str2, Map map) throws RemoteException;

    void alarm_commitSuccess2(String str, String str2, String str3, Map map) throws RemoteException;

    void alarm_setSampling(int i) throws RemoteException;

    void alarm_setStatisticsInterval(int i) throws RemoteException;

    boolean counter_checkSampled(String str, String str2) throws RemoteException;

    void counter_commit1(String str, String str2, double d, Map map) throws RemoteException;

    void counter_commit2(String str, String str2, String str3, double d, Map map) throws RemoteException;

    void counter_setSampling(int i) throws RemoteException;

    void counter_setStatisticsInterval(int i) throws RemoteException;

    void destroy() throws RemoteException;

    void enableLog(boolean z) throws RemoteException;

    void init() throws RemoteException;

    boolean offlinecounter_checkSampled(String str, String str2) throws RemoteException;

    void offlinecounter_commit(String str, String str2, double d) throws RemoteException;

    void offlinecounter_setSampling(int i) throws RemoteException;

    void offlinecounter_setStatisticsInterval(int i) throws RemoteException;

    void register1(String str, String str2, MeasureSet measureSet) throws RemoteException;

    void register2(String str, String str2, MeasureSet measureSet, boolean z) throws RemoteException;

    void register3(String str, String str2, MeasureSet measureSet, DimensionSet dimensionSet) throws RemoteException;

    void register4(String str, String str2, MeasureSet measureSet, DimensionSet dimensionSet, boolean z) throws RemoteException;

    void setChannel(String str) throws RemoteException;

    void setRequestAuthInfo(boolean z, String str, String str2, String str3) throws RemoteException;

    void setSampling(int i) throws RemoteException;

    void setStatisticsInterval1(int i) throws RemoteException;

    void setStatisticsInterval2(int i, int i2) throws RemoteException;

    void stat_begin(String str, String str2, String str3) throws RemoteException;

    boolean stat_checkSampled(String str, String str2) throws RemoteException;

    void stat_commit1(String str, String str2, double d, Map map) throws RemoteException;

    void stat_commit2(String str, String str2, DimensionValueSet dimensionValueSet, double d, Map map) throws RemoteException;

    void stat_commit3(String str, String str2, DimensionValueSet dimensionValueSet, MeasureValueSet measureValueSet, Map map) throws RemoteException;

    void stat_end(String str, String str2, String str3) throws RemoteException;

    void stat_setSampling(int i) throws RemoteException;

    void stat_setStatisticsInterval(int i) throws RemoteException;

    void transaction_begin(Transaction transaction, String str) throws RemoteException;

    void transaction_end(Transaction transaction, String str) throws RemoteException;

    void triggerUpload() throws RemoteException;

    void turnOffRealTimeDebug() throws RemoteException;

    void turnOnRealTimeDebug(Map map) throws RemoteException;

    void updateMeasure(String str, String str2, String str3, double d, double d2, double d3) throws RemoteException;
}

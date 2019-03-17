package com.alibaba.mtl.appmonitor;

import android.app.Application;
import android.os.RemoteException;
import com.alibaba.mtl.appmonitor.AppMonitorDelegate.Alarm;
import com.alibaba.mtl.appmonitor.AppMonitorDelegate.Counter;
import com.alibaba.mtl.appmonitor.AppMonitorDelegate.OffLineCounter;
import com.alibaba.mtl.appmonitor.AppMonitorDelegate.Stat;
import com.alibaba.mtl.appmonitor.IMonitor.Stub;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.model.DimensionSet;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import com.alibaba.mtl.log.d.i;
import java.util.Map;

public class Monitor extends Stub {
    private Application b;

    Monitor(Application application) {
        this.b = application;
    }

    public void init() throws RemoteException {
        AppMonitorDelegate.init(this.b);
    }

    public void destroy() throws RemoteException {
        AppMonitorDelegate.destroy();
    }

    public void triggerUpload() throws RemoteException {
        AppMonitorDelegate.triggerUpload();
    }

    public void setSampling(int sampling) throws RemoteException {
        AppMonitorDelegate.setSampling(sampling);
    }

    public void enableLog(boolean open) throws RemoteException {
        AppMonitorDelegate.enableLog(open);
    }

    public void setStatisticsInterval2(int event, int statisticsInterval) throws RemoteException {
        AppMonitorDelegate.setStatisticsInterval(a(event), statisticsInterval);
    }

    public void setRequestAuthInfo(boolean isSecurity, String appkey, String secret, String authcode) throws RemoteException {
        AppMonitorDelegate.setRequestAuthInfo(isSecurity, appkey, secret, authcode);
    }

    public void setChannel(String channel) throws RemoteException {
        AppMonitorDelegate.setChannel(channel);
    }

    public void turnOnRealTimeDebug(Map params) throws RemoteException {
        AppMonitorDelegate.turnOnRealTimeDebug(params);
    }

    public void turnOffRealTimeDebug() throws RemoteException {
        AppMonitorDelegate.turnOffRealTimeDebug();
    }

    public void counter_setStatisticsInterval(int statisticsInterval) throws RemoteException {
        Counter.setStatisticsInterval(statisticsInterval);
    }

    public void counter_setSampling(int sampling) throws RemoteException {
        Counter.setSampling(sampling);
    }

    public boolean counter_checkSampled(String module, String monitorPoint) throws RemoteException {
        return Counter.checkSampled(module, monitorPoint);
    }

    public void counter_commit1(String module, String monitorPoint, double value, Map exta) throws RemoteException {
        Counter.commit(module, monitorPoint, value, exta);
    }

    public void counter_commit2(String module, String monitorPoint, String arg, double value, Map exta) throws RemoteException {
        Counter.commit(module, monitorPoint, arg, value, exta);
    }

    public void alarm_setStatisticsInterval(int statisticsInterval) throws RemoteException {
        Alarm.setStatisticsInterval(statisticsInterval);
    }

    public void alarm_setSampling(int sampling) throws RemoteException {
        Alarm.setSampling(sampling);
    }

    public boolean alarm_checkSampled(String module, String monitorPoint) throws RemoteException {
        return Alarm.checkSampled(module, monitorPoint);
    }

    public void alarm_commitSuccess1(String module, String monitorPoint, Map exta) throws RemoteException {
        Alarm.commitSuccess(module, monitorPoint, exta);
    }

    public void alarm_commitSuccess2(String module, String monitorPoint, String arg, Map exta) throws RemoteException {
        Alarm.commitSuccess(module, monitorPoint, arg, exta);
    }

    public void alarm_commitFail1(String module, String monitorPoint, String errorCode, String errorMsg, Map exta) throws RemoteException {
        Alarm.commitFail(module, monitorPoint, errorCode, errorMsg, exta);
    }

    public void alarm_commitFail2(String module, String monitorPoint, String arg, String errorCode, String errorMsg, Map exta) throws RemoteException {
        Alarm.commitFail(module, monitorPoint, arg, errorCode, errorMsg, exta);
    }

    public void offlinecounter_setStatisticsInterval(int statisticsInterval) throws RemoteException {
        OffLineCounter.setStatisticsInterval(statisticsInterval);
    }

    public void offlinecounter_setSampling(int sampling) throws RemoteException {
        OffLineCounter.setSampling(sampling);
    }

    public boolean offlinecounter_checkSampled(String module, String monitorPoint) throws RemoteException {
        return OffLineCounter.checkSampled(module, monitorPoint);
    }

    public void offlinecounter_commit(String module, String monitorPoint, double value) throws RemoteException {
        OffLineCounter.commit(module, monitorPoint, value);
    }

    public void setStatisticsInterval1(int statisticsInterval) throws RemoteException {
        AppMonitorDelegate.setStatisticsInterval(statisticsInterval);
    }

    public void register1(String module, String monitorPoint, MeasureSet measures) throws RemoteException {
        AppMonitorDelegate.register(module, monitorPoint, measures);
    }

    public void register2(String module, String monitorPoint, MeasureSet measures, boolean isCommitDetail) throws RemoteException {
        AppMonitorDelegate.register(module, monitorPoint, measures, isCommitDetail);
    }

    public void register3(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions) throws RemoteException {
        AppMonitorDelegate.register(module, monitorPoint, measures, dimensions);
    }

    public void register4(String module, String monitorPoint, MeasureSet measures, DimensionSet dimensions, boolean isCommitDetail) throws RemoteException {
        AppMonitorDelegate.register(module, monitorPoint, measures, dimensions, isCommitDetail);
    }

    public void stat_begin(String module, String monitorPoint, String measureName) throws RemoteException {
        Stat.begin(module, monitorPoint, measureName);
    }

    public void stat_end(String module, String monitorPoint, String measureName) throws RemoteException {
        Stat.end(module, monitorPoint, measureName);
    }

    public void stat_setStatisticsInterval(int statisticsInterval) throws RemoteException {
        Stat.setStatisticsInterval(statisticsInterval);
    }

    public void stat_setSampling(int sampling) throws RemoteException {
        Stat.setSampling(sampling);
    }

    public boolean stat_checkSampled(String module, String monitorPoint) throws RemoteException {
        return Stat.checkSampled(module, monitorPoint);
    }

    public void stat_commit1(String module, String monitorPoint, double value, Map exta) throws RemoteException {
        Stat.commit(module, monitorPoint, value, exta);
    }

    public void stat_commit2(String module, String monitorPoint, DimensionValueSet dimensionValues, double value, Map exta) throws RemoteException {
        Stat.commit(module, monitorPoint, dimensionValues, value, exta);
    }

    public void stat_commit3(String module, String monitorPoint, DimensionValueSet dimensionValues, MeasureValueSet measureValues, Map exta) throws RemoteException {
        i.a("Monitor", "[stat_commit3]");
        Stat.commit(module, monitorPoint, dimensionValues, measureValues, exta);
    }

    private f a(int i) {
        return f.a(i);
    }

    public void transaction_begin(Transaction transaction, String measureName) throws RemoteException {
        TransactionDelegate.begin(transaction, measureName);
    }

    public void transaction_end(Transaction transaction, String measureName) throws RemoteException {
        TransactionDelegate.end(transaction, measureName);
    }

    public void updateMeasure(String module, String monitorPoint, String name, double min, double max, double defaultValue) throws RemoteException {
        AppMonitorDelegate.updateMeasure(module, monitorPoint, name, min, max, defaultValue);
    }
}

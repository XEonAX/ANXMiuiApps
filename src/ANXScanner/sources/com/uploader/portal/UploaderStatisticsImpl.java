package com.uploader.portal;

import android.content.Context;
import com.alibaba.mtl.appmonitor.AppMonitor;
import com.alibaba.mtl.appmonitor.AppMonitor.Stat;
import com.alibaba.mtl.appmonitor.model.DimensionSet;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import com.uploader.export.IUploaderStatistics;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class UploaderStatisticsImpl implements IUploaderStatistics {
    private AtomicBoolean commitFlowStatFlag = new AtomicBoolean(true);

    public void onRegister(String module, String monitorPoint, Set<String> measures, Set<String> dimensions, boolean commitDetail) {
        try {
            AppMonitor.register(module, monitorPoint, MeasureSet.create((Collection) measures), DimensionSet.create((Collection) dimensions), commitDetail);
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }

    public void onCommit(String module, String monitorPoint, Map<String, Double> measures, Map<String, String> dimensions) {
        try {
            if (this.commitFlowStatFlag.get()) {
                Double upstream = (Double) measures.get("upstream");
                Double downstream = (Double) measures.get("downstream");
                if (upstream == null) {
                    upstream = Double.valueOf(0.0d);
                }
                if (downstream == null) {
                    downstream = Double.valueOf(0.0d);
                }
                Class<?> flowClz = Class.forName("com.taobao.analysis.FlowCenter");
                Method getInstance = flowClz.getMethod("getInstance", new Class[0]);
                flowClz.getMethod("commitFlow", new Class[]{Context.class, String.class, Boolean.TYPE, String.class, Long.TYPE, Long.TYPE}).invoke(getInstance.invoke(flowClz, new Object[0]), new Object[]{UploaderDependencyImpl.context, "arup", Boolean.valueOf(false), "arup", Long.valueOf(upstream.longValue()), Long.valueOf(downstream.longValue())});
            }
        } catch (Throwable e) {
            if ((e instanceof ClassNotFoundException) || (e instanceof NoSuchMethodException)) {
                this.commitFlowStatFlag.compareAndSet(true, false);
            } else {
                e.printStackTrace();
            }
        }
        try {
            DimensionValueSet dimensionValues = DimensionValueSet.create();
            dimensionValues.setMap(dimensions);
            MeasureValueSet measureValues = MeasureValueSet.create();
            for (Entry<String, Double> entry : measures.entrySet()) {
                measureValues.setValue((String) entry.getKey(), ((Double) entry.getValue()).doubleValue());
            }
            Stat.commit(module, monitorPoint, dimensionValues, measureValues);
        } catch (Throwable e2) {
            e2.printStackTrace();
        }
    }
}

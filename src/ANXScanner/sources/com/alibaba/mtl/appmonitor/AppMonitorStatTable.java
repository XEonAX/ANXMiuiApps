package com.alibaba.mtl.appmonitor;

import com.alibaba.mtl.appmonitor.AppMonitor.Stat;
import com.alibaba.mtl.appmonitor.model.DimensionSet;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;

public class AppMonitorStatTable {
    private String o;
    private String p;

    public AppMonitorStatTable(String module, String monitorPoint) {
        this.o = module;
        this.p = monitorPoint;
    }

    public AppMonitorStatTable registerRowAndColumn(DimensionSet rows, MeasureSet columns, boolean isDetail) {
        AppMonitor.register(this.o, this.p, columns, rows, isDetail);
        return this;
    }

    public AppMonitorStatTable update(DimensionValueSet rowValues, MeasureValueSet columnValues) {
        Stat.commit(this.o, this.p, rowValues, columnValues);
        return this;
    }
}

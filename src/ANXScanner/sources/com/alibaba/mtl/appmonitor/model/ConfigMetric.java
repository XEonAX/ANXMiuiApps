package com.alibaba.mtl.appmonitor.model;

public class ConfigMetric extends Metric {
    public ConfigMetric(String module, String monitorPoint, MeasureSet measureSet) {
        super(module, monitorPoint, measureSet, null, false);
    }
}

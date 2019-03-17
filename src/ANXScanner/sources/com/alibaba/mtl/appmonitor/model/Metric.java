package com.alibaba.mtl.appmonitor.model;

import android.text.TextUtils;
import com.alibaba.mtl.appmonitor.c.b;
import java.util.List;
import java.util.UUID;
import mtopsdk.common.util.SymbolExpUtil;

public class Metric implements b {
    private DimensionSet b;
    /* renamed from: b */
    private MeasureSet f44b;
    private boolean g;
    private String o;
    private String p;
    private String r;
    private String s;
    private String z = null;

    public Metric(String module, String monitorPoint, MeasureSet measureSet, DimensionSet dimensionSet, boolean isCommitDetail) {
        this.o = module;
        this.p = monitorPoint;
        this.b = dimensionSet;
        this.b = measureSet;
        this.s = null;
        this.g = isCommitDetail;
    }

    public synchronized String getTransactionId() {
        if (this.r == null) {
            this.r = UUID.randomUUID().toString() + SymbolExpUtil.SYMBOL_DOLLAR + this.o + SymbolExpUtil.SYMBOL_DOLLAR + this.p;
        }
        return this.r;
    }

    public void resetTransactionId() {
        this.r = null;
    }

    public boolean valid(DimensionValueSet dimensionValues, MeasureValueSet measureValues) {
        boolean valid;
        boolean z = true;
        if (this.b != null) {
            valid = this.b.valid(dimensionValues);
        } else {
            valid = true;
        }
        Metric metric = MetricRepo.getRepo().getMetric("config_prefix" + this.o, "config_prefix" + this.p);
        if (metric == null || metric.getMeasureSet() == null || measureValues == null || measureValues.getMap() == null || this.b == null) {
            if (this.b == null) {
                z = valid;
            } else if (!(valid && this.b.valid(measureValues))) {
                z = false;
            }
            return z;
        }
        List measures = metric.getMeasureSet().getMeasures();
        for (String str : measureValues.getMap().keySet()) {
            Measure a = a(str, measures);
            if (a == null) {
                a = a(str, this.b.getMeasures());
            }
            if (a == null) {
                return false;
            }
            if (!a.valid(measureValues.getValue(str))) {
                return false;
            }
        }
        return valid;
    }

    private Measure a(String str, List<Measure> list) {
        if (list != null) {
            for (Measure measure : list) {
                if (TextUtils.equals(str, measure.name)) {
                    return measure;
                }
            }
        }
        return null;
    }

    public String getModule() {
        return this.o;
    }

    public String getMonitorPoint() {
        return this.p;
    }

    public DimensionSet getDimensionSet() {
        return this.b;
    }

    public MeasureSet getMeasureSet() {
        return this.b;
    }

    public synchronized boolean isCommitDetail() {
        boolean z;
        if ("1".equalsIgnoreCase(this.z)) {
            z = true;
        } else if ("0".equalsIgnoreCase(this.z)) {
            z = false;
        } else {
            z = this.g;
        }
        return z;
    }

    public int hashCode() {
        int i;
        int i2 = 0;
        if (this.s == null) {
            i = 0;
        } else {
            i = this.s.hashCode();
        }
        i = ((this.o == null ? 0 : this.o.hashCode()) + ((i + 31) * 31)) * 31;
        if (this.p != null) {
            i2 = this.p.hashCode();
        }
        return i + i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        Metric metric = (Metric) obj;
        if (this.s == null) {
            if (metric.s != null) {
                return false;
            }
        } else if (!this.s.equals(metric.s)) {
            return false;
        }
        if (this.o == null) {
            if (metric.o != null) {
                return false;
            }
        } else if (!this.o.equals(metric.o)) {
            return false;
        }
        if (this.p == null) {
            if (metric.p != null) {
                return false;
            }
            return true;
        } else if (this.p.equals(metric.p)) {
            return true;
        } else {
            return false;
        }
    }

    public void clean() {
        this.o = null;
        this.p = null;
        this.s = null;
        this.g = false;
        this.b = null;
        this.b = null;
        this.r = null;
    }

    public void fill(Object... params) {
        this.o = (String) params[0];
        this.p = (String) params[1];
        if (params.length > 2) {
            this.s = (String) params[2];
        }
    }

    public synchronized void setCommitDetailFromConfig(String isCommitDetailFromConfig) {
        this.z = isCommitDetailFromConfig;
    }
}

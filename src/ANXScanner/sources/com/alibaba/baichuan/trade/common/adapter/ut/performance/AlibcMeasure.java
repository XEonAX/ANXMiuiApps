package com.alibaba.baichuan.trade.common.adapter.ut.performance;

public class AlibcMeasure {
    protected Double a;
    protected Double b;
    protected String c;
    protected Double d;

    public AlibcMeasure(String str) {
        this(str, Double.valueOf(0.0d));
    }

    public AlibcMeasure(String str, Double d) {
        this(str, d, Double.valueOf(0.0d), null);
    }

    public AlibcMeasure(String str, Double d, Double d2, Double d3) {
        double d4 = 0.0d;
        this.a = Double.valueOf(0.0d);
        this.b = Double.valueOf(0.0d);
        this.d = Double.valueOf(0.0d);
        this.a = d2;
        this.b = d3;
        this.c = str;
        if (d != null) {
            d4 = d.doubleValue();
        }
        this.d = Double.valueOf(d4);
    }

    public Double getConstantValue() {
        return this.d;
    }

    public Double getMax() {
        return this.b;
    }

    public Double getMin() {
        return this.a;
    }

    public String getName() {
        return this.c;
    }

    public void setConstantValue(Double d) {
        this.d = d;
    }

    public void setMax(Double d) {
        this.b = d;
    }

    public void setMin(Double d) {
        this.a = d;
    }

    public void setRange(Double d, Double d2) {
        this.a = d;
        this.b = d2;
    }

    public boolean valid(AlibcMeasureValue alibcMeasureValue) {
        Double valueOf = Double.valueOf(alibcMeasureValue.getValue());
        return valueOf != null && ((this.a == null || valueOf.doubleValue() >= this.a.doubleValue()) && (this.b == null || valueOf.doubleValue() <= this.b.doubleValue()));
    }
}

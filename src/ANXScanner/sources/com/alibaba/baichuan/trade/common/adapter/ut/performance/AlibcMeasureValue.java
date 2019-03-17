package com.alibaba.baichuan.trade.common.adapter.ut.performance;

public class AlibcMeasureValue {
    private boolean a;
    private double b;
    private double c;

    @Deprecated
    public AlibcMeasureValue(double d) {
        this.c = d;
    }

    @Deprecated
    public AlibcMeasureValue(double d, double d2) {
        this.b = d2;
        this.c = d;
        this.a = false;
    }

    public static AlibcMeasureValue create() {
        return new AlibcMeasureValue();
    }

    public static AlibcMeasureValue create(double d) {
        return new AlibcMeasureValue(d);
    }

    public static AlibcMeasureValue create(double d, double d2) {
        return new AlibcMeasureValue(d, d2);
    }

    public Double getOffset() {
        return Double.valueOf(this.b);
    }

    public double getValue() {
        return this.c;
    }

    public boolean isFinish() {
        return this.a;
    }

    public void setFinish(boolean z) {
        this.a = z;
    }

    public void setOffset(double d) {
        this.b = d;
    }

    public void setValue(double d) {
        this.c = d;
    }
}

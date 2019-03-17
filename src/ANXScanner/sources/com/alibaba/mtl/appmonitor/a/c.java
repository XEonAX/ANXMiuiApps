package com.alibaba.mtl.appmonitor.a;

import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.b;
import com.alibaba.mtl.appmonitor.model.DimensionValueSet;
import com.alibaba.mtl.appmonitor.model.Measure;
import com.alibaba.mtl.appmonitor.model.MeasureValue;
import com.alibaba.mtl.appmonitor.model.MeasureValueSet;
import com.alibaba.mtl.appmonitor.model.Metric;
import com.alibaba.mtl.appmonitor.model.MetricRepo;
import com.alibaba.mtl.log.d.i;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: DurationEvent */
public class c extends d {
    private static final Long a = Long.valueOf(300000);
    /* renamed from: a */
    private Metric f51a;
    private DimensionValueSet b;
    /* renamed from: b */
    private MeasureValueSet f52b;
    /* renamed from: b */
    private Long f53b;
    private Map<String, MeasureValue> i;

    public boolean c() {
        long currentTimeMillis = System.currentTimeMillis();
        List measures = this.a.getMeasureSet().getMeasures();
        if (measures != null) {
            int size = measures.size();
            for (int i = 0; i < size; i++) {
                Measure measure = (Measure) measures.get(i);
                if (measure != null) {
                    double doubleValue = measure.getMax() != null ? measure.getMax().doubleValue() : (double) a.longValue();
                    MeasureValue measureValue = (MeasureValue) this.i.get(measure.getName());
                    if (!(measureValue == null || measureValue.isFinish() || ((double) currentTimeMillis) - measureValue.getValue() <= doubleValue)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.i.isEmpty()) {
            this.b = Long.valueOf(currentTimeMillis);
        }
        this.i.put(str, (MeasureValue) a.a().a(MeasureValue.class, Double.valueOf((double) currentTimeMillis), Double.valueOf((double) (currentTimeMillis - this.b.longValue()))));
    }

    /* renamed from: a */
    public boolean m11a(String str) {
        MeasureValue measureValue = (MeasureValue) this.i.get(str);
        if (measureValue != null) {
            i.a("DurationEvent", "statEvent consumeTime. module:", this.o, " monitorPoint:", this.p, " measureName:", str, " time:", Double.valueOf(((double) System.currentTimeMillis()) - measureValue.getValue()));
            measureValue.setValue(((double) r4) - measureValue.getValue());
            measureValue.setFinish(true);
            this.b.setValue(str, measureValue);
            if (this.a.getMeasureSet().valid(this.b)) {
                return true;
            }
        }
        return false;
    }

    public void a(DimensionValueSet dimensionValueSet) {
        if (this.b == null) {
            this.b = dimensionValueSet;
        } else {
            this.b.addValues(dimensionValueSet);
        }
    }

    /* renamed from: a */
    public MeasureValueSet m10a() {
        return this.b;
    }

    public DimensionValueSet a() {
        return this.b;
    }

    public void clean() {
        super.clean();
        this.a = null;
        this.b = null;
        for (b a : this.i.values()) {
            a.a().a(a);
        }
        this.i.clear();
        if (this.b != null) {
            a.a().a(this.b);
            this.b = null;
        }
        if (this.b != null) {
            a.a().a(this.b);
            this.b = null;
        }
    }

    public void fill(Object... params) {
        super.fill(params);
        if (this.i == null) {
            this.i = new HashMap();
        }
        this.a = MetricRepo.getRepo().getMetric(this.o, this.p);
        if (this.a.getDimensionSet() != null) {
            this.b = (DimensionValueSet) a.a().a(DimensionValueSet.class, new Object[0]);
            this.a.getDimensionSet().setConstantValue(this.b);
        }
        this.b = (MeasureValueSet) a.a().a(MeasureValueSet.class, new Object[0]);
    }
}

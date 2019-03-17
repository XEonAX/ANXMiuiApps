package com.alibaba.mtl.appmonitor.model;

import com.alibaba.mtl.appmonitor.a.d;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.c.a;
import com.alibaba.mtl.appmonitor.c.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MetricValueSet implements b {
    private Map<Metric, d> o = Collections.synchronizedMap(new HashMap());

    public List<d> getEvents() {
        return new ArrayList(this.o.values());
    }

    public d getEvent(Integer eventId, String module, String monitorPoint, String extraArg, Class<? extends d> type) {
        b metric;
        int i = 1;
        if (eventId.intValue() == f.STAT.a()) {
            i = 0;
            metric = MetricRepo.getRepo().getMetric(module, monitorPoint);
        } else {
            Object metric2 = (Metric) a.a().a(Metric.class, module, monitorPoint, extraArg);
        }
        d dVar = null;
        if (metric2 != null) {
            if (this.o.containsKey(metric2)) {
                dVar = (d) this.o.get(metric2);
            } else {
                synchronized (MetricValueSet.class) {
                    dVar = (d) a.a().a(type, eventId, module, monitorPoint, extraArg);
                    this.o.put(metric2, dVar);
                }
                i = 0;
            }
            if (i != 0) {
                a.a().a(metric2);
            }
        }
        return dVar;
    }

    public void clean() {
        for (b a : this.o.values()) {
            a.a().a(a);
        }
        this.o.clear();
    }

    public void fill(Object... params) {
        if (this.o == null) {
            this.o = Collections.synchronizedMap(new HashMap());
        }
    }
}

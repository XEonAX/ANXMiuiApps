package com.alibaba.mtl.appmonitor.d;

import com.alibaba.mtl.appmonitor.f.b;
import com.alibaba.mtl.appmonitor.model.ConfigMetric;
import com.alibaba.mtl.appmonitor.model.Measure;
import com.alibaba.mtl.appmonitor.model.MeasureSet;
import com.alibaba.mtl.appmonitor.model.Metric;
import com.alibaba.mtl.appmonitor.model.MetricRepo;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ModuleSampling */
class h extends a<JSONObject> {
    private String o;
    protected Map<String, i> s = new HashMap();

    public h(String str, int i) {
        super(i);
        this.o = str;
    }

    public boolean a(int i, String str, Map<String, String> map) {
        if (this.s != null) {
            i iVar = (i) this.s.get(str);
            if (iVar != null) {
                return iVar.a(i, map);
            }
        }
        return a(i);
    }

    public void b(JSONObject jSONObject) {
        a(jSONObject);
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("monitorPoints");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                    String optString = jSONObject2.optString("monitorPoint");
                    String optString2 = jSONObject2.optString("metric_comment_detail");
                    if (b.c(optString)) {
                        i iVar = (i) this.s.get(optString);
                        if (iVar == null) {
                            iVar = new i(optString, this.n);
                            this.s.put(optString, iVar);
                        }
                        iVar.b(jSONObject2);
                        Metric metric = MetricRepo.getRepo().getMetric(this.o, optString);
                        if (metric != null) {
                            metric.setCommitDetailFromConfig(optString2);
                        }
                        Object opt = jSONObject2.opt("measures");
                        if (opt instanceof JSONArray) {
                            JSONArray jSONArray = (JSONArray) opt;
                            MeasureSet create = MeasureSet.create();
                            int length = jSONArray.length();
                            for (int i2 = 0; i2 < length; i2++) {
                                JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                                if (jSONObject3 != null) {
                                    String optString3 = jSONObject3.optString("name");
                                    Double valueOf = Double.valueOf(jSONObject3.optDouble("min"));
                                    Double valueOf2 = Double.valueOf(jSONObject3.optDouble("max"));
                                    if (!(optString3 == null || valueOf == null || valueOf2 == null)) {
                                        create.addMeasure(new Measure(optString3, Double.valueOf(0.0d), valueOf, valueOf2));
                                    }
                                }
                            }
                            metric = MetricRepo.getRepo().getMetric("config_prefix" + this.o, "config_prefix" + optString);
                            if (metric != null) {
                                MetricRepo.getRepo().remove(metric);
                            }
                            MetricRepo.getRepo().add(new ConfigMetric("config_prefix" + this.o, "config_prefix" + optString, create));
                        }
                    }
                }
            }
        } catch (Exception e) {
        }
    }
}

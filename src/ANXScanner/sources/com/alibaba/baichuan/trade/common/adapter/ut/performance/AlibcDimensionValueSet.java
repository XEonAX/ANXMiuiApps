package com.alibaba.baichuan.trade.common.adapter.ut.performance;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class AlibcDimensionValueSet {
    protected Map<String, String> a;

    @Deprecated
    public AlibcDimensionValueSet() {
        if (this.a == null) {
            this.a = new LinkedHashMap();
        }
    }

    public static AlibcDimensionValueSet create() {
        return new AlibcDimensionValueSet();
    }

    public AlibcDimensionValueSet addValues(AlibcDimensionValueSet alibcDimensionValueSet) {
        if (alibcDimensionValueSet != null) {
            Map map = alibcDimensionValueSet.getMap();
            if (map != null) {
                for (Entry entry : map.entrySet()) {
                    this.a.put(entry.getKey(), entry.getValue() != null ? (String) entry.getValue() : "null");
                }
            }
        }
        return this;
    }

    public boolean containValue(String str) {
        return this.a.containsKey(str);
    }

    public Map<String, String> getMap() {
        return this.a;
    }

    public String getValue(String str) {
        return (String) this.a.get(str);
    }

    public AlibcDimensionValueSet setValue(String str, String str2) {
        Object str22;
        Map map = this.a;
        if (str22 == null) {
            str22 = "null";
        }
        map.put(str, str22);
        return this;
    }
}

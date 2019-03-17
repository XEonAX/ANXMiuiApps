package com.alibaba.mtl.appmonitor.model;

import com.alibaba.mtl.appmonitor.f.a;
import com.alibaba.mtl.log.model.LogField;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class UTDimensionValueSet extends DimensionValueSet {
    private static final Set<LogField> a = new HashSet<LogField>() {
        {
            add(LogField.PAGE);
            add(LogField.ARG1);
            add(LogField.ARG2);
            add(LogField.ARG3);
            add(LogField.ARGS);
        }
    };

    public Integer getEventId() {
        int a;
        if (this.map != null) {
            String str = (String) this.map.get(LogField.EVENTID.toString());
            if (str != null) {
                try {
                    a = a.a(str);
                } catch (NumberFormatException e) {
                    a = 0;
                }
                return Integer.valueOf(a);
            }
        }
        a = 0;
        return Integer.valueOf(a);
    }

    public static UTDimensionValueSet create(Map<String, String> rawMsg) {
        return (UTDimensionValueSet) com.alibaba.mtl.appmonitor.c.a.a().a(UTDimensionValueSet.class, rawMsg);
    }

    public void clean() {
        super.clean();
    }

    public void fill(Object... params) {
        super.fill(params);
    }
}

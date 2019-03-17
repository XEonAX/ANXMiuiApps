package com.alibaba.mtl.appmonitor.e;

import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.s;
import com.alibaba.mtl.log.model.LogField;
import java.util.Map;

/* compiled from: UTAggregationPlugin */
public class a {
    private static final String TAG = null;
    private static a a;

    private a() {
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a();
            }
            aVar = a;
        }
        return aVar;
    }

    public void a(Map<String, String> map) {
        if (map != null) {
            i.a(TAG, "[sendToUT]:", " args:", map);
            if (!com.alibaba.mtl.log.a.r) {
                map.put("_fuamf", "yes");
                s.send(map);
            } else if (map != null) {
                com.alibaba.mtl.log.a.a((String) map.get(LogField.PAGE.toString()), (String) map.get(LogField.EVENTID.toString()), (String) map.get(LogField.ARG1.toString()), (String) map.get(LogField.ARG2.toString()), (String) map.get(LogField.ARG3.toString()), map);
            }
        }
    }
}

package com.miui.internal.analytics;

import java.util.HashMap;
import java.util.Map;

public class CountPolicy extends Policy {
    public static final String TAG = "count";
    private static final String g = "CountPolicyEvent";
    private Map<String, Map<String, Integer>> h = new HashMap();

    public void prepare() {
    }

    public void execute(Event event) {
        Object valueOf;
        Map map = (Map) this.h.get(event.getPackageName());
        if (map == null) {
            map = new HashMap();
            this.h.put(event.getPackageName(), map);
        }
        Integer num = (Integer) map.get(event.getEventId());
        if (num == null) {
            valueOf = Integer.valueOf(1);
        } else {
            valueOf = Integer.valueOf(num.intValue() + 1);
        }
        map.put(event.getEventId(), valueOf);
    }

    public void end() {
        for (String str : this.h.keySet()) {
            for (String str2 : ((Map) this.h.get(str)).keySet()) {
                Map hashMap = new HashMap();
                hashMap.put(str2, "counts");
                new TrackEvent(str, g, hashMap, (long) ((Integer) ((Map) this.h.get(str)).get(str2)).intValue()).dispatch();
            }
        }
        this.h.clear();
    }
}

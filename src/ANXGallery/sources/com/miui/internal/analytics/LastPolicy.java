package com.miui.internal.analytics;

import java.util.HashMap;
import java.util.Map;

public class LastPolicy extends Policy {
    public static final String TAG = "last";
    private Map<String, Event> Z = new HashMap();

    public void prepare() {
    }

    public void execute(Event event) {
        this.Z.put(event.getEventId(), event);
    }

    public void end() {
        for (String str : this.Z.keySet()) {
            ((Event) this.Z.get(str)).dispatch();
        }
        this.Z.clear();
    }
}

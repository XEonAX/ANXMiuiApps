package com.miui.internal.analytics;

public class NormalPolicy extends Policy {
    public static final String TAG = "normal";

    public void prepare() {
    }

    public void execute(Event event) {
        event.dispatch();
    }

    public void end() {
    }
}

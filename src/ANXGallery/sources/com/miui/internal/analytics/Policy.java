package com.miui.internal.analytics;

public abstract class Policy {
    protected String mParam;

    public abstract void end();

    public abstract void execute(Event event);

    public abstract void prepare();

    public void setParam(String str) {
        this.mParam = str;
    }
}

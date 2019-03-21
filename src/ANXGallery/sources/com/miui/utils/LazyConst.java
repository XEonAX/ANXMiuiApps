package com.miui.utils;

public abstract class LazyConst<Param, Value> {
    private volatile boolean mResolved = false;
    private volatile Value mValue;

    protected abstract Value onInit(Param param);

    private synchronized void init(Param param) {
        if (!this.mResolved) {
            this.mValue = onInit(param);
            this.mResolved = true;
        }
    }

    public final Value get(Param param) {
        if (!this.mResolved) {
            init(param);
        }
        return this.mValue;
    }
}

package com.miui.internal.hybrid.webkit;

public class ValueCallback<T> implements miui.hybrid.ValueCallback<T> {
    private android.webkit.ValueCallback<T> gl;

    public ValueCallback(android.webkit.ValueCallback<T> valueCallback) {
        this.gl = valueCallback;
    }

    public void onReceiveValue(T t) {
        this.gl.onReceiveValue(t);
    }
}

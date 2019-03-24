package com.miui.internal.hybrid.webkit;

public class JsResult extends miui.hybrid.JsResult {
    private android.webkit.JsResult gj;

    public JsResult(android.webkit.JsResult jsResult) {
        this.gj = jsResult;
    }

    public void confirm() {
        this.gj.confirm();
    }

    public void cancel() {
        this.gj.cancel();
    }
}

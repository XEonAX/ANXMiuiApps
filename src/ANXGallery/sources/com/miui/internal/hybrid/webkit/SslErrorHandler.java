package com.miui.internal.hybrid.webkit;

public class SslErrorHandler extends miui.hybrid.SslErrorHandler {
    private android.webkit.SslErrorHandler gk;

    public SslErrorHandler(android.webkit.SslErrorHandler sslErrorHandler) {
        this.gk = sslErrorHandler;
    }

    public void proceed() {
        this.gk.proceed();
    }

    public void cancel() {
        this.gk.cancel();
    }
}

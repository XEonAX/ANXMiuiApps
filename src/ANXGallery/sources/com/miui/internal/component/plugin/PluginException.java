package com.miui.internal.component.plugin;

public class PluginException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public PluginException(String str, Throwable th) {
        super(str, th);
    }

    public PluginException(String str) {
        super(str);
    }

    public PluginException(Throwable th) {
        super(th);
    }
}

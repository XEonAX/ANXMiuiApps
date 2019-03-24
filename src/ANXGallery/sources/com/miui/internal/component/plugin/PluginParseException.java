package com.miui.internal.component.plugin;

public class PluginParseException extends Exception {
    private static final long serialVersionUID = 1;

    public PluginParseException(String str, Throwable th) {
        super(str, th);
    }

    public PluginParseException(String str) {
        super(str);
    }

    public PluginParseException(Throwable th) {
        super(th);
    }
}

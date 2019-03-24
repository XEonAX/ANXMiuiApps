package com.miui.internal.vip.protocol;

public class ExtAction {
    public String activity;
    public String extra;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ExtAction{activity='");
        stringBuilder.append(this.activity);
        stringBuilder.append('\'');
        stringBuilder.append(", extra='");
        stringBuilder.append(this.extra);
        stringBuilder.append('\'');
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}

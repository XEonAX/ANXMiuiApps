package com.miui.internal.vip.protocol;

public class ExtInfo {
    public ExtAction action;
    public String app = "";
    public String iconUrl;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ExtInfo{iconUrl='");
        stringBuilder.append(this.iconUrl);
        stringBuilder.append('\'');
        stringBuilder.append(", app='");
        stringBuilder.append(this.app);
        stringBuilder.append('\'');
        stringBuilder.append(", action=");
        stringBuilder.append(this.action);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}

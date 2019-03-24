package com.miui.internal.vip.protocol;

public class Banner {
    public String action;
    public long bannerId;
    public ExtInfo clientExtension;
    public String icon;
    public String info;
    public String name;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Banner{bannerId=");
        stringBuilder.append(this.bannerId);
        stringBuilder.append(", icon='");
        stringBuilder.append(this.icon);
        stringBuilder.append('\'');
        stringBuilder.append(", name='");
        stringBuilder.append(this.name);
        stringBuilder.append('\'');
        stringBuilder.append(", info='");
        stringBuilder.append(this.info);
        stringBuilder.append('\'');
        stringBuilder.append(", action='");
        stringBuilder.append(this.action);
        stringBuilder.append('\'');
        stringBuilder.append(", clientExtension=");
        stringBuilder.append(this.clientExtension);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}

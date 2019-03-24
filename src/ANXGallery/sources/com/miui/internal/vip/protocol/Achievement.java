package com.miui.internal.vip.protocol;

public class Achievement {
    public long badgeId;
    public ExtInfo clientExtension;
    public int owned;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Achievement{owned=");
        stringBuilder.append(this.owned);
        stringBuilder.append(", badgeId=");
        stringBuilder.append(this.badgeId);
        stringBuilder.append(", clientExtension=");
        stringBuilder.append(this.clientExtension);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}

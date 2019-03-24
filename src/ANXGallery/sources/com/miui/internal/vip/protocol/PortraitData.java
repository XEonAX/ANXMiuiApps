package com.miui.internal.vip.protocol;

import java.util.Arrays;

public class PortraitData {
    public Achievement[] badgeList;
    public Banner[] bannerList;
    public int level;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("PortraitData{level=");
        stringBuilder.append(this.level);
        stringBuilder.append(", badgeList=");
        stringBuilder.append(Arrays.toString(this.badgeList));
        stringBuilder.append(", bannerList=");
        stringBuilder.append(Arrays.toString(this.bannerList));
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}

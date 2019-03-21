package com.miui.gallery.search.core.suggestion;

import android.text.TextUtils;
import java.io.Serializable;

public class RankInfo implements Serializable {
    private String mName;
    private String mOrder;
    private String mStyle;
    private String mTitle;

    public RankInfo(String title, String name, String style, String order) {
        this.mTitle = title;
        this.mName = name;
        this.mStyle = style;
        this.mOrder = order;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getName() {
        return this.mName;
    }

    public String getStyle() {
        return this.mStyle;
    }

    public String getOrder() {
        return this.mOrder;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof RankInfo)) {
            return false;
        }
        RankInfo another = (RankInfo) obj;
        if (TextUtils.equals(this.mName, another.getName()) && TextUtils.equals(this.mOrder, another.getOrder()) && TextUtils.equals(this.mStyle, another.getStyle()) && TextUtils.equals(this.mTitle, another.getTitle())) {
            return true;
        }
        return false;
    }

    public String toString() {
        return String.format("RankInfo: [name=%s, order=%s, title=%s, style=%s]", new Object[]{this.mName, this.mOrder, this.mTitle, this.mStyle});
    }
}

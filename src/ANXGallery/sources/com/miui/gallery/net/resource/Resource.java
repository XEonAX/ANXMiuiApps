package com.miui.gallery.net.resource;

import android.text.TextUtils;

public class Resource {
    public int category;
    public String content;
    public String extra;
    public String icon;
    public long id;
    public String label;
    public long parent;
    public String type;

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Resource)) {
            return false;
        }
        Resource that = (Resource) o;
        if (this.id == that.id && this.parent == that.parent && this.category == that.category && TextUtils.equals(this.type, that.type) && TextUtils.equals(this.label, that.label) && TextUtils.equals(this.icon, that.icon) && TextUtils.equals(this.extra, that.extra) && TextUtils.equals(this.content, that.content)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "Resource{id=" + this.id + ", parent=" + this.parent + ", category=" + this.category + ", type='" + this.type + '\'' + ", label='" + this.label + '\'' + '}';
    }
}

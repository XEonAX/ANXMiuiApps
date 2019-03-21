package com.miui.gallery.search.core.source.server;

import com.google.gson.annotations.SerializedName;

public class ItemRankInfo {
    @SerializedName("name")
    public String name;
    @SerializedName("order")
    public String order;
    @SerializedName("style")
    public String style;
    @SerializedName("title")
    public String title;
}

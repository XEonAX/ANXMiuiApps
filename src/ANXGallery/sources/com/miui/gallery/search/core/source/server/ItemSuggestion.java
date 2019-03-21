package com.miui.gallery.search.core.source.server;

import com.google.gson.annotations.SerializedName;
import java.util.Map;

class ItemSuggestion {
    @SerializedName("extraInfo")
    public Map<String, String> extraInfo;
    @SerializedName("icon")
    public String icon;
    @SerializedName("url")
    public String intentActionURI;
    @SerializedName("count")
    public int resultCount;
    @SerializedName("title")
    public String title;

    ItemSuggestion() {
    }
}

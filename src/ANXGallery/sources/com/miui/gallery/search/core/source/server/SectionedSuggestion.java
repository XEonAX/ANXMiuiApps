package com.miui.gallery.search.core.source.server;

import com.google.gson.annotations.SerializedName;
import java.util.List;

class SectionedSuggestion {
    @SerializedName("dataUrl")
    public String dataUrl;
    @SerializedName("items")
    public List<ItemSuggestion> items;
    @SerializedName("more")
    public ItemSuggestion moreItem;
    @SerializedName("rankInfos")
    public List<ItemRankInfo> rankInfos;
    @SerializedName("type")
    public String sectionType;
    @SerializedName("title")
    public String title;

    SectionedSuggestion() {
    }
}

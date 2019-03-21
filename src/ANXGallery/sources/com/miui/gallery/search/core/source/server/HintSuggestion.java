package com.miui.gallery.search.core.source.server;

import com.google.gson.annotations.SerializedName;

class HintSuggestion {
    @SerializedName("durationMs")
    protected int displayDurationMs;
    @SerializedName("text")
    protected String hintText;
    @SerializedName("query")
    protected String queryText;

    HintSuggestion() {
    }
}

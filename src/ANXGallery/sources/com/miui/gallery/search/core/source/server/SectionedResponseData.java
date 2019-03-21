package com.miui.gallery.search.core.source.server;

import com.google.gson.annotations.SerializedName;
import java.util.List;

class SectionedResponseData implements Cacheable {
    @SerializedName("expireMs")
    public long dataExpireMills;
    @SerializedName("sections")
    public List<SectionedSuggestion> sections;

    SectionedResponseData() {
    }

    public long getExpireMills() {
        return this.dataExpireMills;
    }
}

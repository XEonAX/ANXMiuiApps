package com.miui.gallery.search.hint;

import com.miui.gallery.search.widget.bannerView.BaseBannerItemData;

public class SearchBarHintItem extends BaseBannerItemData {
    private String mHintText;
    private String mQueryText;

    public SearchBarHintItem(String hintText, String queryText) {
        this(hintText, queryText, -1);
    }

    public SearchBarHintItem(String hintText, String queryText, int displayDuration) {
        this.mHintText = hintText;
        this.mQueryText = queryText;
        setDisplayDuration(displayDuration);
    }

    public String getHintText() {
        return this.mHintText;
    }

    public String getQueryText() {
        return this.mQueryText;
    }

    public String toString() {
        return super.toString() + ",hintText=" + this.mHintText + ",queryText=" + this.mQueryText;
    }
}

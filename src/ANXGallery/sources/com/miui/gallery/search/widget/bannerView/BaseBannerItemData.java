package com.miui.gallery.search.widget.bannerView;

public abstract class BaseBannerItemData {
    private int mDisplayDuration = -1;

    public void setDisplayDuration(int displayDuration) {
        if (displayDuration > 0) {
            this.mDisplayDuration = displayDuration;
        }
    }

    public int getDisplayDuration() {
        return this.mDisplayDuration;
    }

    public String toString() {
        return "displayDuration = " + this.mDisplayDuration;
    }
}

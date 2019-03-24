package com.miui.internal.hybrid.webkit;

import miui.hybrid.HybridBackForwardList;
import miui.hybrid.HybridHistoryItem;

public class WebBackForwardList extends HybridBackForwardList {
    private android.webkit.WebBackForwardList gm;

    public WebBackForwardList(android.webkit.WebBackForwardList webBackForwardList) {
        this.gm = webBackForwardList;
    }

    public HybridHistoryItem getCurrentItem() {
        return new WebHistoryItem(this.gm.getCurrentItem());
    }

    public int getCurrentIndex() {
        return this.gm.getCurrentIndex();
    }

    public HybridHistoryItem getItemAtIndex(int i) {
        return new WebHistoryItem(this.gm.getItemAtIndex(i));
    }

    public int getSize() {
        return this.gm.getSize();
    }
}

package com.miui.internal.hybrid.webkit;

import android.graphics.Bitmap;
import miui.hybrid.HybridHistoryItem;

public class WebHistoryItem extends HybridHistoryItem {
    private android.webkit.WebHistoryItem go;

    public WebHistoryItem(android.webkit.WebHistoryItem webHistoryItem) {
        this.go = webHistoryItem;
    }

    public String getUrl() {
        return this.go.getUrl();
    }

    public String getOriginalUrl() {
        return this.go.getOriginalUrl();
    }

    public String getTitle() {
        return this.go.getTitle();
    }

    public Bitmap getFavicon() {
        return this.go.getFavicon();
    }
}

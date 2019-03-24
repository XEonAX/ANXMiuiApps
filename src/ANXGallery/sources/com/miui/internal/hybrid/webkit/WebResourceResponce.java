package com.miui.internal.hybrid.webkit;

import android.webkit.WebResourceResponse;
import miui.hybrid.HybridResourceResponse;

public class WebResourceResponce extends WebResourceResponse {
    public WebResourceResponce(HybridResourceResponse hybridResourceResponse) {
        super(hybridResourceResponse.getMimeType(), hybridResourceResponse.getEncoding(), hybridResourceResponse.getData());
    }
}

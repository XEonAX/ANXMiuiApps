package com.miui.gallery.assistant.manager.request;

import com.miui.gallery.assistant.manager.AlgorithmRequest.Priority;
import com.miui.gallery.assistant.manager.result.ImageFeatureResult;

public abstract class PixelImageFeatureRequest<T extends ImageFeatureResult> extends ImageFeatureRequest<T> {
    protected final int mHeight;
    protected final byte[] mPixs;
    protected final int mWidth;

    public PixelImageFeatureRequest(Priority priority, long imageId, String sha1, long imageDateTime, byte[] pixs, int width, int height) {
        super(priority, imageId, sha1, imageDateTime);
        this.mPixs = pixs;
        this.mWidth = width;
        this.mHeight = height;
    }
}

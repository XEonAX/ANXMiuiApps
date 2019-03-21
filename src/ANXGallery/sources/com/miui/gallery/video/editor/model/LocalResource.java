package com.miui.gallery.video.editor.model;

import com.miui.gallery.net.resource.Resource;

public class LocalResource extends Resource {
    public int imageId;
    public int isInternational;
    public String nameKey;

    public LocalResource(int imageId, String type) {
        this.type = type;
        this.imageId = imageId;
        this.isInternational = 0;
    }

    public boolean isInternational() {
        return this.isInternational == 0;
    }
}

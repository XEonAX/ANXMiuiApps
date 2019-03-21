package com.miui.gallery.assistant.jni.cluster;

public class Cluster {
    private final long[] imageIds;

    public Cluster(long[] imageIds) {
        this.imageIds = imageIds;
    }

    public long[] getImageIds() {
        return this.imageIds;
    }
}

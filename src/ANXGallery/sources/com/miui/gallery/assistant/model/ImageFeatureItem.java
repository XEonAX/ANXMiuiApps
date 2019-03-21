package com.miui.gallery.assistant.model;

public interface ImageFeatureItem {
    long getDateTime();

    ImageFeature getImageFeature();

    long getMediaId();

    String getMediaSha1();
}

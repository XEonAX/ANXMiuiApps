package com.miui.gallery.cloud.card.network;

public interface RequestArguments<T> {
    int getMethod();

    String getUrl();
}

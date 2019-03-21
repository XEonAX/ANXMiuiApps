package com.miui.gallery.sdk.download.executor.queue;

public interface Command {
    String getKey();

    int getPriority();
}

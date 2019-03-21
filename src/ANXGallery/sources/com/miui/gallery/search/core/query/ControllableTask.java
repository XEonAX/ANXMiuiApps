package com.miui.gallery.search.core.query;

public interface ControllableTask<T> {
    void cancel();

    T getResult();

    boolean isCanceled();

    void start();

    boolean started();
}

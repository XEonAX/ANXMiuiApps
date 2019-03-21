package com.miui.gallery.threadpool;

public interface FutureListener<T> {
    void onFutureDone(Future<T> future);
}

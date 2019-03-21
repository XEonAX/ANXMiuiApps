package com.miui.gallery.threadpool;

import com.miui.gallery.threadpool.ThreadPool.Job;

public interface Future<T> {
    void cancel();

    void cancel(int i);

    T get();

    int getCancelType();

    Job<T> getJob();

    boolean isCancelled();

    boolean isDone();
}

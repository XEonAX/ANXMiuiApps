package com.miui.gallery.search.core.context;

import com.miui.gallery.threadpool.ThreadPool.Job;

public interface TaskExecutor<T extends Job> {
    void cancel(T t);

    void submit(T t);
}

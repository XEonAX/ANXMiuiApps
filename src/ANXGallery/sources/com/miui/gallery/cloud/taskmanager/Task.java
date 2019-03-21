package com.miui.gallery.cloud.taskmanager;

import com.miui.gallery.threadpool.ThreadPool.Job;

public abstract class Task<T> implements Job<T>, Comparable<Task> {
    public abstract int compareTo(Task task);
}

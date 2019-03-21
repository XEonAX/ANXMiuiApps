package com.miui.gallery.cloud.thread;

import com.miui.gallery.cloud.thread.RequestCommandQueue.OnItemChangedListener;

public interface TaskFactory {
    BaseTask createTask(int i, int i2, int i3, int i4, OnItemChangedListener onItemChangedListener);
}

package com.xiaomi.smack.util;

import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor;
import com.xiaomi.channel.commonutils.misc.SerializedAsyncTaskProcessor.SerializedAsyncTask;

public class TaskExecutor {
    private static SerializedAsyncTaskProcessor mAsyncProcessor = new SerializedAsyncTaskProcessor(true, 20);

    public static void execute(final Runnable runnable) {
        mAsyncProcessor.addNewTask(new SerializedAsyncTask() {
            public void process() {
                runnable.run();
            }
        });
    }

    public static void execute(SerializedAsyncTask task) {
        mAsyncProcessor.addNewTask(task);
    }

    public static void execute(SerializedAsyncTask task, long delay) {
        mAsyncProcessor.addNewTaskWithDelayed(task, delay);
    }
}

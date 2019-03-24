package miui.util.async.tasks.listeners;

import miui.util.async.Task;
import miui.util.async.Task.Listener;
import miui.util.async.TaskManager;

public abstract class BaseTaskListener implements Listener {
    public void onPrepare(TaskManager taskManager, Task<?> task) {
    }

    public void onCanceled(TaskManager taskManager, Task<?> task) {
    }

    public Object onResult(TaskManager taskManager, Task<?> task, Object obj) {
        return obj;
    }

    public void onException(TaskManager taskManager, Task<?> task, Exception exception) {
    }

    public void onProgress(TaskManager taskManager, Task<?> task, int i, int i2) {
    }

    public void onFinalize(TaskManager taskManager, Task<?> task) {
    }
}

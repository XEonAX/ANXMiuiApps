package com.miui.gallery.cloud;

import com.miui.gallery.cloud.thread.BaseTask;
import com.miui.gallery.util.Log;
import java.util.List;

public class RequestItemExecutor {
    private final String mTag;
    private final BaseTask mTask;
    private Object mWorkLock = new Object();
    private Thread mWorker = null;

    public RequestItemExecutor(BaseTask task) {
        this.mTag = "RequestItemExecutor#" + task.getClass().getSimpleName();
        this.mTask = task;
    }

    private boolean isWorkerAlive() {
        boolean z;
        synchronized (this.mWorkLock) {
            z = (this.mWorker == null || !this.mWorker.isAlive() || this.mWorker.isInterrupted()) ? false : true;
        }
        return z;
    }

    private void ensureWorker() {
        if (this.mTask.getPendingSize() > 0) {
            synchronized (this.mWorkLock) {
                if (isWorkerAlive()) {
                    Log.i(this.mTag, "mWork alive %s, interrupt %s", Boolean.valueOf(this.mWorker.isAlive()), Boolean.valueOf(this.mWorker.isInterrupted()));
                    synchronized (this.mWorker) {
                        this.mWorker.notifyAll();
                    }
                } else {
                    Log.i(this.mTag, "mWork null");
                    this.mWorker = new Thread(this.mTask, this.mTag);
                    this.mWorker.start();
                }
            }
        }
    }

    public int invoke(List<RequestCloudItem> requestItems, boolean interruptExecuting) {
        boolean atFirst = false;
        if (requestItems.isEmpty()) {
            return 0;
        }
        if (!RequestItemBase.isBackgroundPriority(((RequestCloudItem) requestItems.get(0)).priority)) {
            atFirst = true;
        }
        return invoke(requestItems, interruptExecuting, atFirst);
    }

    public int invoke(List<RequestCloudItem> requestItems, boolean interruptExecuting, boolean atFirst) {
        int[] counts = this.mTask.invoke(requestItems, interruptExecuting, atFirst);
        if (counts[0] > 0) {
            if (interruptExecuting && counts[1] > 0) {
                interrupt();
            }
            ensureWorker();
        }
        return counts[0];
    }

    public void cancelAll(int priority, boolean abandon, boolean interruptExecuting) {
        this.mTask.cancelAll(priority, abandon);
        if (interruptExecuting && this.mTask.getPendingSize() <= 0) {
            interrupt();
        }
    }

    private void interrupt() {
        synchronized (this.mWorkLock) {
            if (this.mWorker != null) {
                synchronized (this.mWorker) {
                    this.mWorker.interrupt();
                }
            }
        }
    }

    public boolean hasDelayedItem() {
        return this.mTask.hasDelayedItem();
    }
}

package com.miui.gallery.search.core.context;

import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.Job;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.LinkedBlockingQueue;

public class SimpleTaskExecutor implements TaskExecutor<Job>, FutureListener {
    private int mLimit;
    private final Object mLock = new Object();
    private final ThreadPool mPool;
    private LinkedList<Future> mRunningQueue = new LinkedList();
    private final LinkedBlockingQueue<Job> mWaitQueue = new LinkedBlockingQueue();

    public SimpleTaskExecutor(int threadSize) {
        this.mPool = new ThreadPool(threadSize, threadSize);
        this.mLimit = threadSize;
    }

    public void submit(Job task) {
        if (task != null) {
            synchronized (this.mLock) {
                if (contains(task)) {
                    SearchLog.i("SimpleTaskExecutor", "contain task %d", task);
                    return;
                }
                this.mWaitQueue.add(task);
                submitIfAllowed();
            }
        }
    }

    protected boolean isSameTask(Job task1, Job task2) {
        return task1.equals(task2);
    }

    /* JADX WARNING: Missing block: B:20:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void cancel(Job task) {
        synchronized (this.mLock) {
            Iterator it = this.mRunningQueue.iterator();
            while (it.hasNext()) {
                Future future = (Future) it.next();
                if (isSameTask(future.getJob(), task)) {
                    SearchLog.d("SimpleTaskExecutor", "Cancel running task [%s]", task);
                    future.cancel();
                    onFutureDone(future);
                    return;
                }
            }
            if (this.mWaitQueue.remove(task)) {
                SearchLog.d("SimpleTaskExecutor", "Remove task from waiting queue [%s]", task);
            }
        }
    }

    private boolean contains(Job task) {
        Iterator it = this.mRunningQueue.iterator();
        while (it.hasNext()) {
            Future future = (Future) it.next();
            if (!future.isCancelled() && task.equals(future.getJob())) {
                return true;
            }
        }
        if (this.mWaitQueue.contains(task)) {
            return true;
        }
        return false;
    }

    private void submitIfAllowed() {
        while (this.mLimit > 0 && !this.mWaitQueue.isEmpty()) {
            try {
                Job task = (Job) this.mWaitQueue.take();
                this.mLimit--;
                Future future = this.mPool.submit(task, this);
                SearchLog.i("SimpleTaskExecutor", "submit task %s, running %s", task, future);
                this.mRunningQueue.add(future);
            } catch (Throwable e) {
                SearchLog.w("SimpleTaskExecutor", e);
            }
        }
    }

    public void onFutureDone(Future future) {
        synchronized (this.mLock) {
            if (this.mRunningQueue.remove(future)) {
                this.mLimit++;
            }
            submitIfAllowed();
        }
    }
}

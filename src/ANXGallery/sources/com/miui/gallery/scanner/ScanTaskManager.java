package com.miui.gallery.scanner;

import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.util.Log;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.PriorityQueue;

public class ScanTaskManager implements FutureListener {
    private int mLimit;
    private OnAllTasksExecutedListener mListener;
    private Object mLock;
    private ThreadPool mPool;
    private LinkedList<Future> mRunningQueue;
    private PriorityQueue<ScanTask> mWaitQueue;

    public interface OnAllTasksExecutedListener {
        void onAllTasksExecuted();
    }

    public ScanTaskManager() {
        this.mLock = new Object();
        this.mWaitQueue = new PriorityQueue();
        this.mRunningQueue = new LinkedList();
        this.mPool = new ThreadPool(1, 1);
        this.mLimit = 1;
    }

    public ScanTaskManager(int threadSize, OnAllTasksExecutedListener listener) {
        this.mLock = new Object();
        this.mWaitQueue = new PriorityQueue();
        this.mRunningQueue = new LinkedList();
        this.mListener = listener;
        this.mPool = new ThreadPool(threadSize, threadSize);
        this.mLimit = threadSize;
    }

    public void submit(ScanTask task) {
        if (task != null) {
            synchronized (this.mLock) {
                if (contains(task)) {
                    Log.i("ScanTaskManager", "contains task %s", task.toString());
                    return;
                }
                this.mWaitQueue.offer(task);
                Iterator it = this.mRunningQueue.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    ScanTask running = (ScanTask) future.getJob();
                    if (running != null && running.compareTo(task) > 0) {
                        Log.i("ScanTaskManager", "priority %d is interrupted by %d", Integer.valueOf(running.getPriority()), Integer.valueOf(task.getPriority()));
                        future.cancel(1);
                    }
                }
                submitIfAllowed();
            }
        }
    }

    private boolean contains(ScanTask newTask) {
        if (!newTask.isForceScan()) {
            Iterator it = this.mRunningQueue.iterator();
            while (it.hasNext()) {
                Future future = (Future) it.next();
                if (!future.isCancelled() && newTask.equals((ScanTask) future.getJob())) {
                    return true;
                }
            }
        }
        return this.mWaitQueue.contains(newTask);
    }

    private void submitIfAllowed() {
        if (this.mPool.isShutdown()) {
            cancelAll();
            return;
        }
        while (this.mLimit > 0 && !this.mWaitQueue.isEmpty()) {
            ScanTask task = (ScanTask) this.mWaitQueue.poll();
            this.mLimit--;
            Log.i("ScanTaskManager", "priority %d, time %d", Integer.valueOf(task.getPriority()), Long.valueOf(task.getNewTime()));
            this.mRunningQueue.add(this.mPool.submit(task, this));
        }
    }

    public void onFutureDone(Future future) {
        synchronized (this.mLock) {
            if (future != null) {
                if (future.getCancelType() == 1) {
                    ScanTask job = (ScanTask) future.getJob();
                    if (job != null) {
                        Log.i("ScanTaskManager", "CANCEL_INTERRUPT %d", Integer.valueOf(job.getPriority()));
                        this.mWaitQueue.offer(job);
                    }
                }
            }
            this.mRunningQueue.remove(future);
            if (this.mListener != null && isEmpty()) {
                this.mListener.onAllTasksExecuted();
            }
            this.mLimit++;
            submitIfAllowed();
        }
    }

    public boolean isEmpty() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mRunningQueue.isEmpty() && this.mWaitQueue.isEmpty();
        }
        return z;
    }

    public void shutdown() {
        cancelAll();
        this.mPool.shutdown();
    }

    public void cancelAll() {
        synchronized (this.mLock) {
            this.mWaitQueue.clear();
            Iterator it = this.mRunningQueue.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel();
            }
        }
    }

    public void cancelForegroundTask() {
        synchronized (this.mLock) {
            ScanTask task;
            Iterator<ScanTask> iterator = this.mWaitQueue.iterator();
            while (iterator.hasNext()) {
                task = (ScanTask) iterator.next();
                if (task.isForeground() && !task.canRunningInBackground()) {
                    iterator.remove();
                    Log.i("ScanTaskManager", "cancel foreground task %s", task.toString());
                }
            }
            Iterator it = this.mRunningQueue.iterator();
            while (it.hasNext()) {
                Future future = (Future) it.next();
                task = (ScanTask) future.getJob();
                if (task.isForeground() && !task.canRunningInBackground()) {
                    future.cancel();
                    Log.i("ScanTaskManager", "cancel foreground task %s", task.toString());
                }
            }
        }
    }

    public void cancelByPriority(int priority) {
        synchronized (this.mLock) {
            ScanTask task;
            Iterator<ScanTask> iterator = this.mWaitQueue.iterator();
            while (iterator.hasNext()) {
                task = (ScanTask) iterator.next();
                if (priority == task.getPriority()) {
                    iterator.remove();
                    Log.d("ScanTaskManager", "cancel task [%s] by priority [%d]", task.toString(), Integer.valueOf(priority));
                }
            }
            Iterator it = this.mRunningQueue.iterator();
            while (it.hasNext()) {
                Future future = (Future) it.next();
                task = (ScanTask) future.getJob();
                if (priority == task.getPriority()) {
                    future.cancel();
                    Log.d("ScanTaskManager", "cancel task [%s] by priority [%d]", task.toString(), Integer.valueOf(priority));
                }
            }
        }
    }
}

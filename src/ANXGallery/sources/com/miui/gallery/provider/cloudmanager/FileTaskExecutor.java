package com.miui.gallery.provider.cloudmanager;

import android.content.Context;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadPool;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import java.util.concurrent.LinkedBlockingQueue;

class FileTaskExecutor implements FutureListener<FileTaskResult> {
    private Context mContext;
    private FileHandleListener mListener;
    private final Object mLock = new Object();
    private final ThreadPool mPool;
    private Future<FileTaskResult> mRunningTask = null;
    private LinkedBlockingQueue<long[]> mWaitingQueue;

    interface FileHandleListener {
        void onAllTaskExecuted();

        void onCancel();

        void onRecordsHandled(long[] jArr, long[] jArr2);
    }

    private static class FileTaskJob implements Job<FileTaskResult> {
        private Context mContext;
        private long[] mIds;

        public FileTaskJob(Context context, long[] ids) {
            this.mContext = context;
            this.mIds = ids;
        }

        public FileTaskResult run(JobContext jc) {
            return new FileTaskResult(this.mIds, new FileHandleTask(this.mContext, this.mIds).run(null, null));
        }
    }

    static class FileTaskResult {
        public long[] ids;
        public long[] results;

        public FileTaskResult(long[] ids, long[] results) {
            this.ids = ids;
            this.results = results;
        }

        public String toString() {
            return "[FileTaskResult:ids:" + this.ids + ", results:" + this.results + "]";
        }
    }

    public FileTaskExecutor(Context context, FileHandleListener listener) {
        this.mContext = context;
        this.mListener = listener;
        this.mWaitingQueue = new LinkedBlockingQueue();
        this.mPool = new ThreadPool(1, 1);
    }

    public boolean isCompleted() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mWaitingQueue.isEmpty() && this.mRunningTask == null;
        }
        return z;
    }

    private void reportIfCompleted() {
        if (isCompleted()) {
            Log.d("CloudManager.FileTaskExecutor", "on complete all tasks");
            this.mListener.onAllTaskExecuted();
        }
    }

    public void submit(long[] ids) {
        if (ids == null || ids.length <= 0) {
            reportIfCompleted();
            return;
        }
        synchronized (this.mLock) {
            this.mWaitingQueue.add(ids);
        }
        submitIfAllowed();
    }

    public void shutdown() {
        Log.d("CloudManager.FileTaskExecutor", "Shutting down executor [%s]", (Object) this);
        cancelAll();
        this.mPool.shutdown();
        this.mContext = null;
    }

    private void cancelAll() {
        synchronized (this.mLock) {
            if (this.mRunningTask != null) {
                Log.w("CloudManager.FileTaskExecutor", "Running file task isn't finished yet!");
            }
            this.mWaitingQueue.clear();
            if (this.mRunningTask != null) {
                this.mRunningTask.cancel();
            }
        }
    }

    private void submitIfAllowed() {
        if (this.mPool.isShutdown()) {
            cancelAll();
            this.mListener.onCancel();
            Log.w("CloudManager.FileTaskExecutor", "Strange situation, submitting tasks when executor is shutting down!");
            return;
        }
        synchronized (this.mLock) {
            if (this.mRunningTask != null || this.mWaitingQueue.size() <= 0) {
                reportIfCompleted();
            } else {
                long[] ids = (long[]) this.mWaitingQueue.poll();
                Log.d("CloudManager.FileTaskExecutor", "Submitting FileTaskJob of %d ids to executor [%s]", Integer.valueOf(ids.length), this);
                this.mRunningTask = this.mPool.submit(new FileTaskJob(this.mContext, ids), this);
            }
        }
    }

    public void onFutureDone(Future<FileTaskResult> future) {
        synchronized (this.mLock) {
            if (this.mRunningTask != future) {
                Log.e("CloudManager.FileTaskExecutor", "Don't know what happened, but we expect %s instead of %s", this.mRunningTask, future);
            }
            this.mRunningTask = null;
        }
        Object result = (FileTaskResult) future.get();
        if (result == null || result.ids == null || result.results == null) {
            Log.e("CloudManager.FileTaskExecutor", "Invalid file task result %s", result);
        } else {
            Log.d("CloudManager.FileTaskExecutor", "onFutureDone for %s ids", Integer.valueOf(result.ids.length));
            this.mListener.onRecordsHandled(result.ids, result.results);
        }
        submitIfAllowed();
    }
}

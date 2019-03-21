package com.miui.gallery.threadpool;

import com.miui.gallery.util.Log;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class ThreadPool {
    public static final JobContext JOB_CONTEXT_STUB = new JobContextStub();
    ResourceCounter mCpuCounter;
    private final ThreadPoolExecutor mExecutor;
    ResourceCounter mNetworkCounter;

    public interface Job<T> {
        T run(JobContext jobContext);
    }

    public interface CancelListener {
        void onCancel();
    }

    public interface JobContext {
        boolean isCancelled();

        void setCancelListener(CancelListener cancelListener);
    }

    private static class JobContextStub implements JobContext {
        private JobContextStub() {
        }

        public boolean isCancelled() {
            return false;
        }

        public void setCancelListener(CancelListener listener) {
        }
    }

    private static class ResourceCounter {
        public int value;

        public ResourceCounter(int v) {
            this.value = v;
        }
    }

    private class Worker<T> implements Future<T>, JobContext, Runnable {
        private CancelListener mCancelListener;
        private int mCancelType = 0;
        private volatile boolean mIsCancelled;
        private boolean mIsDone;
        private Job<T> mJob;
        private FutureListener<T> mListener;
        private int mMode;
        private T mResult;
        private ResourceCounter mWaitOnResource;

        public Worker(Job<T> job, FutureListener<T> listener) {
            this.mJob = job;
            this.mListener = listener;
        }

        public void run() {
            Object result = null;
            if (setMode(1)) {
                try {
                    result = this.mJob.run(this);
                } catch (Throwable ex) {
                    Log.w("Worker", "Exception in running a job", ex);
                }
            }
            synchronized (this) {
                setMode(0);
                this.mResult = result;
                this.mIsDone = true;
                notifyAll();
            }
            if (this.mListener != null) {
                this.mListener.onFutureDone(this);
            }
        }

        public synchronized void cancel() {
            if (!this.mIsCancelled) {
                this.mIsCancelled = true;
                if (this.mWaitOnResource != null) {
                    synchronized (this.mWaitOnResource) {
                        this.mWaitOnResource.notifyAll();
                    }
                }
                if (this.mCancelListener != null) {
                    this.mCancelListener.onCancel();
                }
            }
        }

        public synchronized void cancel(int type) {
            this.mCancelType = type;
            cancel();
        }

        public int getCancelType() {
            return this.mCancelType;
        }

        public Job<T> getJob() {
            return this.mJob;
        }

        public boolean isCancelled() {
            return this.mIsCancelled;
        }

        public synchronized boolean isDone() {
            return this.mIsDone;
        }

        public synchronized T get() {
            while (!this.mIsDone) {
                try {
                    wait();
                } catch (Exception ex) {
                    Log.w("Worker", "ingore exception", ex);
                }
            }
            return this.mResult;
        }

        public synchronized void setCancelListener(CancelListener listener) {
            this.mCancelListener = listener;
            if (this.mIsCancelled && this.mCancelListener != null) {
                this.mCancelListener.onCancel();
            }
        }

        public boolean setMode(int mode) {
            ResourceCounter rc = modeToCounter(this.mMode);
            if (rc != null) {
                releaseResource(rc);
            }
            this.mMode = 0;
            rc = modeToCounter(mode);
            if (rc != null) {
                if (!acquireResource(rc)) {
                    return false;
                }
                this.mMode = mode;
            }
            return true;
        }

        private ResourceCounter modeToCounter(int mode) {
            if (mode == 1) {
                return ThreadPool.this.mCpuCounter;
            }
            if (mode == 2) {
                return ThreadPool.this.mNetworkCounter;
            }
            return null;
        }

        /* JADX WARNING: Missing block: B:8:0x000e, code:
            monitor-enter(r2);
     */
        /* JADX WARNING: Missing block: B:11:0x0011, code:
            if (r2.value <= 0) goto L_0x0024;
     */
        /* JADX WARNING: Missing block: B:12:0x0013, code:
            r2.value--;
     */
        /* JADX WARNING: Missing block: B:13:0x0019, code:
            monitor-exit(r2);
     */
        /* JADX WARNING: Missing block: B:14:0x001a, code:
            monitor-enter(r1);
     */
        /* JADX WARNING: Missing block: B:17:?, code:
            r1.mWaitOnResource = null;
     */
        /* JADX WARNING: Missing block: B:18:0x001e, code:
            monitor-exit(r1);
     */
        /* JADX WARNING: Missing block: B:25:?, code:
            r2.wait();
     */
        /* JADX WARNING: Missing block: B:46:?, code:
            return true;
     */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private boolean acquireResource(ResourceCounter counter) {
            while (true) {
                synchronized (this) {
                    if (this.mIsCancelled) {
                        this.mWaitOnResource = null;
                        return false;
                    }
                    this.mWaitOnResource = counter;
                }
            }
            while (true) {
            }
        }

        private void releaseResource(ResourceCounter counter) {
            synchronized (counter) {
                counter.value++;
                counter.notifyAll();
            }
        }
    }

    public ThreadPool() {
        this(4, 8);
    }

    public ThreadPool(int corePoolSize, int maxPoolSize) {
        this.mCpuCounter = new ResourceCounter(4);
        this.mNetworkCounter = new ResourceCounter(2);
        this.mExecutor = new ThreadPoolExecutor(corePoolSize, maxPoolSize, 10, TimeUnit.SECONDS, new LinkedBlockingQueue(), new PriorityThreadFactory("thread-pool", 10));
    }

    public void shutdown() {
        try {
            this.mExecutor.shutdown();
        } catch (Throwable throwable) {
            Log.w("ThreadPool", throwable);
        }
    }

    public void shutdownNow() {
        try {
            this.mExecutor.shutdownNow();
        } catch (Throwable throwable) {
            Log.w("ThreadPool", throwable);
        }
    }

    public boolean isShutdown() {
        return this.mExecutor.isShutdown();
    }

    public <T> Future<T> submit(Job<T> job, FutureListener<T> listener) {
        Worker<T> w = new Worker(job, listener);
        this.mExecutor.execute(w);
        return w;
    }

    public <T> Future<T> submit(Job<T> job) {
        return submit(job, null);
    }
}

package com.miui.gallery.assistant.manager;

import android.os.Build;
import android.os.Looper;
import com.miui.gallery.assistant.manager.result.AlgorithmResult;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicLong;

public abstract class AlgorithmRequest<T extends AlgorithmResult> implements Comparable<AlgorithmRequest>, Runnable {
    static final AtomicLong seq = new AtomicLong(0);
    protected final String TAG = getClass().getSimpleName();
    private T mAlgorithmResult;
    private volatile Listener<T> mAsyncThreadListener;
    private volatile boolean mIsCanceled = false;
    private volatile Listener<T> mMainThreadListener;
    private final Priority mPriority;
    private volatile State mState;
    private CountDownLatch mSyncExecuteLock = null;
    final long seqNum;

    public interface Listener<R extends AlgorithmResult> {
        void onCancel();

        void onComputeComplete(R r);

        void onSaveComplete(R r);

        void onStart();
    }

    public enum Priority {
        PRIORITY_IMMEDIATELY,
        PRIORITY_HIGH,
        PRIORITY_NORMAL,
        PRIORITY_LOW
    }

    public enum State {
        STATE_INIT,
        STATE_QUEUING,
        STATE_START,
        STATE_FINISHED
    }

    protected abstract void onSaveResult(T t);

    protected abstract T process();

    public AlgorithmRequest(Priority priority) {
        this.mPriority = priority;
        this.mState = State.STATE_INIT;
        this.seqNum = seq.getAndIncrement();
    }

    public void setMainThreadListener(Listener<T> listener) {
        this.mMainThreadListener = listener;
    }

    public T executeSync() {
        if (Looper.myLooper() == Looper.getMainLooper() || Looper.myLooper() == ThreadManager.getRequestThreadLooper()) {
            throw new RuntimeException("executeSync could not call on main thread or request thread.");
        } else if (this.mPriority == Priority.PRIORITY_IMMEDIATELY) {
            run();
            return this.mAlgorithmResult;
        } else {
            this.mSyncExecuteLock = new CountDownLatch(1);
            execute();
            try {
                this.mSyncExecuteLock.await();
            } catch (InterruptedException e) {
            }
            return this.mAlgorithmResult;
        }
    }

    public void execute() {
        AlgorithmExecuteManager.getInstance().enqueue(this);
        this.mState = State.STATE_QUEUING;
    }

    public Priority getPriority() {
        return this.mPriority;
    }

    private void onStart() {
        if (this.mAsyncThreadListener != null) {
            this.mAsyncThreadListener.onStart();
        }
        if (this.mMainThreadListener != null) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (AlgorithmRequest.this.mMainThreadListener != null) {
                        AlgorithmRequest.this.mMainThreadListener.onStart();
                    }
                }
            });
        }
    }

    private void releaseSyncExecuteLock() {
        if (this.mSyncExecuteLock != null) {
            this.mSyncExecuteLock.countDown();
        }
    }

    protected void deliverResponse(final T result) {
        this.mAlgorithmResult = result;
        releaseSyncExecuteLock();
        if (this.mAsyncThreadListener != null) {
            this.mAsyncThreadListener.onComputeComplete(result);
        }
        if (this.mMainThreadListener != null) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (AlgorithmRequest.this.mMainThreadListener != null) {
                        AlgorithmRequest.this.mMainThreadListener.onComputeComplete(result);
                    }
                }
            });
        }
    }

    public void run() {
        if (this.mIsCanceled) {
            if (this.mAsyncThreadListener != null) {
                this.mAsyncThreadListener.onCancel();
            }
            if (this.mMainThreadListener != null) {
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        if (AlgorithmRequest.this.mMainThreadListener != null) {
                            AlgorithmRequest.this.mMainThreadListener.onCancel();
                        }
                    }
                });
                return;
            }
            return;
        }
        this.mState = State.STATE_START;
        onStart();
        T result = null;
        try {
            long start = System.currentTimeMillis();
            result = process();
            recordAlgorithmProcessTime(start);
        } catch (Throwable e) {
            Log.e(this.TAG, e);
        }
        deliverResponse(result);
        this.mState = State.STATE_FINISHED;
        Log.d(this.TAG, "%s AlgorithmRequest save result!", this.TAG);
        onSaveResult(result);
        notifySaveComplete(result);
    }

    private void recordAlgorithmProcessTime(long start) {
        long elapseTime = System.currentTimeMillis() - start;
        Log.d(this.TAG, "%s AlgorithmRequest process using time %d ms", this.TAG, Long.valueOf(elapseTime));
        HashMap<String, String> params = new HashMap();
        params.put("model_" + Build.MODEL, String.valueOf((elapseTime / 50) * 50));
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_algorithm_process_time_" + this.TAG, params);
        BaseSamplingStatHelper.recordNumericPropertyEvent("assistant", "assistant_algorithm_process_time_distribution_" + this.TAG, elapseTime);
    }

    private void notifySaveComplete(final T result) {
        if (this.mAsyncThreadListener != null) {
            this.mAsyncThreadListener.onSaveComplete(result);
        }
        if (this.mMainThreadListener != null) {
            ThreadManager.getMainHandler().post(new Runnable() {
                public void run() {
                    if (AlgorithmRequest.this.mMainThreadListener != null) {
                        AlgorithmRequest.this.mMainThreadListener.onSaveComplete(result);
                    }
                }
            });
        }
    }

    public int compareTo(AlgorithmRequest o) {
        int res = this.mPriority.ordinal() - o.getPriority().ordinal();
        if (res == 0) {
            return this.seqNum < o.seqNum ? -1 : 1;
        } else {
            return res;
        }
    }
}

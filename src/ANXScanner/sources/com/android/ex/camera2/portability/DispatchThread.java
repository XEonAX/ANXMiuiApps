package com.android.ex.camera2.portability;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import com.android.ex.camera2.portability.debug.Log;
import com.android.ex.camera2.portability.debug.Log.Tag;
import java.util.LinkedList;
import java.util.Queue;

public class DispatchThread extends Thread {
    private static final long MAX_MESSAGE_QUEUE_LENGTH = 256;
    private static final Tag TAG = new Tag("DispatchThread");
    private Handler mCameraHandler;
    private HandlerThread mCameraHandlerThread;
    private Boolean mIsEnded = new Boolean(false);
    private final Queue<Runnable> mJobQueue = new LinkedList();

    public DispatchThread(Handler cameraHandler, HandlerThread cameraHandlerThread) {
        super("Camera Job Dispatch Thread");
        this.mCameraHandler = cameraHandler;
        this.mCameraHandlerThread = cameraHandlerThread;
    }

    public void runJob(Runnable job) {
        if (isEnded()) {
            throw new IllegalStateException("Trying to run job on interrupted dispatcher thread");
        }
        synchronized (this.mJobQueue) {
            if (((long) this.mJobQueue.size()) == 256) {
                throw new RuntimeException("Camera master thread job queue full");
            }
            this.mJobQueue.add(job);
            this.mJobQueue.notifyAll();
        }
    }

    public void runJobSync(Runnable job, Object waitLock, long timeoutMs, String jobMsg) {
        String timeoutMsg = "Timeout waiting " + timeoutMs + "ms for " + jobMsg;
        synchronized (waitLock) {
            long timeoutBound = SystemClock.uptimeMillis() + timeoutMs;
            try {
                runJob(job);
                waitLock.wait(timeoutMs);
                if (SystemClock.uptimeMillis() > timeoutBound) {
                    throw new IllegalStateException(timeoutMsg);
                }
            } catch (InterruptedException e) {
                if (SystemClock.uptimeMillis() > timeoutBound) {
                    throw new IllegalStateException(timeoutMsg);
                }
            }
        }
    }

    public void end() {
        synchronized (this.mIsEnded) {
            this.mIsEnded = Boolean.valueOf(true);
        }
        synchronized (this.mJobQueue) {
            this.mJobQueue.notifyAll();
        }
    }

    private boolean isEnded() {
        boolean booleanValue;
        synchronized (this.mIsEnded) {
            booleanValue = this.mIsEnded.booleanValue();
        }
        return booleanValue;
    }

    public void run() {
        while (true) {
            Runnable job;
            synchronized (this.mJobQueue) {
                while (this.mJobQueue.size() == 0 && !isEnded()) {
                    try {
                        this.mJobQueue.wait();
                    } catch (InterruptedException e) {
                        Log.w(TAG, "Dispatcher thread wait() interrupted, exiting");
                    }
                }
                job = (Runnable) this.mJobQueue.poll();
            }
            if (job != null) {
                job.run();
                synchronized (this) {
                    this.mCameraHandler.post(new Runnable() {
                        public void run() {
                            synchronized (DispatchThread.this) {
                                DispatchThread.this.notifyAll();
                            }
                        }
                    });
                    try {
                        wait();
                    } catch (InterruptedException e2) {
                    }
                }
            } else if (isEnded()) {
                this.mCameraHandlerThread.quitSafely();
                return;
            }
        }
        while (true) {
        }
    }
}

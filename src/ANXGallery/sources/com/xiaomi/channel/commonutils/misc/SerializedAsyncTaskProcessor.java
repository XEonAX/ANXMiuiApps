package com.xiaomi.channel.commonutils.misc;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class SerializedAsyncTaskProcessor {
    private volatile SerializedAsyncTask mCurrentTask;
    private final boolean mIsDaemon;
    private int mKeepAliveTime;
    private Handler mMainThreadHandler;
    private ProcessPackageThread mProcessThread;
    private volatile boolean threadQuit;

    private class ProcessPackageThread extends Thread {
        private final LinkedBlockingQueue<SerializedAsyncTask> mTasks = new LinkedBlockingQueue();

        public ProcessPackageThread() {
            super("PackageProcessor");
        }

        public void insertTask(SerializedAsyncTask task) {
            try {
                this.mTasks.add(task);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        private void notifyUI(int state, SerializedAsyncTask task) {
            SerializedAsyncTaskProcessor.this.mMainThreadHandler.sendMessage(SerializedAsyncTaskProcessor.this.mMainThreadHandler.obtainMessage(state, task));
        }

        public void run() {
            long keepAliveTime = SerializedAsyncTaskProcessor.this.mKeepAliveTime > 0 ? (long) SerializedAsyncTaskProcessor.this.mKeepAliveTime : Long.MAX_VALUE;
            while (!SerializedAsyncTaskProcessor.this.threadQuit) {
                try {
                    SerializedAsyncTask task = (SerializedAsyncTask) this.mTasks.poll(keepAliveTime, TimeUnit.SECONDS);
                    SerializedAsyncTaskProcessor.this.mCurrentTask = task;
                    if (task != null) {
                        notifyUI(0, task);
                        task.process();
                        notifyUI(1, task);
                    } else if (SerializedAsyncTaskProcessor.this.mKeepAliveTime > 0) {
                        SerializedAsyncTaskProcessor.this.stopTaskProcessor();
                    }
                } catch (Throwable e) {
                    MyLog.e(e);
                }
            }
        }
    }

    public static abstract class SerializedAsyncTask {
        public abstract void process();

        public void preProcess() {
        }

        public void postProcess() {
        }
    }

    public SerializedAsyncTaskProcessor() {
        this(false);
    }

    public SerializedAsyncTaskProcessor(boolean isDaemon) {
        this(isDaemon, 0);
    }

    public SerializedAsyncTaskProcessor(boolean isDaemon, int keepAliveTime) {
        this.mMainThreadHandler = null;
        this.threadQuit = false;
        this.mKeepAliveTime = 0;
        this.mMainThreadHandler = new Handler(Looper.getMainLooper()) {
            public void handleMessage(Message msg) {
                SerializedAsyncTask task = msg.obj;
                if (msg.what == 0) {
                    task.preProcess();
                } else if (msg.what == 1) {
                    task.postProcess();
                }
                super.handleMessage(msg);
            }
        };
        this.mIsDaemon = isDaemon;
        this.mKeepAliveTime = keepAliveTime;
    }

    public synchronized void addNewTask(SerializedAsyncTask task) {
        if (this.mProcessThread == null) {
            this.mProcessThread = new ProcessPackageThread();
            this.mProcessThread.setDaemon(this.mIsDaemon);
            this.threadQuit = false;
            this.mProcessThread.start();
        }
        this.mProcessThread.insertTask(task);
    }

    private synchronized void stopTaskProcessor() {
        this.mProcessThread = null;
        this.threadQuit = true;
    }

    public void addNewTaskWithDelayed(final SerializedAsyncTask task, long delay) {
        this.mMainThreadHandler.postDelayed(new Runnable() {
            public void run() {
                SerializedAsyncTaskProcessor.this.addNewTask(task);
            }
        }, delay);
    }
}

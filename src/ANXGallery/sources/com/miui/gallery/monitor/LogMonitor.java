package com.miui.gallery.monitor;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;

class LogMonitor {
    private final long mBlockTime;
    private long mStart;
    private final long mTraceStackTime = ((long) (((float) this.mBlockTime) * 0.8f));
    private final Handler mWorkHandler;

    private static class WorkHandler extends Handler {
        private final FileLog mFileLog = new FileLog();
        private final Looper mMonitorLooper;
        private String mStackTrace;

        public WorkHandler(Looper looper, Looper monitorLooper) {
            super(looper);
            this.mMonitorLooper = monitorLooper;
        }

        private void traceStack() {
            StringBuilder sb = new StringBuilder();
            for (StackTraceElement s : this.mMonitorLooper.getThread().getStackTrace()) {
                sb.append(s.toString()).append("\n");
            }
            this.mStackTrace = sb.toString();
        }

        private void printLog(String log) {
            if (this.mStackTrace != null) {
                Log.w("LOOPER_MONITOR", this.mStackTrace);
            }
            if (log != null) {
                Log.w("LOOPER_MONITOR", log);
            }
            this.mFileLog.log(this.mStackTrace + log + "\n------------------------------------\n");
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    traceStack();
                    break;
                case 2:
                    printLog((String) msg.obj);
                    break;
            }
            super.handleMessage(msg);
        }
    }

    LogMonitor(Looper monitorLooper, long blockTime) {
        this.mBlockTime = Math.max(30, Math.min(blockTime, 3000));
        HandlerThread workThread = new HandlerThread("monitor work", 10);
        workThread.start();
        this.mWorkHandler = new WorkHandler(workThread.getLooper(), monitorLooper);
    }

    void startMonitor(String s) {
        this.mStart = SystemClock.uptimeMillis();
        this.mWorkHandler.sendEmptyMessageDelayed(1, this.mTraceStackTime);
    }

    void stopMonitor(String s) {
        this.mWorkHandler.removeMessages(1);
        if (this.mStart > 0) {
            if (SystemClock.uptimeMillis() - this.mStart > this.mBlockTime && !TextUtils.isEmpty(s)) {
                this.mWorkHandler.obtainMessage(2, String.format("%s ########### Processing: %sms", new Object[]{s, Long.valueOf(cost)})).sendToTarget();
            }
        }
    }
}

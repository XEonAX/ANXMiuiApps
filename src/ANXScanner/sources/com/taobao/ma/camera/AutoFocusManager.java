package com.taobao.ma.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.util.Log;
import com.taobao.ma.camera.constants.PreferencesKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.RejectedExecutionException;

public final class AutoFocusManager implements AutoFocusCallback {
    private static final long AUTO_FOCUS_INTERVAL_MS = 2000;
    private static final Collection<String> FOCUS_MODES_CALLING_AF = new ArrayList(2);
    private static final String TAG = AutoFocusManager.class.getSimpleName();
    private long autoFocusInterval = AUTO_FOCUS_INTERVAL_MS;
    private final Camera camera;
    private Handler firstFocusHandler;
    private OnAutoFocusListener focusListener = null;
    private boolean focusing;
    private AsyncTask<?, ?, ?> outstandingTask;
    private boolean stopped;
    private final boolean useAutoFocus;

    private final class AutoFocusTask extends AsyncTask<Object, Object, Object> {
        private AutoFocusTask() {
        }

        /* synthetic */ AutoFocusTask(AutoFocusManager x0, AnonymousClass1 x1) {
            this();
        }

        protected Object doInBackground(Object... voids) {
            try {
                Thread.sleep(AutoFocusManager.this.autoFocusInterval);
            } catch (InterruptedException e) {
            }
            AutoFocusManager.this.start();
            return null;
        }
    }

    public interface OnAutoFocusListener {
        void onFocus(boolean z);
    }

    static {
        FOCUS_MODES_CALLING_AF.add("auto");
        FOCUS_MODES_CALLING_AF.add("macro");
    }

    AutoFocusManager(Context context, Camera camera) {
        boolean z = true;
        this.camera = camera;
        this.firstFocusHandler = new Handler(context.getMainLooper()) {
            public void handleMessage(Message msg) {
                AutoFocusManager.this.start();
            }
        };
        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        String currentFocusMode = camera.getParameters().getFocusMode();
        if (!(sharedPrefs.getBoolean(PreferencesKey.KEY_AUTO_FOCUS, true) && FOCUS_MODES_CALLING_AF.contains(currentFocusMode))) {
            z = false;
        }
        this.useAutoFocus = z;
        Log.i(TAG, "Current focus mode '" + currentFocusMode + "'; use auto focus? " + this.useAutoFocus);
    }

    public synchronized void onAutoFocus(boolean success, Camera theCamera) {
        this.focusing = false;
        if (this.focusListener != null) {
            this.focusListener.onFocus(success);
        }
        autoFocusAgainLater();
    }

    private synchronized void autoFocusAgainLater() {
        if (!this.stopped && this.outstandingTask == null) {
            AutoFocusTask newTask = new AutoFocusTask(this, null);
            try {
                newTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                this.outstandingTask = newTask;
            } catch (RejectedExecutionException ree) {
                Log.w(TAG, "Could not request auto focus", ree);
            }
        }
        return;
    }

    public synchronized void restart() {
        this.stopped = false;
        start();
    }

    private synchronized void start() {
        if (this.useAutoFocus) {
            this.outstandingTask = null;
            if (!(this.stopped || this.focusing)) {
                try {
                    this.camera.autoFocus(this);
                    this.focusing = true;
                } catch (RuntimeException re) {
                    Log.w(TAG, "Unexpected exception while focusing", re);
                    autoFocusAgainLater();
                }
            }
        }
        return;
    }

    private synchronized void cancelOutstandingTask() {
        if (this.outstandingTask != null) {
            if (this.outstandingTask.getStatus() != Status.FINISHED) {
                this.outstandingTask.cancel(true);
            }
            this.outstandingTask = null;
        }
    }

    synchronized void stop() {
        this.stopped = true;
        if (this.useAutoFocus) {
            cancelOutstandingTask();
            try {
                this.camera.cancelAutoFocus();
            } catch (RuntimeException re) {
                Log.w(TAG, "Unexpected exception while cancelling focusing", re);
            }
        }
        return;
    }

    public void startAutoFocus(long delay) {
        if (delay >= 0 && this.firstFocusHandler != null) {
            this.firstFocusHandler.sendEmptyMessageDelayed(0, delay);
        }
    }

    public void setAutoFocusInterval(long interval) {
        if (interval >= 0) {
            this.autoFocusInterval = interval;
        }
    }

    public void setFocusListener(OnAutoFocusListener listener) {
        this.focusListener = listener;
    }
}

package com.miui.gallery.threadpool;

import android.os.Handler;
import android.os.Looper;

public abstract class FutureHandler<T> implements FutureListener<T> {
    private Handler mHandler = new Handler(Looper.getMainLooper());

    public abstract void onPostExecute(Future<T> future);

    public final void onFutureDone(final Future<T> future) {
        this.mHandler.post(new Runnable() {
            public void run() {
                FutureHandler.this.onPostExecute(future);
            }
        });
    }
}

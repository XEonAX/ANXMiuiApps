package com.android.internal;

import android.os.Handler;
import android.os.Looper;

public class CompatHandler extends Handler {
    public CompatHandler(Looper looper) {
        super(looper);
    }

    public boolean hasCallbacksCompat(Runnable runnable) {
        return super.hasCallbacks(runnable);
    }
}

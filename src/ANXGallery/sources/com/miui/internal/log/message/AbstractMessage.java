package com.miui.internal.log.message;

import android.util.Log;

public abstract class AbstractMessage implements Message {
    private static final String TAG = "AbstractMessage";
    private boolean hd;

    public abstract void format(Appendable appendable);

    public abstract Throwable getThrowable();

    protected abstract void onRecycle();

    public void recycle() {
        if (this.hd) {
            Log.w(TAG, "Recycle message twice");
            return;
        }
        onRecycle();
        this.hd = true;
        MessageFactory.a(this);
    }

    public boolean isRecycled() {
        return this.hd;
    }

    public void prepareForReuse() {
        this.hd = false;
    }
}

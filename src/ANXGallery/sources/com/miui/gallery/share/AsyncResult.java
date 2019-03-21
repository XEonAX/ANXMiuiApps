package com.miui.gallery.share;

public class AsyncResult<T> {
    public final T mData;
    public final int mError;

    private AsyncResult(int err, T data) {
        this.mError = err;
        this.mData = data;
    }

    public static <T> AsyncResult<T> create(int err) {
        return new AsyncResult(err, null);
    }

    public static <T> AsyncResult<T> create(int err, T data) {
        return new AsyncResult(err, data);
    }

    public String toString() {
        return String.format("[error code=%d, data=%s]", new Object[]{Integer.valueOf(this.mError), this.mData});
    }
}

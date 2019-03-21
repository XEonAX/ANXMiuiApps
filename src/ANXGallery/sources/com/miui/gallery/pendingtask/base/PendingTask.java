package com.miui.gallery.pendingtask.base;

public abstract class PendingTask<T> {
    private boolean isCancelled = false;
    private Callback mCallback;
    private int mType = -1;

    public interface Callback {
        boolean isCancelled();
    }

    public abstract int getNetworkType();

    public abstract T parseData(byte[] bArr) throws Exception;

    public abstract boolean process(T t) throws Exception;

    public abstract boolean requireCharging();

    public abstract boolean requireDeviceIdle();

    public abstract byte[] wrapData(T t) throws Exception;

    public PendingTask(int type) {
        this.mType = type;
    }

    public int getType() {
        return this.mType;
    }

    public long getMinLatency() {
        return 0;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    protected boolean isCancelled() {
        return this.isCancelled || (this.mCallback != null && this.mCallback.isCancelled());
    }
}

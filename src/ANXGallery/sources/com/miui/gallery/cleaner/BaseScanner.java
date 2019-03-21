package com.miui.gallery.cleaner;

public abstract class BaseScanner {
    private OnScanResultUpdateListener mListener;
    protected int mType;

    public interface OnScanResultUpdateListener {
        void onUpdate(int i, long j, ScanResult scanResult);
    }

    protected abstract void onReset();

    public abstract ScanResult scan();

    protected BaseScanner(int type) {
        this.mType = type;
    }

    protected final void updateScanResult(ScanResult scanResult) {
        updateScanResult(0, scanResult);
    }

    protected final void updateScanResult(long deletedId, ScanResult scanResult) {
        if (this.mListener != null) {
            this.mListener.onUpdate(this.mType, deletedId, scanResult);
        }
    }

    public final void setListener(OnScanResultUpdateListener listener) {
        this.mListener = listener;
    }

    public final void reset() {
        this.mListener = null;
        onReset();
    }

    public void onMediaItemDeleted(long id) {
    }
}

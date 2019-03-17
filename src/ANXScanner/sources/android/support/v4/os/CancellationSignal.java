package android.support.v4.os;

import android.os.Build.VERSION;

public final class CancellationSignal {
    private boolean mCancelInProgress;
    private Object mCancellationSignalObj;
    private boolean mIsCanceled;
    private OnCancelListener mOnCancelListener;

    public interface OnCancelListener {
        void onCancel();
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.mIsCanceled;
        }
        return z;
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    /* JADX WARNING: Missing block: B:7:0x0012, code:
            if (r0 == null) goto L_0x0017;
     */
    /* JADX WARNING: Missing block: B:9:?, code:
            r0.onCancel();
     */
    /* JADX WARNING: Missing block: B:10:0x0017, code:
            if (r1 == null) goto L_0x0024;
     */
    /* JADX WARNING: Missing block: B:12:0x001d, code:
            if (android.os.Build.VERSION.SDK_INT < 16) goto L_0x0024;
     */
    /* JADX WARNING: Missing block: B:13:0x001f, code:
            ((android.os.CancellationSignal) r1).cancel();
     */
    /* JADX WARNING: Missing block: B:14:0x0024, code:
            monitor-enter(r4);
     */
    /* JADX WARNING: Missing block: B:17:?, code:
            r4.mCancelInProgress = false;
            notifyAll();
     */
    /* JADX WARNING: Missing block: B:18:0x002b, code:
            monitor-exit(r4);
     */
    /* JADX WARNING: Missing block: B:27:0x0034, code:
            monitor-enter(r4);
     */
    /* JADX WARNING: Missing block: B:30:?, code:
            r4.mCancelInProgress = false;
            notifyAll();
     */
    /* JADX WARNING: Missing block: B:44:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void cancel() {
        synchronized (this) {
            if (this.mIsCanceled) {
                return;
            }
            this.mIsCanceled = true;
            this.mCancelInProgress = true;
            OnCancelListener listener = this.mOnCancelListener;
            Object obj = this.mCancellationSignalObj;
        }
    }

    /* JADX WARNING: Missing block: B:17:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setOnCancelListener(OnCancelListener listener) {
        synchronized (this) {
            waitForCancelFinishedLocked();
            if (this.mOnCancelListener == listener) {
                return;
            }
            this.mOnCancelListener = listener;
            if (!this.mIsCanceled || listener == null) {
            } else {
                listener.onCancel();
            }
        }
    }

    public Object getCancellationSignalObject() {
        if (VERSION.SDK_INT < 16) {
            return null;
        }
        Object obj;
        synchronized (this) {
            if (this.mCancellationSignalObj == null) {
                this.mCancellationSignalObj = new android.os.CancellationSignal();
                if (this.mIsCanceled) {
                    ((android.os.CancellationSignal) this.mCancellationSignalObj).cancel();
                }
            }
            obj = this.mCancellationSignalObj;
        }
        return obj;
    }

    private void waitForCancelFinishedLocked() {
        while (this.mCancelInProgress) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }
}

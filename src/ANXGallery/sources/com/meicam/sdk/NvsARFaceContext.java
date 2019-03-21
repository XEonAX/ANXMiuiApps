package com.meicam.sdk;

import android.os.Handler;
import android.os.Looper;

public class NvsARFaceContext {
    NvsARFaceContextCallback m_callback = null;
    NvsARFaceContextCallback m_callbackinternal = null;
    private long m_contextInterface;
    Handler mainHandler = new Handler(Looper.getMainLooper());

    public interface NvsARFaceContextCallback {
        void notifyFaceItemLoadingBegin(String str);

        void notifyFaceItemLoadingFinish();
    }

    protected class RunnableExt implements Runnable {
        NvsARFaceContextCallback mCallback = null;
        public String mItemPath;

        RunnableExt(String str, NvsARFaceContextCallback nvsARFaceContextCallback) {
            this.mItemPath = str;
            this.mCallback = nvsARFaceContextCallback;
        }

        public void run() {
            if (this.mCallback != null) {
                this.mCallback.notifyFaceItemLoadingBegin(this.mItemPath);
            }
        }
    }

    private native void nativeCleanup(long j);

    private native boolean nativeIsFaceTracking(long j);

    private native void nativeSetARFaceCallback(long j, NvsARFaceContextCallback nvsARFaceContextCallback);

    private native void nativeSetDualBufferInputUsed(long j, boolean z);

    public boolean isFaceTracking() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsFaceTracking(this.m_contextInterface);
    }

    public void setContextCallback(NvsARFaceContextCallback nvsARFaceContextCallback) {
        this.m_callback = nvsARFaceContextCallback;
        if (this.m_callback != null) {
            this.m_callbackinternal = new NvsARFaceContextCallback() {
                public void notifyFaceItemLoadingBegin(String str) {
                    NvsARFaceContext.this.mainHandler.post(new RunnableExt(str, NvsARFaceContext.this.m_callback));
                }

                public void notifyFaceItemLoadingFinish() {
                    NvsARFaceContext.this.mainHandler.post(new Runnable() {
                        public void run() {
                            if (NvsARFaceContext.this.m_callback != null) {
                                NvsARFaceContext.this.m_callback.notifyFaceItemLoadingFinish();
                            }
                        }
                    });
                }
            };
        } else {
            this.m_callbackinternal = null;
        }
        nativeSetARFaceCallback(this.m_contextInterface, this.m_callbackinternal);
    }

    public void setDualBufferInputUsed(boolean z) {
        nativeSetDualBufferInputUsed(this.m_contextInterface, z);
    }

    protected void setContextInterface(long j) {
        this.m_contextInterface = j;
    }

    protected void finalize() throws Throwable {
        if (this.m_contextInterface != 0) {
            nativeCleanup(this.m_contextInterface);
            this.m_contextInterface = 0;
        }
        super.finalize();
    }
}

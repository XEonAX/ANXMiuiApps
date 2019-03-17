package com.android.ex.camera2.portability;

import android.os.Handler;

public class CameraExceptionHandler {
    private CameraExceptionCallback mCallback = new CameraExceptionCallback() {
        public void onCameraError(int errorCode) {
        }

        public void onCameraException(RuntimeException e, String commandHistory, int action, int state) {
            throw e;
        }

        public void onDispatchThreadException(RuntimeException e) {
            throw e;
        }
    };
    private Handler mHandler;

    public interface CameraExceptionCallback {
        void onCameraError(int i);

        void onCameraException(RuntimeException runtimeException, String str, int i, int i2);

        void onDispatchThreadException(RuntimeException runtimeException);
    }

    public CameraExceptionHandler(CameraExceptionCallback callback, Handler handler) {
        this.mHandler = handler;
        this.mCallback = callback;
    }

    public CameraExceptionHandler(Handler handler) {
        this.mHandler = handler;
    }

    public void onCameraError(final int errorCode) {
        this.mHandler.post(new Runnable() {
            public void run() {
                CameraExceptionHandler.this.mCallback.onCameraError(errorCode);
            }
        });
    }

    public void onCameraException(RuntimeException ex, String commandHistory, int action, int state) {
        final RuntimeException runtimeException = ex;
        final String str = commandHistory;
        final int i = action;
        final int i2 = state;
        this.mHandler.post(new Runnable() {
            public void run() {
                CameraExceptionHandler.this.mCallback.onCameraException(runtimeException, str, i, i2);
            }
        });
    }

    public void onDispatchThreadException(final RuntimeException ex) {
        this.mHandler.post(new Runnable() {
            public void run() {
                CameraExceptionHandler.this.mCallback.onDispatchThreadException(ex);
            }
        });
    }
}

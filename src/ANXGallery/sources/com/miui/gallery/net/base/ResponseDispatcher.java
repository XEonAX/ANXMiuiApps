package com.miui.gallery.net.base;

import android.os.Handler;
import android.os.Looper;

public class ResponseDispatcher {
    private Handler mHandler = null;
    private ResponseListener mOnResponseListener;

    public ResponseDispatcher(ResponseListener listener) {
        this.mOnResponseListener = listener;
        this.mHandler = new Handler(Looper.getMainLooper());
    }

    public void onResponse(final Object... response) {
        if (this.mOnResponseListener == null) {
            return;
        }
        if (this.mOnResponseListener instanceof ResponseHandler) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    try {
                        ResponseDispatcher.this.mOnResponseListener.onResponse(response);
                    } catch (Exception e) {
                        ResponseDispatcher.this.onResponseError(ErrorCode.DATA_BIND_ERROR, null, null);
                    }
                }
            });
            return;
        }
        try {
            this.mOnResponseListener.onResponse(response);
        } catch (Exception e) {
            onResponseError(ErrorCode.DATA_BIND_ERROR, null, null);
        }
    }

    public void onResponseError(final ErrorCode errorCode, final String errorMessage, final Object respnoseData) {
        if (this.mOnResponseListener == null) {
            return;
        }
        if (this.mOnResponseListener instanceof ResponseHandler) {
            this.mHandler.post(new Runnable() {
                public void run() {
                    ResponseDispatcher.this.mOnResponseListener.onResponseError(errorCode, errorMessage, respnoseData);
                }
            });
        } else {
            this.mOnResponseListener.onResponseError(errorCode, errorMessage, respnoseData);
        }
    }
}

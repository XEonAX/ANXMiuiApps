package com.miui.gallery.net.base;

import com.android.volley.VolleyError;

public class RequestError extends VolleyError {
    private ErrorCode mErrorCode;
    private Object mResponseData;

    public RequestError(ErrorCode errorCode, String message, Object responseData) {
        super(message);
        this.mErrorCode = errorCode;
        this.mResponseData = responseData;
    }

    public ErrorCode getErrorCode() {
        return this.mErrorCode;
    }

    public Object getResponseData() {
        return this.mResponseData;
    }

    public Throwable getCause() {
        if (this.mResponseData instanceof Throwable) {
            return (Throwable) this.mResponseData;
        }
        return super.getCause();
    }

    public String toString() {
        return super.toString() + " code : " + this.mErrorCode;
    }
}

package com.miui.gallery.search.core.result;

public class ErrorInfo {
    private Object mErrorData;
    private int mErrorStatus;

    public ErrorInfo(int errorStatus) {
        this(errorStatus, null);
    }

    public ErrorInfo(int errorStatus, Object errorData) {
        this.mErrorStatus = -1;
        this.mErrorStatus = errorStatus;
        this.mErrorData = errorData;
    }

    public int getErrorStatus() {
        return this.mErrorStatus;
    }

    public String toString() {
        return super.toString() + " code : " + this.mErrorStatus + ", message : " + this.mErrorData;
    }
}

package com.miui.gallery.sdk.download.assist;

import android.util.Log;
import com.miui.gallery.error.core.ErrorCode;

public class DownloadFailReason {
    private final Throwable mCause;
    private final ErrorCode mCode;
    private final String mDesc;

    public DownloadFailReason(ErrorCode code, String desc, Throwable cause) {
        this.mCode = code;
        this.mDesc = desc;
        this.mCause = cause;
    }

    public ErrorCode getCode() {
        return this.mCode;
    }

    public String getDesc() {
        return this.mDesc;
    }

    public Throwable getCause() {
        return this.mCause;
    }

    public String toString() {
        return "code: " + this.mCode + " desc: " + this.mDesc + " cause: " + Log.getStackTraceString(this.mCause);
    }
}

package com.miui.gallery.error.core;

import android.content.Context;

public abstract class ErrorTip {
    protected final ErrorCode mCode;

    public abstract void action(Context context, ErrorActionCallback errorActionCallback);

    public abstract CharSequence getActionStr(Context context);

    public abstract CharSequence getMessage(Context context);

    public abstract CharSequence getTitle(Context context);

    public ErrorTip(ErrorCode mCode) {
        this.mCode = mCode;
    }

    public ErrorCode getCode() {
        return this.mCode;
    }
}

package com.xiaomi.opensdk.exception;

import android.text.TextUtils;

public class AuthenticationException extends Exception {
    private static final long serialVersionUID = 1;

    public String toString() {
        if (TextUtils.isEmpty(getMessage())) {
            return getClass().getSimpleName() + ": 鉴权失败";
        }
        return getClass().getSimpleName() + ": 鉴权失败, " + getMessage();
    }
}

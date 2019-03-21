package com.miui.gallery.net.base;

public interface ResponseErrorHandler {
    void onRequestError(ErrorCode errorCode, String str, Object obj);
}

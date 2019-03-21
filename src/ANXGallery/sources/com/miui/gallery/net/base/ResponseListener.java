package com.miui.gallery.net.base;

public interface ResponseListener {
    void onResponse(Object... objArr);

    void onResponseError(ErrorCode errorCode, String str, Object obj);
}

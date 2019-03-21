package com.miui.gallery.error.core;

import android.content.Context;

public interface ErrorCodeTranslator {
    void translate(Context context, ErrorCode errorCode, ErrorTranslateCallback errorTranslateCallback);
}

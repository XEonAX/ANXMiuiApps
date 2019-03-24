package com.miui.internal.variable;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;

public class VariableExceptionHandler {
    private static final String TAG = "ExceptionHandler";

    private static class Holder {
        static final VariableExceptionHandler lc = new VariableExceptionHandler();

        private Holder() {
        }
    }

    public static VariableExceptionHandler getInstance() {
        return Holder.lc;
    }

    public void onThrow(String str, Throwable th) {
        StringBuilder stringBuilder;
        if (th instanceof InvocationTargetException) {
            th = th.getCause();
        }
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("Something thrown - ");
        stringBuilder2.append(str);
        Log.e(str2, stringBuilder2.toString(), th);
        if (str == null || str.length() == 0) {
            str = "Something thrown when using version/device dependent code";
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Something thrown when using version/device dependent code - ");
            stringBuilder.append(str);
            str = stringBuilder.toString();
        }
        stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" - ");
        stringBuilder.append(th.getMessage());
        throw new RuntimeException(stringBuilder.toString(), th);
    }
}

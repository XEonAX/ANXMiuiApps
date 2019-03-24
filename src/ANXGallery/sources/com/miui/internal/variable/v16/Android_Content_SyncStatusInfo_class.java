package com.miui.internal.variable.v16;

import com.miui.internal.variable.VariableExceptionHandler;
import miui.reflect.Field;
import miui.reflect.Method;

public class Android_Content_SyncStatusInfo_class extends com.miui.internal.variable.Android_Content_SyncStatusInfo_class {
    private static final Class<?> lo;
    private static final Field lp = Field.of(lo, "pending", Field.BOOLEAN_SIGNATURE_PRIMITIVE);
    private static final Field lq = Field.of(lo, "initialize", Field.BOOLEAN_SIGNATURE_PRIMITIVE);
    private static final Field lr = Field.of(lo, "lastSuccessTime", Field.LONG_SIGNATURE_PRIMITIVE);
    private static final Field ls = Field.of(lo, "lastFailureTime", Field.LONG_SIGNATURE_PRIMITIVE);
    private static final Method lt = Method.of(lo, "getLastFailureMesgAsInt", "(I)I");

    static {
        Class cls;
        try {
            cls = Class.forName(com.miui.internal.variable.Android_Content_SyncStatusInfo_class.NAME);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow(com.miui.internal.variable.Android_Content_SyncStatusInfo_class.NAME, e);
            cls = null;
        }
        lo = cls;
    }

    public boolean getPending(Object obj) {
        try {
            return lp.getBoolean(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.pending", e);
            return false;
        }
    }

    public boolean getInitialize(Object obj) {
        try {
            return lq.getBoolean(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.initialize", e);
            return false;
        }
    }

    public long getLastSuccessTime(Object obj) {
        try {
            return lr.getLong(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.lastSuccessTime", e);
            return 0;
        }
    }

    public long getLastFailureTime(Object obj) {
        try {
            return ls.getLong(obj);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.lastFailureTime", e);
            return 0;
        }
    }

    public int getLastFailureMesgAsInt(Object obj, int i) {
        try {
            return lt.invokeInt(null, obj, Integer.valueOf(i));
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("android.content.SyncStatusInfo.getLastFailureMesgAsInt", e);
            return i;
        }
    }
}

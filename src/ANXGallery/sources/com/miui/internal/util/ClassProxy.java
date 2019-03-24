package com.miui.internal.util;

import miui.reflect.ReflectUtils;

public abstract class ClassProxy<T> {
    private final Object jm = new Object() {
        protected void finalize() throws Throwable {
            try {
                ClassProxy.this.disposeNative();
            } finally {
                super.finalize();
            }
        }
    };
    private long[] jn = null;
    private long mPtr = 0;

    private native long attachMethodNative(String str, String str2);

    private native void detachMethodNative(long j);

    private native void disposeNative();

    public static native String getProcName();

    private native void initNative(Class<? extends T> cls);

    public static native void setDebugModules(String[] strArr);

    public static native boolean setupClassHook(int i, String str);

    public static native boolean setupInterpreterHook();

    public static native void setupResourceHook();

    protected abstract void handle();

    static {
        System.loadLibrary("miuiclassproxy");
    }

    public ClassProxy(Class<? extends T> cls) {
        initNative(cls);
    }

    private void c(long j) {
        if (this.jn == null) {
            this.jn = new long[4];
            this.jn[0] = j;
            return;
        }
        int i = 0;
        while (i < this.jn.length) {
            if (this.jn[i] == 0 || this.jn[i] == j) {
                break;
            }
            i++;
        }
        i = -1;
        if (i == -1) {
            Object obj = new long[(this.jn.length + 4)];
            System.arraycopy(this.jn, 0, obj, 0, this.jn.length);
            int length = this.jn.length;
            this.jn = obj;
            i = length;
        }
        this.jn[i] = j;
    }

    private boolean a(long j, boolean z) {
        int i = 0;
        while (i < this.jn.length) {
            if (this.jn[i] == j) {
                break;
            }
            i++;
        }
        i = -1;
        if (i < 0) {
            return false;
        }
        if (z) {
            this.jn[i] = 0;
        }
        return true;
    }

    protected final long attachMethod(String str, String str2) {
        long attachMethodNative;
        synchronized (this.jm) {
            attachMethodNative = attachMethodNative(str, str2);
            c(attachMethodNative);
        }
        return attachMethodNative;
    }

    protected final long attachConstructor(String str) {
        return attachMethod(ReflectUtils.OBJECT_CONSTRUCTOR, str);
    }

    protected final void detachMethod(long j) {
        synchronized (this.jm) {
            if (a(j, true)) {
                detachMethodNative(j);
            }
        }
    }

    protected final void dispose() {
        disposeNative();
    }
}

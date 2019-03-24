package com.miui.internal.variable;

import android.os.Build.VERSION;
import java.util.Locale;

public abstract class AbsClassFactory {
    protected static final int CURRENT_SUPPORT_SDK_VERSION = VERSION.SDK_INT;
    protected static final int MIN_SUPPORT_SDK_VERSION = 16;

    public abstract Object get();

    protected Object create(String str) {
        int i = CURRENT_SUPPORT_SDK_VERSION;
        while (i >= 16) {
            String format = String.format(Locale.US, "com.miui.internal.variable.v%d.%s", new Object[]{Integer.valueOf(i), str});
            try {
                return Class.forName(format).newInstance();
            } catch (ClassNotFoundException e) {
            } catch (Throwable e2) {
                VariableExceptionHandler.getInstance().onThrow(format, e2);
            }
        }
        VariableExceptionHandler instance = VariableExceptionHandler.getInstance();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Cannot found class ");
        stringBuilder.append(str);
        instance.onThrow(str, new ClassNotFoundException(stringBuilder.toString()));
        return null;
        i--;
    }
}

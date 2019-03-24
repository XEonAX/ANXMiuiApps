package com.miui.internal.variable;

import android.os.Build.VERSION;
import com.miui.internal.util.ClassProxy;

public abstract class Internal_Policy_Impl_PhoneWindow_class extends ClassProxy<Object> implements IManagedClassProxy {
    protected static final Class<? extends Object> TARGET_CLASS = aG();
    private static final String kZ;

    public static class Factory extends AbsClassFactory {
        private Internal_Policy_Impl_PhoneWindow_class la;

        private static class Holder {
            static final Factory lb = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.la = (Internal_Policy_Impl_PhoneWindow_class) create("Internal_Policy_Impl_PhoneWindow_class");
        }

        public static Factory getInstance() {
            return Holder.lb;
        }

        public Internal_Policy_Impl_PhoneWindow_class get() {
            return this.la;
        }
    }

    static {
        String str;
        if (VERSION.SDK_INT >= 23) {
            str = "com.android.internal.policy.PhoneWindow";
        } else {
            str = "com.android.internal.policy.impl.PhoneWindow";
        }
        kZ = str;
    }

    private static Class<? extends Object> aG() {
        try {
            return Class.forName(kZ);
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("com.android.internal.policy.impl.PhoneWindow", e);
            return null;
        }
    }

    public Internal_Policy_Impl_PhoneWindow_class() {
        super(TARGET_CLASS);
    }
}

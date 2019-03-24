package com.miui.internal.variable;

import android.widget.PopupWindow;
import com.miui.internal.util.ClassProxy;
import miui.reflect.Method;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Widget_PopupWindow_class extends ClassProxy<PopupWindow> implements IManagedClassProxy {
    protected static Method setLayoutInScreenEnabled;
    protected static Method setLayoutInsetDecor;

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aD */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_PopupWindow_class kW;

        private Factory() {
            this.kW = (Android_Widget_PopupWindow_class) create("Android_Widget_PopupWindow_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_PopupWindow_class get() {
            return this.kW;
        }
    }

    public abstract void setLayoutInScreenEnabled(PopupWindow popupWindow, boolean z);

    public abstract void setLayoutInsetDecor(PopupWindow popupWindow, boolean z);

    public void buildProxy() {
    }

    static {
        try {
            setLayoutInScreenEnabled = Method.of(PopupWindow.class, "setLayoutInScreenEnabled", "(Z)V");
            setLayoutInsetDecor = Method.of(PopupWindow.class, "setLayoutInsetDecor", "(Z)V");
        } catch (Throwable e) {
            VariableExceptionHandler.getInstance().onThrow("no such method", e);
        }
    }

    public Android_Widget_PopupWindow_class() {
        super(PopupWindow.class);
    }
}

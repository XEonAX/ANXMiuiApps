package com.miui.internal.variable;

import android.widget.Spinner;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;
import miui.widget.ArrowPopupWindow;

public abstract class Android_Widget_Spinner_class extends ClassProxy<Spinner> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aF */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_Spinner_class kY;

        private Factory() {
            this.kY = (Android_Widget_Spinner_class) create("Android_Widget_Spinner_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_Spinner_class get() {
            return this.kY;
        }
    }

    protected abstract ArrowPopupWindow getArrowPopupWindow(Spinner spinner);

    public Android_Widget_Spinner_class() {
        super(Spinner.class);
    }

    public void buildProxy() {
        attachMethod("setPrompt", "(Ljava/lang/CharSequence;)V");
    }

    protected void handle() {
        handleSetPrompt(0, null, null);
    }

    protected void handleSetPrompt(long j, Spinner spinner, CharSequence charSequence) {
        ArrowPopupWindow arrowPopupWindow = getArrowPopupWindow(spinner);
        if (arrowPopupWindow != null) {
            arrowPopupWindow.setTitle(charSequence);
        } else {
            originalSetPrompt(j, spinner, charSequence);
        }
    }

    protected void originalSetPrompt(long j, Spinner spinner, CharSequence charSequence) {
        throw new IllegalStateException("com.miui.internal.variable.Android_Widget_Spinner_class.originalSetPrompt(long, Spinner, CharSequence)");
    }
}

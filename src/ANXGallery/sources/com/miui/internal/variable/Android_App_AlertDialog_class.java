package com.miui.internal.variable;

import android.app.AlertDialog;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_App_AlertDialog_class extends ClassProxy<AlertDialog> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aj */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_App_AlertDialog_class ki;

        private Factory() {
            this.ki = (Android_App_AlertDialog_class) create("Android_App_AlertDialog_class");
            com.miui.internal.variable.Android_App_AlertDialog_Builder_class.Factory.getInstance().getClass();
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_App_AlertDialog_class get() {
            return this.ki;
        }
    }

    public Android_App_AlertDialog_class() {
        super(AlertDialog.class);
    }
}

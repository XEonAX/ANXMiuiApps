package com.miui.internal.variable;

import android.widget.AbsSpinner;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Widget_AbsSpinner_class extends ClassProxy<AbsSpinner> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: az */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_AbsSpinner_class kS;

        private Factory() {
            this.kS = (Android_Widget_AbsSpinner_class) create("Android_Widget_AbsSpinner_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_AbsSpinner_class get() {
            return this.kS;
        }
    }

    public Android_Widget_AbsSpinner_class() {
        super(AbsSpinner.class);
    }
}

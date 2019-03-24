package com.miui.internal.variable;

import android.widget.ListView;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Widget_ListView_class extends ClassProxy<ListView> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aC */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_ListView_class kV;

        private Factory() {
            this.kV = (Android_Widget_ListView_class) create("Android_Widget_ListView_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_ListView_class get() {
            return this.kV;
        }
    }

    public Android_Widget_ListView_class() {
        super(ListView.class);
    }
}

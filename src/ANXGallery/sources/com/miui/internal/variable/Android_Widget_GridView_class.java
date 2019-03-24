package com.miui.internal.variable;

import android.widget.GridView;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Widget_GridView_class extends ClassProxy<GridView> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aA */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_GridView_class kT;

        private Factory() {
            this.kT = (Android_Widget_GridView_class) create("Android_Widget_GridView_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_GridView_class get() {
            return this.kT;
        }
    }

    public Android_Widget_GridView_class() {
        super(GridView.class);
    }
}

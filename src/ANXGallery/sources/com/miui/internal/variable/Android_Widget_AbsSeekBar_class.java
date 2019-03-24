package com.miui.internal.variable;

import android.widget.AbsSeekBar;
import com.miui.internal.util.ClassProxy;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Widget_AbsSeekBar_class extends ClassProxy<AbsSeekBar> implements IManagedClassProxy {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ay */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Widget_AbsSeekBar_class kR;

        private Factory() {
            this.kR = (Android_Widget_AbsSeekBar_class) create("Android_Widget_AbsSeekBar_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Widget_AbsSeekBar_class get() {
            return this.kR;
        }
    }

    public Android_Widget_AbsSeekBar_class() {
        super(AbsSeekBar.class);
    }
}

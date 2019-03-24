package com.miui.internal.variable;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Graphics_Drawable_StateListDrawable_class extends Android_Graphics_Drawable_Drawable_class {

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: aq */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Graphics_Drawable_StateListDrawable_class kw;

        private Factory() {
            this.kw = (Android_Graphics_Drawable_StateListDrawable_class) create("Android_Graphics_Drawable_StateListDrawable_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Graphics_Drawable_StateListDrawable_class get() {
            return this.kw;
        }
    }

    public abstract int getStateCount(StateListDrawable stateListDrawable);

    public abstract Drawable getStateDrawable(StateListDrawable stateListDrawable, int i);

    public abstract int[] getStateSet(StateListDrawable stateListDrawable, int i);
}

package com.miui.internal.variable;

import android.graphics.drawable.Drawable;
import miui.util.SoftReferenceSingleton;

public abstract class Android_Graphics_Drawable_AnimatedRotateDrawable_class extends Android_Graphics_Drawable_Drawable_class {
    public static final String NAME = "android.graphics.drawable.AnimatedRotateDrawable";

    public static class Factory extends AbsClassFactory {
        private static final SoftReferenceSingleton<Factory> s = new SoftReferenceSingleton<Factory>() {
            /* renamed from: ap */
            protected Factory createInstance() {
                return new Factory();
            }
        };
        private Android_Graphics_Drawable_AnimatedRotateDrawable_class ks;

        private Factory() {
            this.ks = (Android_Graphics_Drawable_AnimatedRotateDrawable_class) create("Android_Graphics_Drawable_AnimatedRotateDrawable_class");
        }

        public static Factory getInstance() {
            return (Factory) s.get();
        }

        public Android_Graphics_Drawable_AnimatedRotateDrawable_class get() {
            return this.ks;
        }
    }

    public abstract void setFramesCount(Drawable drawable, int i);

    public abstract void setFramesDuration(Drawable drawable, int i);

    public abstract void start(Drawable drawable);

    public abstract void stop(Drawable drawable);
}

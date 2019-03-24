package com.miui.internal.variable;

import android.graphics.drawable.Drawable;
import com.miui.internal.util.async.ConcurrentWeakHashMap;

public abstract class Android_Graphics_Drawable_Drawable_class {
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    private static final ConcurrentWeakHashMap<Drawable, Integer> kt = new ConcurrentWeakHashMap();

    public static class Factory extends AbsClassFactory {
        private Android_Graphics_Drawable_Drawable_class ku;

        private static class Holder {
            static final Factory kv = new Factory();

            private Holder() {
            }
        }

        private Factory() {
            this.ku = (Android_Graphics_Drawable_Drawable_class) create("Android_Graphics_Drawable_Drawable_class");
        }

        public static Factory getInstance() {
            return Holder.kv;
        }

        public Android_Graphics_Drawable_Drawable_class get() {
            return this.ku;
        }
    }

    public abstract int getLayoutDirection(Drawable drawable);

    public int getId(Drawable drawable) {
        Integer num = (Integer) kt.get(drawable);
        return num == null ? 0 : num.intValue();
    }

    public void setId(Drawable drawable, int i) {
        kt.put(drawable, Integer.valueOf(i));
    }
}

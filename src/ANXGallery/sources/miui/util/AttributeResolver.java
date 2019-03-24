package miui.util;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import java.lang.ref.WeakReference;
import miui.R;

public class AttributeResolver {
    private static final TypedValue Hs = new TypedValue();
    private static final ThreadLocal<TypedValue> Ht = new ThreadLocal();
    private static ResultCache Hu;

    private static class ResultCache {
        public final WeakReference<Context> Hv;
        public final boolean Hw;

        public ResultCache(Context context, boolean z) {
            this.Hv = new WeakReference(context);
            this.Hw = z;
        }
    }

    protected AttributeResolver() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    private static TypedValue q(Context context) {
        if (context.getMainLooper().getThread() == Thread.currentThread()) {
            return Hs;
        }
        TypedValue typedValue = (TypedValue) Ht.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            Ht.set(typedValue);
        }
        return typedValue;
    }

    public static int resolve(Context context, int i) {
        TypedValue q = q(context);
        if (context.getTheme().resolveAttribute(i, q, true)) {
            return q.resourceId;
        }
        return -1;
    }

    public static Drawable resolveDrawable(Context context, int i) {
        TypedValue q = q(context);
        if (context.getTheme().resolveAttribute(i, q, true)) {
            if (q.resourceId > 0) {
                return context.getResources().getDrawable(q.resourceId, context.getTheme());
            }
            if (q.type >= 28 && q.type <= 31) {
                return new ColorDrawable(q.data);
            }
        }
        return null;
    }

    public static int resolveColor(Context context, int i) {
        TypedValue q = q(context);
        if (context.getTheme().resolveAttribute(i, q, true)) {
            if (q.resourceId > 0) {
                return context.getResources().getColor(q.resourceId);
            }
            if (q.type >= 28 && q.type <= 31) {
                return q.data;
            }
        }
        return context.getResources().getColor(-1);
    }

    public static boolean resolveBoolean(Context context, int i, boolean z) {
        TypedValue q = q(context);
        if (context.getTheme().resolveAttribute(i, q, true)) {
            return q.type == 18 && q.data != 0;
        } else {
            return z;
        }
    }

    public static float resolveDimension(Context context, int i) {
        return context.getResources().getDimension(resolve(context, i));
    }

    public static int resolveDimensionPixelSize(Context context, int i) {
        return context.getResources().getDimensionPixelSize(resolve(context, i));
    }

    public static int resolveInt(Context context, int i, int i2) {
        TypedValue q = q(context);
        if (context.getTheme().resolveAttribute(i, q, true) && q.type == 16) {
            return q.data;
        }
        return i2;
    }

    public static boolean isUsingMiuiTheme(Context context) {
        ResultCache resultCache = Hu;
        if (resultCache != null && resultCache.Hv.get() == context) {
            return resultCache.Hw;
        }
        boolean z = false;
        if (!(context.getTheme() == null || resolveInt(context, R.attr.miui_version, 0) == 0)) {
            int resolve = resolve(context, 16842845);
            if (resolve > 0) {
                Theme newTheme = context.getResources().newTheme();
                newTheme.applyStyle(resolve, true);
                TypedArray obtainStyledAttributes = newTheme.obtainStyledAttributes(com.miui.internal.R.styleable.AlertDialog);
                if (obtainStyledAttributes.getResourceId(com.miui.internal.R.styleable.AlertDialog_layout, -1) != -1) {
                    z = true;
                }
                obtainStyledAttributes.recycle();
                Hu = new ResultCache(context, z);
                return z;
            }
        }
        Hu = new ResultCache(context, false);
        return false;
    }
}

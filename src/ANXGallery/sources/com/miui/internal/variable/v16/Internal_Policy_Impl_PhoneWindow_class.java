package com.miui.internal.variable.v16;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.app.ActivityDelegate;
import com.miui.internal.util.DeviceHelper;
import java.lang.reflect.Field;
import miui.content.res.ThemeResources;
import miui.os.C0001Environment;
import miui.util.AttributeResolver;
import miui.util.DrawableUtil;

public class Internal_Policy_Impl_PhoneWindow_class extends com.miui.internal.variable.Internal_Policy_Impl_PhoneWindow_class {
    private static final Field mb = a(TARGET_CLASS, "mLayoutInflater");

    private static class LayoutInflaterWrapper extends LayoutInflater {
        private static final miui.reflect.Field me = miui.reflect.Field.of(LayoutInflater.class, "mContext", "Landroid/content/Context;");
        private static final Field mf = Internal_Policy_Impl_PhoneWindow_class.a(Internal_Policy_Impl_PhoneWindow_class.TARGET_CLASS, "mTitle");
        private LayoutInflater mc;
        private Window md;

        private LayoutInflaterWrapper(LayoutInflater layoutInflater, Window window) {
            super((Context) me.get(layoutInflater));
            this.mc = layoutInflater;
            this.md = window;
        }

        public LayoutInflater cloneInContext(Context context) {
            return new LayoutInflaterWrapper(this.mc.cloneInContext(context), this.md);
        }

        public View inflate(int i, ViewGroup viewGroup, boolean z) {
            i = ActivityDelegate.getDecorViewLayoutRes(this.md);
            View inflate = this.mc.inflate(i, viewGroup, z);
            if (i == R.layout.screen_action_bar || i == R.layout.screen_action_bar_movable || i == R.layout.screen_simple) {
                return inflate;
            }
            Context context = this.md.getContext();
            a(context, inflate);
            if (i == R.layout.starting_window_simple) {
                b(context, inflate);
            }
            return inflate;
        }

        private void a(Context context, View view) {
            view = view.findViewById(miui.R.id.status_bar);
            if (view != null) {
                LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.height = l(context);
                view.setLayoutParams(layoutParams);
            }
        }

        private int l(Context context) {
            int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", ThemeResources.FRAMEWORK_PACKAGE);
            if (identifier > 0) {
                return context.getResources().getDimensionPixelSize(identifier);
            }
            return context.getResources().getDimensionPixelSize(R.dimen.status_bar_height);
        }

        private void b(Context context, View view) {
            int i = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, miui.R.styleable.ActionBar, 16843470, 0);
            int resourceId = obtainStyledAttributes.getResourceId(miui.R.styleable.ActionBar_android_titleTextStyle, 0);
            boolean z = obtainStyledAttributes.getBoolean(R.styleable.ActionBar_titleCenter, false);
            int i2 = obtainStyledAttributes.getInt(miui.R.styleable.ActionBar_android_displayOptions, 0);
            obtainStyledAttributes.recycle();
            View findViewById = view.findViewById(R.id.action_bar);
            if (DrawableUtil.isPlaceholder(findViewById.getBackground())) {
                findViewById.setBackground(new ColorDrawable(AttributeResolver.resolveColor(context, miui.R.attr.colorPrimary)));
            }
            view = view.findViewById(R.id.title_layout);
            TextView textView = (TextView) view.findViewById(R.id.action_bar_title);
            ImageView imageView = (ImageView) findViewById.findViewById(R.id.up);
            if ((i2 & 8) == 0) {
                view.setVisibility(4);
                imageView.setVisibility(4);
                return;
            }
            CharSequence charSequence;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            if (z && (i2 & 2) == 0) {
                view.setPadding(0, view.getPaddingTop(), 0, view.getPaddingBottom());
                layoutParams.gravity = 17;
                layoutParams.setMarginStart(0);
            } else {
                layoutParams.setMarginStart(imageView.getMeasuredWidth());
            }
            view.setLayoutParams(layoutParams);
            if ((i2 & 4) == 0) {
                i = 8;
            }
            imageView.setVisibility(i);
            if (resourceId != 0) {
                textView.setTextAppearance(context, resourceId);
            }
            try {
                charSequence = (CharSequence) mf.get(this.md);
            } catch (IllegalAccessException e) {
                charSequence = null;
            }
            if (charSequence != null) {
                textView.setText(charSequence);
            }
        }
    }

    private static Field a(Class<? extends Object> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return null;
        }
    }

    private LayoutInflaterWrapper a(Window window) {
        try {
            LayoutInflaterWrapper layoutInflaterWrapper = new LayoutInflaterWrapper((LayoutInflater) mb.get(window), window);
            mb.set(window, layoutInflaterWrapper);
            return layoutInflaterWrapper;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void a(Window window, LayoutInflaterWrapper layoutInflaterWrapper) {
        try {
            mb.set(window, layoutInflaterWrapper.mc);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void buildProxy() {
        attachMethod("installDecor", "()V");
    }

    protected void handle() {
        handleInstallDecor(0, null);
    }

    protected void originalInstallDecor(long j, Object obj) {
        throw new IllegalStateException("com.miui.internal.variable.v16.Internal_Policy_Impl_PhoneWindow_class.originalInstallDecor(long, Object)");
    }

    protected void handleInstallDecor(long j, Object obj) {
        Window window = (Window) obj;
        if (C0001Environment.isUsingMiui(window.getContext())) {
            LayoutInflaterWrapper a = a(window);
            originalInstallDecor(j, obj);
            a(window, a);
            if (DeviceHelper.IS_OLED) {
                window.getAttributes().dimAmount = ((float) AttributeResolver.resolveInt(window.getContext(), R.attr.backgroundDim, 20)) / 100.0f;
                return;
            }
            return;
        }
        originalInstallDecor(j, obj);
    }
}

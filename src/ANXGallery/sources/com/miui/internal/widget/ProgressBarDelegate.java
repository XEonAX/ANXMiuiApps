package com.miui.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import android.widget.ProgressBar;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class;
import com.miui.internal.variable.Android_Graphics_Drawable_AnimatedRotateDrawable_class.Factory;
import com.miui.internal.variable.Android_Graphics_Drawable_StateListDrawable_class;
import miui.R;
import miui.reflect.Method;
import miui.util.ViewUtils;

public class ProgressBarDelegate {
    static final String TAG = "ProgressBarDelegate";
    private static final Method uR = Method.of(ProgressBar.class, "setIndeterminate", "(Z)V");
    private static final Method uS = Method.of(ProgressBar.class, "setIndeterminateDrawable", "(Landroid/graphics/drawable/Drawable;)V");
    private static final Method uT = Method.of(ProgressBar.class, "setProgressDrawable", "(Landroid/graphics/drawable/Drawable;)V");
    private static final Method uU = Method.of(ProgressBar.class, "onSizeChanged", "(IIII)V");
    private static Method uV = null;
    private static Method uW = null;
    private static final Android_Graphics_Drawable_AnimatedRotateDrawable_class uX = Factory.getInstance().get();
    private static final Android_Graphics_Drawable_StateListDrawable_class uY = Android_Graphics_Drawable_StateListDrawable_class.Factory.getInstance().get();
    private static final int uZ = 10000;
    private boolean cY = false;
    private final ProgressBar va;
    private final Class<? extends ProgressBar> vb;
    private Drawable vc;
    private Drawable vd;
    private boolean ve;
    private Drawable vf;
    private boolean vg;
    private float vh;

    static {
        if (VERSION.SDK_INT >= 23) {
            try {
                uV = Method.of(LayerDrawable.class, "getLayerGravity", "(I)I");
                uW = Method.of(LayerDrawable.class, "setLayerGravity", "(II)V");
            } catch (Throwable e) {
                Log.e(TAG, "Fail to find method in LayerDrawable class", e);
            }
        }
    }

    private ProgressBarDelegate(ProgressBar progressBar, Class<? extends ProgressBar> cls) {
        this.va = progressBar;
        this.vb = cls;
    }

    public void postConstruct(AttributeSet attributeSet, int i) {
        Context context = this.va.getContext();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ProgressBar, i, 0);
        Drawable drawable = this.vf;
        if (drawable != null && drawable.getClass().getName().equals(Android_Graphics_Drawable_AnimatedRotateDrawable_class.NAME)) {
            uX.setFramesCount(drawable, obtainStyledAttributes.getInt(com.miui.internal.R.styleable.ProgressBar_indeterminateFramesCount, 48));
            uX.setFramesDuration(drawable, obtainStyledAttributes.getInt(com.miui.internal.R.styleable.ProgressBar_indeterminateFramesDuration, 25));
        }
        this.cY = true;
        Drawable drawable2 = obtainStyledAttributes.getDrawable(com.miui.internal.R.styleable.ProgressBar_progressMask);
        if (drawable2 != null) {
            b(drawable2);
            setProgressMaskDrawable(drawable2);
        } else {
            bN();
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842803}, 0, 0);
        this.vh = obtainStyledAttributes2.getFloat(0, 0.5f);
        obtainStyledAttributes2.recycle();
    }

    public void setIndeterminate(boolean z) {
        if (z != this.va.isIndeterminate()) {
            r(z);
            s(z);
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        if (this.vd != drawable) {
            this.vd = drawable;
            this.ve = true;
            bN();
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (this.vf != drawable) {
            this.vf = drawable;
            this.vg = true;
            bN();
        }
    }

    public synchronized void setProgressMaskDrawable(Drawable drawable) {
        if (this.vc != drawable) {
            this.vc = drawable;
            this.ve = true;
            this.vg = true;
            bN();
        }
    }

    public Drawable getProgressMaskDrawable() {
        return this.vc;
    }

    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.ve = true;
        this.vg = true;
        bN();
        a(i, i2, i3, i4);
    }

    public void drawableStateChanged() {
        boolean isEnabled = this.va.isEnabled();
        if (!isEnabled) {
            this.va.getProgressDrawable().setAlpha(255);
        }
        this.va.setAlpha(isEnabled ? 1.0f : this.vh);
    }

    private void bN() {
        r(this.va.isIndeterminate());
    }

    private void r(boolean z) {
        if (this.cY) {
            ProgressBar progressBar = this.va;
            int height = (progressBar.getHeight() - progressBar.getPaddingTop()) - progressBar.getPaddingBottom();
            int width = (progressBar.getWidth() - progressBar.getPaddingLeft()) - progressBar.getPaddingRight();
            if (height < width) {
                int i = width;
                width = height;
                height = i;
            }
            if (this.vc != null) {
                this.vc.setBounds(0, 0, height, width);
            }
            if (z && this.vg) {
                this.vg = true;
                Drawable a = a(progressBar.getResources(), this.vf, this.vc, height, width, true);
                if (a != null && height > 0 && width > 0) {
                    int i2;
                    if (ViewUtils.isLayoutRtl(this.va)) {
                        i2 = height - height;
                        height += 0;
                    } else {
                        i2 = 0;
                    }
                    a.setBounds(i2, 0, height, width);
                }
                c(a);
            } else if (!z && this.ve) {
                this.ve = true;
                d(a(progressBar.getResources(), this.vd, this.vc, height, width, false));
                if (((AccessibilityManager) this.va.getContext().getSystemService("accessibility")).isEnabled()) {
                    int progress = this.va.getProgress();
                    this.va.setProgress(0);
                    this.va.setProgress(progress);
                }
            }
        }
    }

    private static Drawable a(Resources resources, Drawable drawable, Drawable drawable2, int i, int i2, boolean z) {
        Drawable drawable3 = drawable;
        if ((drawable3 instanceof NinePatchDrawable) || (drawable3 instanceof BitmapDrawable)) {
            return new ClipDrawable(a(resources, drawable, drawable2, i, i2), 8388611, 1);
        }
        Drawable a;
        if (drawable3 instanceof ClipDrawable) {
            a = a(resources, drawable, drawable2, i, i2);
            if (a == drawable3) {
                return a;
            }
            drawable3 = new ClipDrawable(a, 8388611, 1);
        } else {
            int i3 = 0;
            int numberOfLayers;
            Drawable layerDrawable;
            if (drawable3 instanceof LayerDrawable) {
                int id;
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable3;
                numberOfLayers = layerDrawable2.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i4 = 0; i4 < numberOfLayers; i4++) {
                    id = layerDrawable2.getId(i4);
                    Drawable drawable4 = layerDrawable2.getDrawable(i4);
                    if (id == 16908301 || id == 16908303) {
                        drawableArr[i4] = a(resources, drawable4, drawable2, i, i2, z);
                    } else {
                        drawableArr[i4] = drawable4;
                    }
                }
                layerDrawable = new LayerDrawable(drawableArr);
                for (int i5 = 0; i5 < numberOfLayers; i5++) {
                    layerDrawable.setId(i5, layerDrawable2.getId(i5));
                    if (!(uV == null || uW == null)) {
                        id = uV.invokeInt(LayerDrawable.class, layerDrawable2, Integer.valueOf(i5));
                        uW.invoke(LayerDrawable.class, layerDrawable, Integer.valueOf(i5), Integer.valueOf(id));
                    }
                }
                return layerDrawable;
            } else if (drawable3 instanceof StateListDrawable) {
                StateListDrawable stateListDrawable = (StateListDrawable) drawable3;
                a = new StateListDrawable();
                int stateCount = uY.getStateCount(stateListDrawable);
                while (i3 < stateCount) {
                    a.addState(uY.getStateSet(stateListDrawable, i3), a(resources, uY.getStateDrawable(stateListDrawable, i3), drawable2, i, i2, z));
                    i3++;
                }
                return a;
            } else if (drawable3 instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawable3;
                numberOfLayers = animationDrawable.getNumberOfFrames();
                Drawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                while (i3 < numberOfLayers) {
                    layerDrawable = a(resources, animationDrawable.getFrame(i3), drawable2, i, i2, z);
                    layerDrawable.setLevel(10000);
                    animationDrawable2.addFrame(layerDrawable, animationDrawable.getDuration(i3));
                    i3++;
                }
                if (z) {
                    animationDrawable2.setLevel(10000);
                } else {
                    animationDrawable2.setLevel(animationDrawable.getLevel());
                }
                return animationDrawable2;
            } else {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Unknown Drawable subclass, src=");
                stringBuilder.append(drawable3);
                Log.w(str, stringBuilder.toString());
            }
        }
        return drawable3;
    }

    private static Drawable a(Resources resources, Drawable drawable, Drawable drawable2, int i, int i2) {
        if (drawable == null || drawable2 == null || i <= 0 || i2 <= 0) {
            return drawable;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        drawable.setLevel(10000);
        drawable.setBounds(0, 0, i, i2);
        drawable.draw(canvas);
        drawable2.draw(canvas);
        return new BitmapDrawable(resources, createBitmap);
    }

    private void b(Drawable drawable) {
        Paint paint;
        if (drawable instanceof NinePatchDrawable) {
            paint = ((NinePatchDrawable) drawable).getPaint();
        } else if (drawable instanceof BitmapDrawable) {
            paint = ((BitmapDrawable) drawable).getPaint();
        } else {
            paint = null;
        }
        if (paint != null) {
            paint.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
            return;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("The drawable should be NinePatchDrawable or BitmapDrawable. drawable=");
        stringBuilder.append(drawable);
        Log.w(str, stringBuilder.toString());
    }

    public static ProgressBarDelegate create(ProgressBar progressBar, Class<? extends ProgressBar> cls) {
        return new ProgressBarDelegate(progressBar, cls);
    }

    private void s(boolean z) {
        uR.invoke(this.vb, this.va, Boolean.valueOf(z));
    }

    private void c(Drawable drawable) {
        uS.invoke(this.vb, this.va, drawable);
    }

    private void d(Drawable drawable) {
        uT.invoke(this.vb, this.va, drawable);
    }

    private void a(int i, int i2, int i3, int i4) {
        uU.invoke(this.vb, this.va, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
    }
}

package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import miui.util.AppConstants;

public class Rotation3DLayout extends FrameLayout {
    private static final int LAYOUT_DIRECTION_LTR = 0;
    private static final int LAYOUT_DIRECTION_RTL = 1;
    private static final int XU = 8388659;
    private static final int XV = 10;
    private static final float XW = d(10.0f);
    private static final int XX = 45;
    private static final int Ya = 300;
    private static final float[] Yb = new float[]{1.0f, -0.5f, 0.25f, XW};
    private float XY;
    private float XZ;
    private int Yc;
    private float[] Yd;
    private float[] Ye;
    private float[] Yf;
    private long Yg;
    private boolean Yh;
    private boolean Yi;
    private boolean Yj;
    private boolean Yk;
    private float Yl;
    private float Ym;
    private Sensor Yn;
    private SensorManager Yo;
    private SensorEventListener Yp;
    private AnimatorSet tk;

    public static class LayoutParams extends android.widget.FrameLayout.LayoutParams {
        public int zdistance = 0;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Rotation3DLayout_Layout);
            this.zdistance = obtainStyledAttributes.getInt(R.styleable.Rotation3DLayout_Layout_layout_zdistance, this.zdistance);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        public LayoutParams(int i, int i2, int i3, int i4) {
            super(i, i2, i3);
            this.zdistance = i4;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(android.widget.FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public Rotation3DLayout(Context context) {
        this(context, null);
    }

    public Rotation3DLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Rotation3DLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.XY = 10.0f;
        this.XZ = XW;
        this.Yc = 300;
        this.Yd = Yb;
        this.Ye = new float[Yb.length];
        this.Yf = new float[Yb.length];
        this.Yg = 0;
        this.Yh = true;
        this.Yi = false;
        this.Yj = false;
        this.Yk = false;
        this.Yp = new SensorEventListener() {
            public void onSensorChanged(SensorEvent sensorEvent) {
                float f = sensorEvent.values[1];
                float f2 = sensorEvent.values[2];
                if (Math.abs(f) < 45.0f) {
                    Rotation3DLayout.this.Yl = (Rotation3DLayout.this.XY * f) / 45.0f;
                    Rotation3DLayout.this.setRotationX(Rotation3DLayout.this.Yl);
                }
                if (Math.abs(f2) < 45.0f) {
                    Rotation3DLayout.this.Ym = ((-Rotation3DLayout.this.XY) * f2) / 45.0f;
                    Rotation3DLayout.this.setRotationY(Rotation3DLayout.this.Ym);
                }
            }

            public void onAccuracyChanged(Sensor sensor, int i) {
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Rotation3DLayout, i, 0);
        setMaxRotationDegree(obtainStyledAttributes.getFloat(R.styleable.Rotation3DLayout_maxRotationDegree, this.XY));
        this.Yk = obtainStyledAttributes.getBoolean(R.styleable.Rotation3DLayout_autoGravityRotation, this.Yk);
        obtainStyledAttributes.recycle();
    }

    public void enableTouchRotation(boolean z) {
        this.Yh = z;
    }

    public void enableAutoRotationByGravity(boolean z) {
        this.Yk = z;
        if (this.Yk) {
            startGravityDetection();
        } else {
            stopGravityDetection();
        }
    }

    public void startGravityDetection() {
        if (this.Yo == null) {
            this.Yo = (SensorManager) getContext().getSystemService("sensor");
        }
        if (this.Yn == null) {
            this.Yn = this.Yo.getDefaultSensor(3);
            this.Yo.registerListener(this.Yp, this.Yn, 1);
        }
    }

    public void stopGravityDetection() {
        if (this.Yo != null && this.Yn != null) {
            this.Yo.unregisterListener(this.Yp, this.Yn);
            this.Yn = null;
            this.Yo = null;
            resetRotation();
        }
    }

    protected void stopResetRotation() {
        if (this.tk != null) {
            this.tk.cancel();
        }
    }

    protected void resetRotation() {
        if (this.tk == null) {
            this.tk = new AnimatorSet();
            this.tk.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animator) {
                    Rotation3DLayout.this.Yj = true;
                }

                public void onAnimationEnd(Animator animator) {
                    Rotation3DLayout.this.Yj = false;
                }

                public void onAnimationCancel(Animator animator) {
                    Rotation3DLayout.this.Yj = false;
                }

                public void onAnimationRepeat(Animator animator) {
                }
            });
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setInterpolator(new DecelerateInterpolator(0.75f));
            valueAnimator.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Rotation3DLayout.this.a(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
                }
            });
            valueAnimator.setDuration((long) this.Yc);
            ValueAnimator valueAnimator2 = new ValueAnimator();
            valueAnimator2.setInterpolator(new DecelerateInterpolator(0.75f));
            valueAnimator2.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    Rotation3DLayout.this.b(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
                }
            });
            valueAnimator2.setDuration((long) this.Yc);
            this.tk.playTogether(new Animator[]{valueAnimator, valueAnimator2});
        }
        this.tk.cancel();
        float rotationX = getRotationX();
        float rotationY = getRotationY();
        for (int i = 0; i < this.Yd.length; i++) {
            this.Ye[i] = this.Yl + (this.Yd[i] * rotationX);
            this.Yf[i] = this.Ym + (this.Yd[i] * rotationY);
        }
        ((ValueAnimator) this.tk.getChildAnimations().get(0)).setFloatValues(this.Ye);
        ((ValueAnimator) this.tk.getChildAnimations().get(1)).setFloatValues(this.Yf);
        this.tk.start();
    }

    public void setResetAnimDuration(int i) {
        this.Yc = i;
    }

    public void setResetBouncePatterns(float[] fArr) {
        if (fArr != null && fArr.length > 1) {
            this.Yd = fArr;
            this.Ye = new float[fArr.length];
            this.Yf = new float[fArr.length];
        }
    }

    public void setMaxRotationDegree(float f) {
        this.XY = f;
        this.XZ = d(f);
    }

    public float getMaxRotationDegree() {
        return this.XY;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.Yh) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.Yh) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                break;
            case 1:
            case 3:
                resetRotation();
                this.Yi = false;
                break;
            case 2:
                if (SystemClock.elapsedRealtime() - this.Yg > ((long) ViewConfiguration.getTapTimeout())) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
        }
        if (motionEvent.getAction() == 0) {
            this.Yg = SystemClock.elapsedRealtime();
        }
        float min = Math.min(Math.max(XW, motionEvent.getX()), (float) getWidth());
        float min2 = Math.min(Math.max(XW, motionEvent.getY()), (float) getHeight());
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        if (this.tk != null) {
            this.tk.cancel();
        }
        a((((float) height) - min2) * this.XZ, true);
        b((min - ((float) width)) * this.XZ, true);
        this.Yi = true;
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setRotationX(float f) {
        a(f, false);
    }

    public void setRotationY(float f) {
        b(f, false);
    }

    private void a(float f, boolean z) {
        if (Math.abs(f) > this.XY) {
            f = f > XW ? this.XY : -this.XY;
        }
        if (f != getRotationX()) {
            if (z || !(this.Yi || this.Yj)) {
                super.setRotationX(f);
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
            }
        }
    }

    private void b(float f, boolean z) {
        if (Math.abs(f) > this.XY) {
            f = f > XW ? this.XY : -this.XY;
        }
        if (f != getRotationY()) {
            if (z || !(this.Yi || this.Yj)) {
                super.setRotationY(f);
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
            }
        }
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            stopGravityDetection();
        } else if (this.Yk) {
            startGravityDetection();
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        stopGravityDetection();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = layoutParams.gravity;
                if (i6 == -1) {
                    i6 = XU;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i6, 0);
                i6 &= BaiduSceneResult.STREET_VIEW;
                absoluteGravity &= 7;
                if (absoluteGravity == 1) {
                    absoluteGravity = (((((paddingRight - paddingLeft) - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                } else if (absoluteGravity == 3) {
                    absoluteGravity = layoutParams.leftMargin + paddingLeft;
                } else if (absoluteGravity != 5) {
                    absoluteGravity = layoutParams.leftMargin + paddingLeft;
                } else {
                    absoluteGravity = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                }
                if (i6 == 16) {
                    i6 = (((((paddingBottom - paddingTop) - measuredHeight) / 2) + paddingTop) + layoutParams.topMargin) - layoutParams.bottomMargin;
                } else if (i6 == 48) {
                    i6 = layoutParams.topMargin + paddingTop;
                } else if (i6 != 80) {
                    i6 = layoutParams.topMargin + paddingTop;
                } else {
                    i6 = (paddingBottom - measuredHeight) - layoutParams.bottomMargin;
                }
                absoluteGravity += d(layoutParams.zdistance, getRotationY());
                i6 -= d(layoutParams.zdistance, getRotationX());
                if (z || absoluteGravity != childAt.getLeft() || i6 != childAt.getTop()) {
                    childAt.layout(absoluteGravity, i6, measuredWidth + absoluteGravity, measuredHeight + i6);
                }
            }
        }
    }

    private int d(int i, float f) {
        return (int) (Math.sin(Math.toRadians((double) f)) * ((double) i));
    }

    private static float d(float f) {
        return f / (((float) AppConstants.getCurrentApplication().getResources().getDisplayMetrics().widthPixels) / 2.0f);
    }

    protected android.widget.FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public android.widget.FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}

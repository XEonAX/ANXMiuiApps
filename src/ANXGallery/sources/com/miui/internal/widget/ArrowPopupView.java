package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import miui.content.res.ThemeResources;
import miui.view.EditActionMode;
import miui.widget.ArrowPopupWindow;

public class ArrowPopupView extends FrameLayout implements OnTouchListener {
    public static final int ARROW_BOTTOM_MODE = 0;
    public static final int ARROW_LEFT_MODE = 3;
    public static final int ARROW_NONE_MODE = -1;
    public static final int ARROW_RIGHT_MODE = 2;
    public static final int ARROW_TOP_MODE = 1;
    private static final String TAG = "ArrowPopupView";
    private static final int tu = 4;
    private static final int tv = 8;
    private Drawable nI;
    private LinearLayout qs;
    private View sN;
    private ImageView sO;
    private FrameLayout sP;
    private LinearLayout sQ;
    private TextView sR;
    private Button sS;
    private Button sT;
    private WrapperOnClickListener sU;
    private WrapperOnClickListener sV;
    private int sW;
    private int sX;
    private Drawable sY;
    private Drawable sZ;
    private Drawable ta;
    private Drawable tb;
    private Drawable tc;
    private Drawable td;
    private Drawable te;
    private Drawable tf;
    private ArrowPopupWindow tg;
    private OnTouchListener th;
    private Rect ti;
    private RectF tj;
    private AnimatorSet tk;
    private AnimationSet tl;
    private boolean tm;
    private int tn;
    private int to;
    private int tp;
    private int tq;
    private int tr;
    private boolean ts;
    private int tt;
    private AnimationListener tw;
    private AnimationListener tx;
    private int ty;

    class WrapperOnClickListener implements OnClickListener {
        public OnClickListener rM;

        WrapperOnClickListener() {
        }

        public void setOnClickListener(OnClickListener onClickListener) {
            this.rM = onClickListener;
        }

        public void onClick(View view) {
            if (this.rM != null) {
                this.rM.onClick(view);
            }
            ArrowPopupView.this.tg.dismiss(true);
        }
    }

    public ArrowPopupView(Context context) {
        this(context, null);
    }

    public ArrowPopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.arrowPopupViewStyle);
    }

    public ArrowPopupView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ti = new Rect();
        this.tj = new RectF();
        this.ts = false;
        this.tw = new AnimationListener() {
            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                ArrowPopupView.this.tl = null;
                if (ArrowPopupView.this.ts) {
                    ArrowPopupView.this.bF();
                }
            }

            public void onAnimationRepeat(Animation animation) {
            }
        };
        this.tx = new AnimationListener() {
            public void onAnimationStart(Animation animation) {
            }

            public void onAnimationEnd(Animation animation) {
                ArrowPopupView.this.tm = false;
                ArrowPopupView.this.tl = null;
                ArrowPopupView.this.tg.dismiss();
                ArrowPopupView.this.setArrowMode(-1);
            }

            public void onAnimationRepeat(Animation animation) {
            }
        };
        this.ty = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ArrowPopupView, i, 0);
        this.nI = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_contentBackground);
        this.sY = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_backgroundLeft);
        this.sZ = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_backgroundRight);
        this.ta = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_titleBackground);
        this.tb = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_topArrow);
        this.tc = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_topArrowWithTitle);
        this.td = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_bottomArrow);
        this.te = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_rightArrow);
        this.tf = obtainStyledAttributes.getDrawable(R.styleable.ArrowPopupView_leftArrow);
        obtainStyledAttributes.recycle();
        this.tn = context.getResources().getDimensionPixelOffset(R.dimen.arrow_popup_window_min_border);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.sO = (ImageView) findViewById(R.id.popup_arrow);
        this.sP = (FrameLayout) findViewById(16908290);
        this.sQ = (LinearLayout) findViewById(R.id.content_wrapper);
        this.sQ.setBackground(this.nI);
        if (!(this.sY == null || this.sZ == null)) {
            Rect rect = new Rect();
            this.sY.getPadding(rect);
            this.sQ.setPadding(rect.top, rect.top, rect.top, rect.top);
        }
        this.qs = (LinearLayout) findViewById(R.id.title_layout);
        this.qs.setBackground(this.ta);
        this.sR = (TextView) findViewById(16908310);
        this.sS = (Button) findViewById(EditActionMode.BUTTON2);
        this.sT = (Button) findViewById(EditActionMode.BUTTON1);
        this.sU = new WrapperOnClickListener();
        this.sV = new WrapperOnClickListener();
        this.sS.setOnClickListener(this.sU);
        this.sT.setOnClickListener(this.sV);
    }

    public void setContentView(View view) {
        setContentView(view, new LayoutParams(-2, -2));
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        this.sP.removeAllViews();
        if (view != null) {
            this.sP.addView(view, layoutParams);
        }
    }

    public View getContentView() {
        if (this.sP.getChildCount() > 0) {
            return this.sP.getChildAt(0);
        }
        return null;
    }

    public void setContentView(int i) {
        setContentView(LayoutInflater.from(getContext()).inflate(i, null));
    }

    public void setTitle(CharSequence charSequence) {
        this.qs.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        this.sR.setText(charSequence);
    }

    public void setNegativeButton(CharSequence charSequence, OnClickListener onClickListener) {
        this.sT.setText(charSequence);
        this.sT.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        this.sV.setOnClickListener(onClickListener);
    }

    public void setPositiveButton(CharSequence charSequence, OnClickListener onClickListener) {
        this.sS.setText(charSequence);
        this.sS.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        this.sU.setOnClickListener(onClickListener);
    }

    public Button getPositiveButton() {
        return this.sS;
    }

    public Button getNegativeButton() {
        return this.sT;
    }

    private void by() {
        if (this.ty == 0 || this.ty == 1) {
            bB();
        } else {
            bC();
        }
        View contentView = getContentView();
        if (contentView != null) {
            LayoutParams layoutParams = contentView.getLayoutParams();
            if (contentView.getMeasuredHeight() > this.sQ.getMeasuredHeight() - this.qs.getMeasuredHeight()) {
                layoutParams.height = this.sQ.getMeasuredHeight() - this.qs.getMeasuredHeight();
                contentView.setLayoutParams(layoutParams);
            } else if (contentView.getMeasuredWidth() > this.sQ.getMeasuredWidth()) {
                layoutParams.width = this.sQ.getMeasuredWidth();
                contentView.setLayoutParams(layoutParams);
            }
            if (layoutParams.height <= 0 || layoutParams.width <= 0) {
                Log.w(TAG, "Invalid LayoutPrams of content view, please check the anchor view");
            }
        }
    }

    private boolean g(View view) {
        boolean z = false;
        if (VERSION.SDK_INT >= 28) {
            try {
                Method declaredMethod = Class.forName("android.view.View").getDeclaredMethod("getRootWindowInsets", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(view, new Object[0]);
                if (invoke != null) {
                    declaredMethod = Class.forName("android.view.WindowInsets").getDeclaredMethod("getDisplayCutout", new Class[0]);
                    declaredMethod.setAccessible(true);
                    if (declaredMethod.invoke(invoke, new Object[0]) != null) {
                        z = true;
                    }
                    return z;
                }
            } catch (Throwable e) {
                Log.e(TAG, "NoSuchMethodException in isNotchOverOreo()", e);
            } catch (Throwable e2) {
                Log.e(TAG, "IllegalAccessException in isNotchOverOreo()", e2);
            } catch (Throwable e22) {
                Log.e(TAG, "InvocationTargetException in isNotchOverOreo()", e22);
            } catch (Throwable e222) {
                Log.e(TAG, "ClassNotFoundException in isNotchOverOreo()", e222);
            }
        }
        return false;
    }

    private boolean h(View view) {
        if (bA() && g(view)) {
            WindowManager.LayoutParams attributes = ((Activity) this.tg.getContext()).getWindow().getAttributes();
            try {
                Field declaredField = WindowManager.LayoutParams.class.getDeclaredField("layoutInDisplayCutoutMode");
                declaredField.setAccessible(true);
                Integer num = (Integer) declaredField.get(attributes);
                if (bz()) {
                    if (!num.equals(Integer.valueOf(2))) {
                        return true;
                    }
                } else if (num.equals(Integer.valueOf(1))) {
                    return true;
                }
            } catch (Throwable e) {
                Log.e(TAG, "NoSuchFieldException in isNotchShow()", e);
            } catch (Throwable e2) {
                Log.e(TAG, "NoSuchFieldException in isNotchShow()", e2);
            }
        }
        return false;
    }

    private boolean bz() {
        boolean z = false;
        if (!bA()) {
            return false;
        }
        if ((((Activity) this.tg.getContext()).getWindow().getAttributes().flags & 1024) == 0) {
            z = true;
        }
        return z;
    }

    private boolean bA() {
        return this.tg != null && (this.tg.getContext() instanceof Activity);
    }

    private static int a(Resources resources) {
        int identifier = resources.getIdentifier("status_bar_height", "dimen", ThemeResources.FRAMEWORK_PACKAGE);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void bB() {
        int width = this.sN.getWidth();
        int height = this.sN.getHeight();
        int width2 = getWidth();
        int height2 = getHeight();
        int measuredWidth = this.sQ.getMeasuredWidth() > this.sQ.getMinimumWidth() ? this.sQ.getMeasuredWidth() : this.sQ.getMinimumWidth();
        int measuredHeight = this.sQ.getMeasuredHeight() > this.sQ.getMinimumHeight() ? this.sQ.getMeasuredHeight() : this.sQ.getMinimumHeight();
        int bD = bD();
        int bE = bE();
        int[] iArr = new int[2];
        this.sN.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        getLocationInWindow(iArr);
        this.to = ((width / 2) + i) - iArr[0];
        int i3 = width2 - this.to;
        this.tq = (i + ((width - bD) / 2)) - iArr[0];
        this.tp = getTop() + this.sX;
        if (this.ty == 0) {
            this.tp += ((i2 - iArr[1]) - measuredHeight) + (this.sQ.getPaddingBottom() - bE);
            width = this.sX + ((i2 - iArr[1]) - bE);
        } else if (this.ty == 1) {
            this.tp += (((i2 + height) - iArr[1]) - this.sQ.getPaddingTop()) + bE;
            width = this.tp;
        } else {
            width = 0;
        }
        height = measuredWidth / 2;
        int i4 = measuredWidth - height;
        if (this.to >= height && i3 >= i4) {
            this.to -= height;
        } else if (i3 < i4) {
            this.to = width2 - measuredWidth;
        } else if (this.to < height) {
            this.to = 0;
        }
        this.to += this.sW;
        this.tq += this.sW;
        if (this.tq < 0) {
            this.tq = 0;
        } else if (this.tq + bD > width2) {
            this.tq -= (this.tq + bD) - width2;
        }
        if (h(this.sN)) {
            height = a(this.sN.getResources());
            this.tp -= height;
            width -= height;
        }
        this.sQ.layout(Math.max(this.to, 0), Math.max(this.tp, 0), Math.min(this.to + measuredWidth, width2), Math.min(this.tp + measuredHeight, height2));
        this.sO.layout(this.tq, width, this.tq + bD, bE + width);
    }

    private void bC() {
        int i;
        int[] iArr = new int[2];
        this.sN.getLocationInWindow(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        getLocationInWindow(iArr);
        int width = this.sN.getWidth();
        int height = this.sN.getHeight();
        int width2 = getWidth();
        int height2 = getHeight();
        int measuredWidth = this.sQ.getMeasuredWidth() > this.sQ.getMinimumWidth() ? this.sQ.getMeasuredWidth() : this.sQ.getMinimumWidth();
        int measuredHeight = this.sQ.getMeasuredHeight() > this.sQ.getMinimumHeight() ? this.sQ.getMeasuredHeight() : this.sQ.getMinimumHeight();
        int bD = bD();
        int bE = bE();
        this.tp = ((height / 2) + i3) - iArr[1];
        int i4 = height2 - this.tp;
        this.tr = (i3 + ((height - bE) / 2)) - iArr[1];
        int i5 = measuredHeight / 2;
        i3 = measuredHeight - i5;
        this.to = getLeft() + this.sW;
        if (this.ty == 2) {
            this.to += (((i2 - measuredWidth) + this.sQ.getPaddingRight()) - bD) - iArr[0];
            i = ((i2 - bD) - iArr[0]) + this.sW;
        } else if (this.ty == 3) {
            this.to += (((i2 + width) - this.sQ.getPaddingLeft()) + bD) - iArr[0];
            i = this.to;
        } else {
            i = 0;
        }
        if (this.tp >= i5 && i4 >= i3) {
            this.tp = (this.tp - i5) + this.sX;
        } else if (i4 < i3) {
            this.tp = (height2 - measuredHeight) + this.sX;
        } else if (this.tp < i5) {
            this.tp = this.sX;
        }
        this.tr += this.sX;
        if (this.tr < 0) {
            this.tr = 0;
        } else if (this.tr + bE > height2) {
            this.tr -= (this.tr + bE) - height2;
        }
        if (h(this.sN)) {
            int a = a(this.sN.getResources());
            this.tp -= a;
            this.tr -= a;
        }
        this.sQ.layout(Math.max(this.to, 0), Math.max(this.tp, 0), Math.min(this.to + measuredWidth, width2), Math.min(this.tp + measuredHeight, height2));
        this.sO.layout(i, this.tr, bD + i, this.tr + bE);
    }

    private int bD() {
        int measuredWidth = this.sO.getMeasuredWidth();
        if (measuredWidth == 0) {
            return this.sO.getDrawable().getIntrinsicWidth();
        }
        return measuredWidth;
    }

    private int bE() {
        int measuredHeight = this.sO.getMeasuredHeight();
        if (measuredHeight == 0) {
            return this.sO.getDrawable().getIntrinsicHeight();
        }
        return measuredHeight;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.ty == -1) {
            bG();
        }
        by();
    }

    protected void onDraw(Canvas canvas) {
        if (this.nI == null) {
            float f;
            int measuredWidth;
            int right;
            int width = this.to + (this.sQ.getWidth() / 2);
            int height = this.tp + (this.sQ.getHeight() / 2);
            switch (this.ty) {
                case 0:
                    f = 180.0f;
                    measuredWidth = this.tq + (this.sO.getMeasuredWidth() / 2);
                    right = this.sQ.getRight() - measuredWidth;
                    measuredWidth -= this.to;
                    break;
                case 1:
                    int measuredWidth2 = this.tq + (this.sO.getMeasuredWidth() / 2);
                    right = measuredWidth2 - this.to;
                    measuredWidth = this.sQ.getRight() - measuredWidth2;
                    f = 0.0f;
                    break;
                case 2:
                    f = 90.0f;
                    measuredWidth = this.tr + (this.sO.getMeasuredHeight() / 2);
                    right = measuredWidth - this.tp;
                    measuredWidth = this.sQ.getBottom() - measuredWidth;
                    break;
                case 3:
                    f = -90.0f;
                    measuredWidth = this.tr + (this.sO.getMeasuredHeight() / 2);
                    right = this.sQ.getBottom() - measuredWidth;
                    measuredWidth -= this.tp;
                    break;
                default:
                    f = 0.0f;
                    measuredWidth = 0;
                    right = measuredWidth;
                    break;
            }
            int save = canvas.save();
            canvas.rotate(f, (float) width, (float) height);
            switch (this.ty) {
                case 0:
                case 1:
                    canvas.translate((float) this.to, (float) this.tp);
                    this.sY.setBounds(0, 0, right, this.sQ.getHeight());
                    canvas.translate(0.0f, (float) (this.ty == 1 ? this.tt : -this.tt));
                    this.sY.draw(canvas);
                    canvas.translate((float) right, 0.0f);
                    this.sZ.setBounds(0, 0, measuredWidth, this.sQ.getHeight());
                    this.sZ.draw(canvas);
                    break;
                case 2:
                case 3:
                    canvas.translate((float) (width - (this.sQ.getHeight() / 2)), (float) (height - (this.sQ.getWidth() / 2)));
                    this.sY.setBounds(0, 0, right, this.sQ.getWidth());
                    canvas.translate(0.0f, (float) (this.ty == 3 ? this.tt : -this.tt));
                    this.sY.draw(canvas);
                    canvas.translate((float) right, 0.0f);
                    this.sZ.setBounds(0, 0, measuredWidth, this.sQ.getWidth());
                    this.sZ.draw(canvas);
                    break;
            }
            canvas.restoreToCount(save);
        }
    }

    @Deprecated
    public float getRollingPercent() {
        return 1.0f;
    }

    @Deprecated
    public void setRollingPercent(float f) {
    }

    private void a(float[] fArr) {
        float f;
        int top = this.sO.getTop();
        int bottom = this.sO.getBottom();
        int left = this.sO.getLeft();
        int right = this.sO.getRight();
        float f2 = 0.0f;
        switch (this.ty) {
            case 0:
                f2 = (float) (left + ((right - left) / 2));
                f = (float) bottom;
                break;
            case 1:
                f2 = (float) (left + ((right - left) / 2));
                f = (float) top;
                break;
            case 2:
                f2 = (float) right;
                f = (float) (top + ((bottom - top) / 2));
                break;
            case 3:
                f2 = (float) left;
                f = (float) (top + ((bottom - top) / 2));
                break;
            default:
                f = 0.0f;
                break;
        }
        fArr[0] = f2;
        fArr[1] = f;
    }

    public void animateToShow() {
        invalidate();
        getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                ArrowPopupView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                if (ArrowPopupView.this.tk != null) {
                    ArrowPopupView.this.tk.cancel();
                }
                if (ArrowPopupView.this.tl != null) {
                    ArrowPopupView.this.tl.cancel();
                }
                ArrowPopupView.this.tl = new AnimationSet(true);
                float[] fArr = new float[2];
                ArrowPopupView.this.a(fArr);
                Animation scaleAnimation = new ScaleAnimation(0.6f, 1.0f, 0.6f, 1.0f, 0, fArr[0], 0, fArr[1]);
                Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                    scaleAnimation.setDuration(280);
                    alphaAnimation.setDuration(280);
                } else {
                    ArrowPopupView.this.tl.setDuration(0);
                }
                ArrowPopupView.this.tl.addAnimation(scaleAnimation);
                ArrowPopupView.this.tl.addAnimation(alphaAnimation);
                ArrowPopupView.this.tl.setAnimationListener(ArrowPopupView.this.tw);
                ArrowPopupView.this.tl.setInterpolator(new DecelerateInterpolator(2.0f));
                ArrowPopupView.this.startAnimation(ArrowPopupView.this.tl);
                return true;
            }
        });
    }

    public void animateToDismiss() {
        if (!this.tm) {
            if (this.tk != null) {
                this.tk.cancel();
            }
            if (this.tl != null) {
                this.tl.cancel();
            }
            this.tl = new AnimationSet(true);
            float[] fArr = new float[2];
            a(fArr);
            Animation scaleAnimation = new ScaleAnimation(1.0f, 0.6f, 1.0f, 0.6f, 0, fArr[0], 0, fArr[1]);
            Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            if (DeviceHelper.FEATURE_WHOLE_ANIM) {
                scaleAnimation.setDuration(150);
                alphaAnimation.setDuration(150);
            } else {
                this.tl.setDuration(0);
            }
            this.tl.addAnimation(scaleAnimation);
            this.tl.addAnimation(alphaAnimation);
            this.tl.setAnimationListener(this.tx);
            this.tl.setInterpolator(new AccelerateInterpolator(2.0f));
            startAnimation(this.tl);
        }
    }

    private void bF() {
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            if (this.tl != null) {
                this.tl.cancel();
            }
            if (this.tk != null) {
                this.tk.cancel();
            }
            this.tk = new AnimatorSet();
            this.tk.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    ArrowPopupView.this.tg.dismiss();
                }
            });
            float f = 4.0f * getContext().getResources().getDisplayMetrics().density;
            Property property = View.TRANSLATION_Y;
            int i = this.ty;
            if (i != 0) {
                switch (i) {
                    case 2:
                        f = -f;
                        property = View.TRANSLATION_X;
                        break;
                    case 3:
                        property = View.TRANSLATION_X;
                        break;
                }
            }
            f = -f;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.sQ, property, new float[]{0.0f, f, 0.0f});
            ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat.setDuration(1200);
            ofFloat.setRepeatCount(8);
            ofFloat.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ArrowPopupView.this.tt = ((Float) valueAnimator.getAnimatedValue()).intValue();
                    int abs = Math.abs(ArrowPopupView.this.tt);
                    ArrowPopupView.this.invalidate(ArrowPopupView.this.sQ.getLeft() - abs, ArrowPopupView.this.sQ.getTop() - abs, ArrowPopupView.this.sQ.getRight() + abs, ArrowPopupView.this.sQ.getBottom() + abs);
                }
            });
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.sO, property, new float[]{0.0f, f, 0.0f});
            ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat2.setDuration(1200);
            ofFloat2.setRepeatCount(8);
            this.tk.playTogether(new Animator[]{ofFloat, ofFloat2});
            this.tk.start();
        }
    }

    private void bG() {
        int[] iArr = new int[2];
        this.sN.getLocationInWindow(iArr);
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = this.sQ.getMeasuredWidth();
        int measuredHeight = this.sQ.getMeasuredHeight();
        int height2 = this.sN.getHeight();
        int width2 = this.sN.getWidth();
        r9 = new int[4];
        int i = 0;
        r9[0] = iArr[1] - measuredHeight;
        r9[1] = ((height - iArr[1]) - height2) - measuredHeight;
        r9[2] = iArr[0] - measuredWidth;
        r9[3] = ((width - iArr[0]) - width2) - measuredWidth;
        int i2 = Integer.MIN_VALUE;
        int i3 = 0;
        while (i < 4) {
            if (r9[i] >= this.tn) {
                i3 = i;
                break;
            }
            if (r9[i] > i2) {
                i2 = r9[i];
                i3 = i;
            }
            i++;
        }
        setArrowMode(i3);
    }

    public int getArrowMode() {
        return this.ty;
    }

    public void setArrowMode(int i) {
        this.ty = i;
        switch (i) {
            case 0:
                this.sO.setImageDrawable(this.td);
                return;
            case 1:
                this.sO.setImageDrawable(this.qs.getVisibility() == 0 ? this.tc : this.tb);
                return;
            case 2:
                this.sO.setImageDrawable(this.te);
                return;
            case 3:
                this.sO.setImageDrawable(this.tf);
                return;
            default:
                return;
        }
    }

    public void setAnchor(View view) {
        this.sN = view;
    }

    public void setOffset(int i, int i2) {
        this.sW = i;
        this.sX = i2;
    }

    public void setArrowPopupWindow(ArrowPopupWindow arrowPopupWindow) {
        this.tg = arrowPopupWindow;
    }

    public void setTouchInterceptor(OnTouchListener onTouchListener) {
        this.th = onTouchListener;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        Rect rect = this.ti;
        this.sQ.getHitRect(rect);
        boolean z = true;
        if (motionEvent.getAction() != 0 || rect.contains(x, y)) {
            if (this.th == null || !this.th.onTouch(view, motionEvent)) {
                z = false;
            }
            return z;
        }
        this.tg.dismiss(true);
        return true;
    }

    public void enableShowingAnimation(boolean z) {
        this.ts = z;
    }
}

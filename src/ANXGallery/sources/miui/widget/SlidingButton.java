package miui.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import miui.util.AttributeResolver;
import miui.util.ViewUtils;
import miui.view.animation.QuarticEaseInOutInterpolator;

public class SlidingButton extends CheckBox {
    private static final int ANIMATION_DURATION = 260;
    private static final int[] Pv = new int[]{16842912};
    private static final int RC = 255;
    private boolean OS;
    private AnimatorListener Rt;
    private int aaA;
    private OnCheckedChangeListener aaB;
    private Animator aaC;
    private StateListDrawable aaD;
    private Drawable aan;
    private Drawable aao;
    private int aap;
    private Drawable aaq;
    private int aar;
    private int aas;
    private int aat;
    private int aau;
    private int aav;
    private int aaw;
    private int aax;
    private boolean aay;
    private boolean aaz;
    private int mHeight;
    private int mWidth;
    private Rect ti;

    public SlidingButton(Context context) {
        this(context, null);
    }

    public SlidingButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.slidingButtonStyle);
    }

    public SlidingButton(Context context, AttributeSet attributeSet, int i) {
        Bitmap bitmap;
        super(context, attributeSet, i);
        this.ti = new Rect();
        this.OS = false;
        this.Rt = new AnimatorListenerAdapter() {
            private boolean qL;

            public void onAnimationStart(Animator animator) {
                this.qL = false;
                SlidingButton.this.OS = true;
            }

            public void onAnimationCancel(Animator animator) {
                this.qL = true;
            }

            public void onAnimationEnd(Animator animator) {
                boolean z = false;
                SlidingButton.this.OS = false;
                if (!this.qL) {
                    SlidingButton.this.aaC = null;
                    if (SlidingButton.this.aav >= SlidingButton.this.aau) {
                        z = true;
                    }
                    if (z != SlidingButton.this.isChecked()) {
                        SlidingButton.this.setChecked(z);
                        SlidingButton.this.fO();
                    }
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingButton, i, R.style.Widget_SlidingButton);
        setDrawingCacheEnabled(false);
        this.aaA = ViewConfiguration.get(context).getScaledTouchSlop() / 2;
        this.aan = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_frame);
        this.aao = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_sliderOn);
        this.aaq = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_sliderOff);
        setBackground(obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_android_background));
        this.mWidth = this.aan.getIntrinsicWidth();
        this.mHeight = this.aan.getIntrinsicHeight();
        this.aar = Math.min(this.mWidth, this.aao.getIntrinsicWidth());
        this.aas = Math.min(this.mHeight, this.aao.getIntrinsicHeight());
        this.aat = 0;
        this.aau = this.mWidth - this.aar;
        this.aav = this.aat;
        TypedValue typedValue = new TypedValue();
        obtainStyledAttributes.getValue(R.styleable.SlidingButton_barOff, typedValue);
        TypedValue typedValue2 = new TypedValue();
        obtainStyledAttributes.getValue(R.styleable.SlidingButton_barOn, typedValue2);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_barOff);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_barOn);
        Bitmap g = g(drawable);
        if (typedValue.type == typedValue2.type && typedValue.data == typedValue2.data && typedValue.resourceId == typedValue2.resourceId) {
            bitmap = g;
        } else {
            bitmap = g(drawable2);
        }
        this.aan.setBounds(0, 0, this.mWidth, this.mHeight);
        if (!(bitmap == null || g == null)) {
            Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.SlidingButton_mask);
            drawable3.setBounds(0, 0, this.mWidth, this.mHeight);
            Bitmap h = h(drawable3);
            this.aaD = a(context, h, bitmap, g);
            h.recycle();
        }
        if (!(bitmap == null || bitmap.isRecycled())) {
            bitmap.recycle();
        }
        if (!(g == null || g.isRecycled())) {
            g.recycle();
        }
        fN();
        if (isChecked()) {
            setSliderOffset(this.aau);
        }
        obtainStyledAttributes.recycle();
    }

    private StateListDrawable a(Context context, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3) {
        Paint paint = new Paint();
        Paint paint2 = new Paint();
        paint2.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        paint2.setColorFilter(new PorterDuffColorFilter(AttributeResolver.resolveColor(context, miui.R.attr.colorAccent), Mode.SRC_IN));
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        Drawable a = a(bitmap, bitmap2, paint2);
        Drawable a2 = a(bitmap, bitmap3, paint);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(Pv, a);
        stateListDrawable.addState(EMPTY_STATE_SET, a2);
        stateListDrawable.setExitFadeDuration(context.getResources().getInteger(R.integer.button_exit_fade_duration));
        stateListDrawable.setBounds(0, 0, this.mWidth, this.mHeight);
        stateListDrawable.setCallback(this);
        return stateListDrawable;
    }

    private Drawable a(Bitmap bitmap, Bitmap bitmap2, Paint paint) {
        Bitmap createBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, null);
        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, paint);
        canvas.setBitmap(null);
        Drawable bitmapDrawable = new BitmapDrawable(getContext().getResources(), createBitmap);
        bitmapDrawable.setBounds(0, 0, this.mWidth, this.mHeight);
        return bitmapDrawable;
    }

    private Bitmap g(Drawable drawable) {
        drawable.setBounds(0, 0, this.mWidth, this.mHeight);
        Bitmap createBitmap = Bitmap.createBitmap(this.mWidth, this.mHeight, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.draw(canvas);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public void setOnPerformCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.aaB = onCheckedChangeListener;
    }

    private Bitmap h(Drawable drawable) {
        Rect bounds = drawable.getBounds();
        Bitmap createBitmap = Bitmap.createBitmap(bounds.width(), bounds.height(), Config.ALPHA_8);
        Canvas canvas = new Canvas(createBitmap);
        drawable.draw(canvas);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public void setChecked(boolean z) {
        if (isChecked() != z) {
            super.setChecked(z);
            this.aav = z ? this.aau : this.aat;
            this.aap = z ? RC : 0;
            invalidate();
        }
    }

    public void setButtonDrawable(Drawable drawable) {
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        fN();
    }

    private void fN() {
        if (this.aao != null) {
            this.aao.setState(getDrawableState());
            this.aaD.setState(getDrawableState());
        }
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mWidth, this.mHeight);
    }

    public boolean performClick() {
        super.performClick();
        fO();
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        Rect rect = this.ti;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        rect.set(isLayoutRtl ? (this.mWidth - this.aav) - this.aar : this.aav, 0, isLayoutRtl ? this.mWidth - this.aav : this.aav + this.aar, this.mHeight);
        switch (action) {
            case 0:
                if (rect.contains(x, y)) {
                    this.aay = true;
                    setPressed(true);
                } else {
                    this.aay = false;
                }
                this.aaw = x;
                this.aax = x;
                this.aaz = false;
                break;
            case 1:
            case 3:
                if (action != 3 || ((x >= rect.left && x <= rect.right) || (y >= rect.top && y <= rect.bottom))) {
                    if (!this.aay) {
                        animateToggle();
                    } else if (this.aaz) {
                        C(this.aav >= this.aau / 2);
                    } else {
                        animateToggle();
                    }
                }
                this.aay = false;
                this.aaz = false;
                setPressed(false);
                break;
            case 2:
                if (this.aay) {
                    aK(x - this.aaw);
                    this.aaw = x;
                    if (Math.abs(x - this.aax) >= this.aaA) {
                        this.aaz = true;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    public void setPressed(boolean z) {
        super.setPressed(z);
        invalidate();
    }

    private void fO() {
        if (this.aaB != null) {
            final boolean isChecked = isChecked();
            post(new Runnable() {
                public void run() {
                    if (SlidingButton.this.aaB != null) {
                        SlidingButton.this.aaB.onCheckedChanged(SlidingButton.this, isChecked);
                    }
                }
            });
        }
    }

    private void animateToggle() {
        C(isChecked() ^ 1);
    }

    private void C(boolean z) {
        if (this.aaC != null) {
            this.aaC.cancel();
            this.aaC = null;
        }
        String str = "SliderOffset";
        int[] iArr = new int[1];
        iArr[0] = z ? this.aau : this.aat;
        Animator ofInt = ObjectAnimator.ofInt(this, str, iArr);
        ofInt.setInterpolator(new QuarticEaseInOutInterpolator());
        ofInt.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 260 : 0);
        this.aaC = ofInt;
        this.aaC.addListener(this.Rt);
        this.aaC.start();
    }

    private void aK(int i) {
        if (ViewUtils.isLayoutRtl(this)) {
            i = -i;
        }
        this.aav += i;
        if (this.aav < this.aat) {
            this.aav = this.aat;
        } else if (this.aav > this.aau) {
            this.aav = this.aau;
        }
        setSliderOffset(this.aav);
    }

    public int getSliderOffset() {
        return this.aav;
    }

    public void setSliderOffset(int i) {
        this.aav = i;
        invalidate();
    }

    public int getSliderOnAlpha() {
        return this.aap;
    }

    public void setSliderOnAlpha(int i) {
        this.aap = i;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        int i = isEnabled() ? RC : BaiduSceneResult.BANK_CARD;
        Drawable drawable = this.aaD;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        this.aan.draw(canvas);
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i2 = isLayoutRtl ? (this.mWidth - this.aav) - this.aar : this.aav;
        int i3 = isLayoutRtl ? this.mWidth - this.aav : this.aar + this.aav;
        int i4 = (this.mHeight - this.aas) / 2;
        int i5 = this.aas + i4;
        if (isChecked()) {
            this.aao.setBounds(i2, i4, i3, i5);
            this.aao.draw(canvas);
        } else {
            this.aaq.setBounds(i2, i4, i3, i5);
            this.aaq.draw(canvas);
        }
        setAlpha(((float) i) / 255.0f);
    }

    public boolean hasOverlappingRendering() {
        return false;
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.aaD;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.aaD != null) {
            this.aaD.jumpToCurrentState();
        }
    }
}

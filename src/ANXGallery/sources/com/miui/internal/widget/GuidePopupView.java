package com.miui.internal.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.internal.R;
import miui.widget.GuidePopupWindow;

public class GuidePopupView extends FrameLayout implements OnTouchListener {
    public static final int ARROW_BOTTOM_LEFT_MODE = 7;
    public static final int ARROW_BOTTOM_MODE = 0;
    public static final int ARROW_BOTTOM_RIGHT_MODE = 5;
    public static final int ARROW_LEFT_MODE = 3;
    public static final int ARROW_NONE_MODE = -1;
    public static final int ARROW_RIGHT_MODE = 2;
    public static final int ARROW_TOP_LEFT_MODE = 4;
    public static final int ARROW_TOP_MODE = 1;
    public static final int ARROW_TOP_RIGHT_MODE = 6;
    private Context mContext;
    private final Paint rl;
    private View sN;
    private int sW;
    private int sX;
    private OnTouchListener th;
    private boolean tm;
    private int tn;
    private int ty;
    private GuidePopupWindow uA;
    private ObjectAnimator uB;
    private int uC;
    private int uD;
    private int uE;
    private int uF;
    private float uG;
    private float uH;
    private float uI;
    private int uJ;
    private int uK;
    private ColorStateList uL;
    private boolean uM;
    private AnimatorListener uN;
    private AnimatorListener uO;
    private LinearLayout uw;
    private LinearLayout ux;
    private boolean uy;
    private int uz;

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
            GuidePopupView.this.uA.dismiss(true);
        }
    }

    public GuidePopupView(Context context) {
        this(context, null);
    }

    public GuidePopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.guidePopupViewStyle);
    }

    public GuidePopupView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.uy = true;
        this.uL = null;
        this.rl = new Paint();
        this.uN = new AnimatorListenerAdapter() {
            private boolean mCancel;

            public void onAnimationStart(Animator animator) {
                this.mCancel = false;
            }

            public void onAnimationCancel(Animator animator) {
                this.mCancel = true;
            }

            public void onAnimationEnd(Animator animator) {
                if (!this.mCancel) {
                    GuidePopupView.this.uB = null;
                }
            }
        };
        this.uO = new AnimatorListenerAdapter() {
            private boolean mCancel;

            public void onAnimationStart(Animator animator) {
                this.mCancel = false;
                GuidePopupView.this.tm = true;
            }

            public void onAnimationCancel(Animator animator) {
                this.mCancel = true;
            }

            public void onAnimationEnd(Animator animator) {
                if (!this.mCancel) {
                    GuidePopupView.this.tm = false;
                    GuidePopupView.this.uB = null;
                    GuidePopupView.this.uA.dismiss();
                    GuidePopupView.this.setArrowMode(-1);
                }
            }
        };
        this.ty = -1;
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GuidePopupView, i, 0);
        this.uG = obtainStyledAttributes.getDimension(R.styleable.GuidePopupView_startPointRadius, 0.0f);
        this.uH = obtainStyledAttributes.getDimension(R.styleable.GuidePopupView_lineLength, 0.0f);
        this.uI = obtainStyledAttributes.getDimension(R.styleable.GuidePopupView_textCircleRadius, 0.0f);
        this.uJ = obtainStyledAttributes.getColor(R.styleable.GuidePopupView_android_colorBackground, 0);
        this.rl.setColor(obtainStyledAttributes.getColor(R.styleable.GuidePopupView_paintColor, -1));
        this.uK = obtainStyledAttributes.getDimensionPixelSize(R.styleable.GuidePopupView_android_textSize, 15);
        this.uL = obtainStyledAttributes.getColorStateList(R.styleable.GuidePopupView_android_textColor);
        obtainStyledAttributes.recycle();
        this.tn = (int) (this.uH + (this.uI * 2.5f));
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.uw = (LinearLayout) findViewById(R.id.text_group);
        this.ux = (LinearLayout) findViewById(R.id.mirrored_text_group);
    }

    /* JADX WARNING: Missing block: B:14:0x0067, code:
            if (((float) (r1 - r7)) < r11.uI) goto L_0x0096;
     */
    /* JADX WARNING: Missing block: B:17:0x0072, code:
            r2 = 6;
     */
    /* JADX WARNING: Missing block: B:19:0x007a, code:
            if (((float) (r1 - r7)) < r11.uI) goto L_0x00a1;
     */
    /* JADX WARNING: Missing block: B:23:0x008b, code:
            if (((float) (r0 - r4)) < r11.uI) goto L_0x0072;
     */
    /* JADX WARNING: Missing block: B:26:0x0096, code:
            r2 = 7;
     */
    /* JADX WARNING: Missing block: B:28:0x009e, code:
            if (((float) (r0 - r4)) < r11.uI) goto L_0x00a1;
     */
    /* JADX WARNING: Missing block: B:29:0x00a1, code:
            r2 = 5;
     */
    /* JADX WARNING: Missing block: B:30:0x00a3, code:
            r2 = r5;
     */
    /* JADX WARNING: Missing block: B:31:0x00a4, code:
            setArrowMode(r2);
     */
    /* JADX WARNING: Missing block: B:32:0x00a7, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void bG() {
        int width = getWidth();
        int height = getHeight();
        int i = 4;
        r3 = new int[4];
        int i2 = 0;
        r3[0] = this.uD;
        r3[1] = (height - this.uD) - this.uF;
        r3[2] = this.uC;
        r3[3] = (width - this.uC) - this.uE;
        int i3 = this.uC + (this.uE / 2);
        int i4 = this.uD + (this.uF / 2);
        int i5 = Integer.MIN_VALUE;
        int i6 = 0;
        while (i2 < 4) {
            if (r3[i2] >= this.tn) {
                break;
            }
            if (r3[i2] > i5) {
                i5 = r3[i2];
                i6 = i2;
            }
            i2++;
        }
        i2 = i6;
        switch (i2) {
            case 0:
                if (((float) i3) >= this.uI) {
                    break;
                }
                break;
            case 1:
                if (((float) i3) >= this.uI) {
                    break;
                }
                break;
            case 2:
                if (((float) i4) >= this.uI) {
                    break;
                }
                break;
            case 3:
                if (((float) i4) >= this.uI) {
                    break;
                }
                break;
        }
    }

    private void by() {
        bL();
        a(this.ty, this.uw, this.sW, this.sX);
        if (this.uM) {
            a(bM(), this.ux, -this.sW, -this.sX);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.uE == 0 || this.uF == 0) {
            setAnchor(this.sN);
        }
        this.uI = (float) Math.max(Math.sqrt(Math.pow((double) this.uw.getMeasuredWidth(), 2.0d) + Math.pow((double) this.uw.getMeasuredHeight(), 2.0d)) / 2.0d, (double) this.uI);
        if (this.uM) {
            this.uI = (float) Math.max(Math.sqrt(Math.pow((double) this.ux.getMeasuredWidth(), 2.0d) + Math.pow((double) this.ux.getMeasuredHeight(), 2.0d)) / 2.0d, (double) this.uI);
        }
        if (this.ty == -1) {
            bG();
        } else {
            by();
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        canvas.save();
        canvas.translate((float) this.uC, (float) this.uD);
        this.sN.setDrawingCacheEnabled(true);
        this.sN.buildDrawingCache();
        canvas.drawBitmap(this.sN.getDrawingCache(), 0.0f, 0.0f, null);
        this.sN.setDrawingCacheEnabled(false);
        canvas.restore();
        a(canvas, this.ty, this.sW, this.sX);
        if (this.uM) {
            a(canvas, bM(), -this.sW, -this.sX);
        }
    }

    private void a(Canvas canvas, int i, int i2, int i3) {
        float f;
        this.rl.setAntiAlias(true);
        this.rl.setStyle(Style.FILL);
        float f2 = (float) ((this.uC + (this.uE / 2)) + i2);
        float f3 = (float) ((this.uD + (this.uF / 2)) + i3);
        switch (i) {
            case 0:
                f = 180.0f;
                break;
            case 2:
                f = 90.0f;
                break;
            case 3:
                f = -90.0f;
                break;
            case 4:
                f = -45.0f;
                break;
            case 5:
                f = 135.0f;
                break;
            case 6:
                f = 45.0f;
                break;
            case 7:
                f = -135.0f;
                break;
            default:
                f = 0.0f;
                break;
        }
        canvas.save();
        canvas.rotate(f, f2, f3);
        canvas.translate(0.0f, (float) this.uz);
        i = canvas.save();
        float f4 = f3;
        canvas.clipRect(f2 - 2.0f, f4, f2 + 2.0f, f3 + this.uG, Op.DIFFERENCE);
        canvas.drawCircle(f2, f3, this.uG, this.rl);
        canvas.restoreToCount(i);
        this.rl.setStyle(Style.STROKE);
        this.rl.setStrokeWidth(4.0f);
        canvas.drawLine(f2, f4, f2, f3 + this.uH, this.rl);
        f3 = (f3 + this.uH) + this.uI;
        this.rl.setStyle(Style.STROKE);
        this.rl.setStrokeWidth(4.0f);
        canvas.drawCircle(f2, f3, this.uI, this.rl);
        canvas.restore();
    }

    private void a(int i, LinearLayout linearLayout, int i2, int i3) {
        float f = (((float) this.uz) + this.uH) + this.uI;
        int i4 = this.uC + (this.uE / 2);
        int i5 = this.uD + (this.uF / 2);
        int i6 = 0;
        switch (i) {
            case 0:
            case 5:
            case 7:
                i6 = i4 - (linearLayout.getMeasuredWidth() / 2);
                i4 = (int) ((((float) i5) - f) - ((float) (linearLayout.getMeasuredHeight() / 2)));
                break;
            case 1:
            case 4:
            case 6:
                i6 = i4 - (linearLayout.getMeasuredWidth() / 2);
                i4 = (int) ((((float) i5) + f) - ((float) (linearLayout.getMeasuredHeight() / 2)));
                break;
            case 2:
                i6 = (int) ((((float) i4) - f) - ((float) (linearLayout.getMeasuredWidth() / 2)));
                i4 = i5 - (linearLayout.getMeasuredHeight() / 2);
                break;
            case 3:
                i6 = (int) ((((float) i4) + f) - ((float) (linearLayout.getMeasuredWidth() / 2)));
                i4 = i5 - (linearLayout.getMeasuredHeight() / 2);
                break;
            default:
                i4 = 0;
                break;
        }
        i5 = (int) (((double) f) * Math.sin(0.7853981633974483d));
        int i7 = (int) (f - ((float) i5));
        switch (i) {
            case 4:
                i6 += i5;
                i4 -= i7;
                break;
            case 5:
                i6 -= i5;
                i4 += i7;
                break;
            case 6:
                i6 -= i5;
                i4 -= i7;
                break;
            case 7:
                i6 += i5;
                i4 += i7;
                break;
        }
        i6 += i2;
        i4 += i3;
        linearLayout.layout(i6, i4, linearLayout.getMeasuredWidth() + i6, linearLayout.getMeasuredHeight() + i4);
    }

    private void bL() {
        if (this.uy) {
            int i = this.uE / 2;
            int i2 = this.uF / 2;
            int sqrt = (int) Math.sqrt(Math.pow((double) i, 2.0d) + Math.pow((double) i2, 2.0d));
            switch (this.ty) {
                case 0:
                case 1:
                    this.uz = i2;
                    break;
                case 2:
                case 3:
                    this.uz = i;
                    break;
                default:
                    this.uz = sqrt;
                    break;
            }
            return;
        }
        this.uz = 0;
    }

    private int bM() {
        if (this.ty == -1) {
            return -1;
        }
        if (this.ty % 2 == 0) {
            return this.ty + 1;
        }
        return this.ty - 1;
    }

    public void animateToShow() {
        setAlpha(0.0f);
        invalidate();
        getViewTreeObserver().addOnPreDrawListener(new OnPreDrawListener() {
            public boolean onPreDraw() {
                GuidePopupView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                if (GuidePopupView.this.uB != null) {
                    GuidePopupView.this.uB.cancel();
                }
                GuidePopupView.this.uB = ObjectAnimator.ofFloat(GuidePopupView.this, View.ALPHA, new float[]{1.0f});
                GuidePopupView.this.uB.setDuration(300);
                GuidePopupView.this.uB.addListener(GuidePopupView.this.uN);
                GuidePopupView.this.uB.start();
                return true;
            }
        });
    }

    public void animateToDismiss() {
        if (!this.tm) {
            if (this.uB != null) {
                this.uB.cancel();
            }
            this.uB = ObjectAnimator.ofFloat(this, View.ALPHA, new float[]{0.0f});
            this.uB.setDuration(200);
            this.uB.addListener(this.uO);
            this.uB.start();
        }
    }

    public int getArrowMode() {
        return this.ty;
    }

    public void setArrowMode(int i) {
        this.ty = i;
    }

    public void setArrowMode(int i, boolean z) {
        setArrowMode(i);
        this.uM = z;
        if (this.uM) {
            this.ux.setVisibility(0);
        } else {
            this.ux.setVisibility(8);
        }
    }

    public void setAnchor(View view) {
        this.sN = view;
        this.uE = this.sN.getWidth();
        this.uF = this.sN.getHeight();
        int[] iArr = new int[2];
        this.sN.getLocationInWindow(iArr);
        this.uC = iArr[0];
        this.uD = iArr[1];
    }

    public void setOffset(int i, int i2) {
        this.sW = i;
        this.sX = i2;
        this.uy = false;
    }

    public void clearOffset() {
        setOffset(0, 0);
        this.uy = true;
    }

    public void setGuidePopupWindow(GuidePopupWindow guidePopupWindow) {
        this.uA = guidePopupWindow;
    }

    public int getColorBackground() {
        return this.uJ;
    }

    public void addGuideTextView(LinearLayout linearLayout, String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("\n");
            if (split != null && split.length != 0) {
                for (CharSequence text : split) {
                    TextView textView = (TextView) inflate(this.mContext, R.layout.guide_popup_text_view, null);
                    textView.setText(text);
                    textView.setTextSize(0, (float) this.uK);
                    if (this.uL != null) {
                        textView.setTextColor(this.uL);
                    }
                    linearLayout.addView(textView);
                }
            }
        }
    }

    public void setTouchInterceptor(OnTouchListener onTouchListener) {
        this.th = onTouchListener;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        Rect rect = new Rect(this.uC, this.uD, this.uC + this.sN.getWidth(), this.uD + this.sN.getHeight());
        if (motionEvent.getAction() == 0 && rect.contains(x, y)) {
            this.sN.callOnClick();
            return true;
        }
        this.uA.dismiss(true);
        return true;
    }
}

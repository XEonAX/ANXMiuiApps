package miui.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import com.miui.internal.util.DeviceHelper;
import com.miui.internal.widget.ViewDragHelper;
import com.miui.internal.widget.ViewDragHelper.Callback;
import miui.R;
import miui.util.ViewUtils;

public class NavigationLayout extends ViewGroup {
    public static final int ABSOLUTE = 0;
    public static final int DRAWER_ENABLED_LANDSCAPE = 2;
    public static final int DRAWER_ENABLED_NONE = 0;
    public static final int DRAWER_ENABLED_PORTRAIT = 1;
    public static final int DRAWER_MODE_CONTENT_SQUEEZED = 2;
    public static final int DRAWER_MODE_OVERLAY = 0;
    public static final int DRAWER_MODE_PUSHED_AWAY = 1;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNLOCKED = 0;
    public static final int RELATIVE_TO_PARENT = 1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final int UH = 400;
    private static final int UI = -856295433;
    private static final int UJ = 150;
    private static final float UL = 0.5f;
    private float Ns;
    private View Rw;
    private final ViewDragHelper UM;
    private int UN;
    private boolean UO;
    private int UP;
    private View UQ;
    private WidthDescription UR;
    private WidthDescription US;
    private Drawable UT;
    private int UU;
    private Drawable UV;
    private float UW;
    private boolean UX;
    private int Va;
    private Paint Vb;
    private NavigationListener Vc;
    private boolean Vd;
    private int Ve;
    private Runnable Vf;
    private float Vg;
    private float Vh;
    private ValueAnimator Vi;
    private AnimatorUpdateListener Vj;
    private View Vk;
    private boolean Vl;
    private Rect ti;

    protected static class LayoutParams extends MarginLayoutParams {
        float Oa;
        boolean Vn;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public interface NavigationListener {
        void onDrawerClosed();

        void onDrawerDragStateChanged(int i);

        void onDrawerEnableStateChange(boolean z);

        void onDrawerOpened();

        void onDrawerSlide(float f);
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: j */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: as */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        float Oa;

        /* synthetic */ SavedState(Parcelable parcelable, AnonymousClass1 anonymousClass1) {
            this(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.Oa = parcel.readFloat();
        }

        private SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.Oa);
        }
    }

    private class ViewDragCallback extends Callback {
        private ViewDragCallback() {
        }

        /* synthetic */ ViewDragCallback(NavigationLayout navigationLayout, AnonymousClass1 anonymousClass1) {
            this();
        }

        public boolean tryCaptureView(View view, int i) {
            return view == NavigationLayout.this.UQ && NavigationLayout.this.getDrawerLockMode() == 0;
        }

        public int getViewHorizontalDragRange(View view) {
            return view == NavigationLayout.this.UQ ? NavigationLayout.this.UQ.getWidth() : 0;
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            if (view == NavigationLayout.this.UQ) {
                int width = NavigationLayout.this.UQ.getWidth();
                NavigationLayout.this.c(((float) (NavigationLayout.this.Vl ? NavigationLayout.this.getWidth() - i : i + width)) / ((float) width));
                NavigationLayout.this.invalidate();
            }
        }

        public void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).Vn = false;
        }

        public void onViewReleased(View view, float f, float f2) {
            int width;
            f2 = NavigationLayout.this.fa();
            int width2 = view.getWidth();
            Object obj = null;
            if (NavigationLayout.this.Vl) {
                width = NavigationLayout.this.getWidth() - width2;
            } else {
                width = 0;
            }
            width2 = NavigationLayout.this.Vl ? NavigationLayout.this.getWidth() : -width2;
            if (NavigationLayout.this.Vl ? f >= 0.0f : f <= 0.0f) {
                obj = 1;
            }
            if (obj != null || (f == 0.0f && f2 > NavigationLayout.UL)) {
                width2 = width;
            }
            NavigationLayout.this.UM.settleCapturedViewAt(width2, view.getTop());
            NavigationLayout.this.invalidate();
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            i2 = NavigationLayout.this.Vl ? NavigationLayout.this.getWidth() - view.getWidth() : -view.getWidth();
            return Math.max(i2, Math.min(i, view.getWidth() + i2));
        }

        public void onEdgeTouched(int i, int i2) {
            NavigationLayout.this.postDelayed(NavigationLayout.this.Vf, 150);
        }

        public void onEdgeDragStarted(int i, int i2) {
            if (NavigationLayout.this.getDrawerLockMode() == 0) {
                NavigationLayout.this.UM.captureChildView(NavigationLayout.this.UQ, i2);
                NavigationLayout.this.removeCallbacks(NavigationLayout.this.Vf);
            }
        }

        public void onViewDragStateChanged(int i) {
            if (NavigationLayout.this.Vc != null) {
                if (i == 0) {
                    if (NavigationLayout.this.isNavigationDrawerOpen()) {
                        NavigationLayout.this.Vc.onDrawerOpened();
                    } else {
                        NavigationLayout.this.Vc.onDrawerClosed();
                    }
                }
                NavigationLayout.this.Vc.onDrawerDragStateChanged(i);
            }
        }
    }

    private static class WidthDescription {
        public int type;
        public float value;

        private WidthDescription() {
        }

        static WidthDescription a(TypedValue typedValue, Resources resources) {
            WidthDescription widthDescription = new WidthDescription();
            if (typedValue == null) {
                widthDescription.type = 1;
                widthDescription.value = 0.3f;
            } else if (typedValue.type == 6) {
                widthDescription.type = 1;
                widthDescription.value = TypedValue.complexToFloat(typedValue.data);
                return widthDescription;
            } else if (typedValue.type == 4) {
                widthDescription.type = 1;
                widthDescription.value = typedValue.getFloat();
                return widthDescription;
            } else if (typedValue.type == 5) {
                widthDescription.type = 0;
                widthDescription.value = (float) TypedValue.complexToDimensionPixelSize(typedValue.data, resources.getDisplayMetrics());
                return widthDescription;
            }
            widthDescription.type = 1;
            widthDescription.value = 0.3f;
            return widthDescription;
        }
    }

    public NavigationLayout(Context context) {
        this(context, null);
    }

    public NavigationLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationLayoutStyle);
    }

    public NavigationLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ti = new Rect();
        this.Va = UI;
        this.Vb = new Paint();
        this.Vd = true;
        this.Ve = 0;
        this.Vf = new Runnable() {
            public void run() {
                View a = NavigationLayout.this.UQ;
                int edgeSize = NavigationLayout.this.UM.getEdgeSize();
                int i = 0;
                if (NavigationLayout.this.Vl) {
                    if (a != null) {
                        i = NavigationLayout.this.getWidth();
                    }
                    i -= edgeSize;
                } else {
                    if (a != null) {
                        i = -a.getWidth();
                    }
                    i += edgeSize;
                }
                if (a != null && a.getLeft() < i && NavigationLayout.this.getDrawerLockMode() == 0) {
                    LayoutParams layoutParams = (LayoutParams) a.getLayoutParams();
                    NavigationLayout.this.UM.smoothSlideViewTo(a, i, a.getTop());
                    layoutParams.Vn = true;
                    NavigationLayout.this.invalidate();
                    NavigationLayout.this.eY();
                }
            }
        };
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NavigationLayout, i, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.NavigationLayout_navigationDivider);
        if (drawable != null) {
            setDivider(drawable);
        }
        drawable = obtainStyledAttributes.getDrawable(R.styleable.NavigationLayout_navigationShadow);
        if (drawable != null) {
            setNavigationShadow(drawable);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.NavigationLayout_navigationDividerWidth, 0);
        if (dimensionPixelSize != 0) {
            setDividerWidth(dimensionPixelSize);
        }
        this.Va = obtainStyledAttributes.getColor(R.styleable.NavigationLayout_navigationScrimColor, UI);
        this.UN = obtainStyledAttributes.getInt(R.styleable.NavigationLayout_drawerEnabledOrientation, 0);
        this.UR = WidthDescription.a(obtainStyledAttributes.peekValue(R.styleable.NavigationLayout_portraitNavigationWidth), getResources());
        this.US = WidthDescription.a(obtainStyledAttributes.peekValue(R.styleable.NavigationLayout_landscapeNavigationWidth), getResources());
        this.UP = obtainStyledAttributes.getInt(R.styleable.NavigationLayout_drawerMode, 0);
        obtainStyledAttributes.recycle();
        this.UM = ViewDragHelper.create(this, UL, new ViewDragCallback(this, null));
        this.UM.setMinVelocity(400.0f * getResources().getDisplayMetrics().density);
        setFocusableInTouchMode(true);
    }

    public void onRtlPropertiesChanged(int i) {
        int i2 = 1;
        this.Vl = i == 1;
        ViewDragHelper viewDragHelper = this.UM;
        if (this.Vl) {
            i2 = 2;
        }
        viewDragHelper.setEdgeTrackingEnabled(i2);
    }

    public void setNavigationListener(NavigationListener navigationListener) {
        this.Vc = navigationListener;
    }

    public int getDrawerEnabledOrientation() {
        return this.UN;
    }

    public void setDrawerEnabledOrientation(int i) {
        this.UN = i;
        requestLayout();
    }

    public void setNavigationShadow(Drawable drawable) {
        this.UV = drawable;
        invalidate();
    }

    public void setNavigationShadow(int i) {
        setNavigationShadow(getResources().getDrawable(i));
    }

    public void setDivider(Drawable drawable) {
        if (drawable != null) {
            this.UU = drawable.getIntrinsicHeight();
        } else {
            this.UU = 0;
        }
        this.UT = drawable;
        requestLayout();
        invalidate();
    }

    public int getDividerWidth() {
        return this.UU;
    }

    public void setDividerWidth(int i) {
        this.UU = i;
        requestLayout();
        invalidate();
    }

    private void a(View view, boolean z) {
        if (view.isEnabled() != z) {
            if (this.Vk == null || this.Vk == view || this.Vk.isEnabled() || z) {
                view.setEnabled(z);
                float f = 0.0f;
                if (this.Vi != null) {
                    this.Vi.cancel();
                    ValueAnimator valueAnimator = this.Vi;
                    float[] fArr = new float[2];
                    fArr[0] = z ? 1.0f : 0.0f;
                    fArr[1] = z ? 0.0f : 1.0f;
                    valueAnimator.setFloatValues(fArr);
                } else {
                    float[] fArr2 = new float[2];
                    fArr2[0] = z ? 1.0f : 0.0f;
                    fArr2[1] = z ? 0.0f : 1.0f;
                    this.Vi = ValueAnimator.ofFloat(fArr2);
                }
                this.Vk = view;
                this.Vi.setDuration(DeviceHelper.FEATURE_WHOLE_ANIM ? 500 : 0);
                this.Vi.addUpdateListener(eX());
                if (z) {
                    f = 1.0f;
                }
                this.Vh = f;
                this.Vi.start();
            }
        }
    }

    public void setNavigationEanbled(boolean z) {
        a(this.UQ, z);
    }

    public void setContentEnabled(boolean z) {
        a(this.Rw, z);
    }

    public void setDrawerMode(int i) {
        this.UP = i;
        requestLayout();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!(this.Vk == null || this.Vk.isEnabled())) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int left = this.Vk.getLeft();
            int right = this.Vk.getRight();
            int top = this.Vk.getTop();
            int bottom = this.Vk.getBottom();
            if (left < x && x < right && top < y && y < bottom) {
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private AnimatorUpdateListener eX() {
        if (this.Vj == null) {
            this.Vj = new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (NavigationLayout.this.Vk != null) {
                        NavigationLayout.this.Vh = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        NavigationLayout.this.postInvalidateOnAnimation(NavigationLayout.this.Vk.getLeft(), NavigationLayout.this.Vk.getTop(), NavigationLayout.this.Vk.getRight(), NavigationLayout.this.Vk.getBottom());
                    }
                }
            };
        }
        return this.Vj;
    }

    private void bk() {
        if (this.Rw == null) {
            this.Rw = findViewById(R.id.content);
            this.UQ = findViewById(R.id.navigation);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        bk();
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00b8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z = false;
        this.Vd = false;
        bk();
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        int i4 = getResources().getConfiguration().orientation == 2 ? 1 : false;
        WidthDescription widthDescription = i4 != 0 ? this.US : this.UR;
        switch (widthDescription.type) {
            case 0:
                size = (int) widthDescription.value;
                break;
            case 1:
                size = (int) (widthDescription.value * ((float) size));
                break;
            default:
                size = 0;
                break;
        }
        measureChild(this.UQ, MeasureSpec.makeMeasureSpec(size, 1073741824), MeasureSpec.makeMeasureSpec(size2, 1073741824));
        if (this.UP == 2) {
            LayoutParams layoutParams = (LayoutParams) this.UQ.getLayoutParams();
            if (layoutParams.Oa > UL) {
                size2 = this.UQ.getMeasuredWidth();
            } else {
                size2 = 0;
            }
            this.Rw.setAlpha(Math.abs(layoutParams.Oa - UL) / UL);
            i3 = size2;
        } else {
            i3 = false;
        }
        if ((this.UN & 2) != 0 && i4 != 0) {
            measureChildWithMargins(this.Rw, i, i3, i2, 0);
        } else if ((this.UN & 1) == 0 || i4 != 0) {
            measureChildWithMargins(this.Rw, i, this.UQ.getMeasuredWidth() + this.UU, i2, 0);
            if (this.UO == z) {
                this.UO = z;
                if (this.Vc != null) {
                    this.Vc.onDrawerEnableStateChange(z);
                    return;
                }
                return;
            }
            return;
        } else {
            measureChildWithMargins(this.Rw, i, i3, i2, 0);
        }
        z = true;
        if (this.UO == z) {
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i;
        int i6;
        if (this.UO) {
            int i7;
            int measuredWidth = this.UQ.getMeasuredWidth();
            LayoutParams layoutParams = (LayoutParams) this.UQ.getLayoutParams();
            float f = (float) (-measuredWidth);
            float f2 = (float) measuredWidth;
            i6 = (int) ((layoutParams.Oa * f2) + f);
            ViewUtils.layoutChildView(this, this.UQ, i6, i2, i6 + measuredWidth, i2 + this.UQ.getMeasuredHeight());
            measuredWidth = this.Rw.getMeasuredWidth() + i5;
            if (this.UP == 1) {
                int i8 = (int) (f * layoutParams.Oa);
                View view = this.Rw;
                if (this.Vl) {
                    i8 = 0 - i8;
                }
                view.setScrollX(i8);
            } else if (this.UP == 0) {
                this.Rw.setScrollX(0);
            } else if (this.UP == 2) {
                i7 = i3;
                i6 = (int) (((float) i5) + (f2 * layoutParams.Oa));
                ViewUtils.layoutChildView(this, this.Rw, i6, i2, i7, i2 + this.Rw.getMeasuredHeight());
                return;
            }
            i7 = measuredWidth;
            i6 = i5;
            ViewUtils.layoutChildView(this, this.Rw, i6, i2, i7, i2 + this.Rw.getMeasuredHeight());
            return;
        }
        int i9 = i2;
        ViewUtils.layoutChildView(this, this.UQ, i5, i9, i5 + this.UQ.getMeasuredWidth(), i2 + this.UQ.getMeasuredHeight());
        i6 = (this.UQ.getMeasuredWidth() + i5) + this.UU;
        ViewUtils.layoutChildView(this, this.Rw, i6, i9, i6 + this.Rw.getMeasuredWidth(), i2 + this.Rw.getMeasuredHeight());
        this.Rw.setScrollX(0);
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.UO) {
            c(canvas);
            e(canvas);
            return;
        }
        f(canvas);
        d(canvas);
    }

    public void setScrimColor(int i) {
        this.Va = i;
    }

    private void c(Canvas canvas) {
        if (this.Vg > 0.0f) {
            this.Vb.setColor((((int) (((float) ((this.Va & -16777216) >>> 24)) * this.Vg)) << 24) | (this.Va & 16777215));
            canvas.drawRect((float) (this.Vl ? 0 : this.UQ.getRight()), 0.0f, (float) (this.Vl ? this.UQ.getLeft() : getWidth()), (float) getHeight(), this.Vb);
        }
    }

    private void d(Canvas canvas) {
        if (this.Vh > 0.0f && this.Vk != null) {
            this.Vb.setColor((((int) (((float) ((this.Va & -16777216) >>> 24)) * this.Vh)) << 24) | (this.Va & 16777215));
            canvas.drawRect((float) this.Vk.getLeft(), (float) this.Vk.getTop(), (float) this.Vk.getRight(), (float) this.Vk.getBottom(), this.Vb);
        }
    }

    private void e(Canvas canvas) {
        if (this.UV != null) {
            int intrinsicWidth = this.UV.getIntrinsicWidth();
            int left = this.Vl ? this.UQ.getLeft() - intrinsicWidth : this.UQ.getRight();
            this.UV.setBounds(left, this.UQ.getTop(), intrinsicWidth + left, this.UQ.getBottom());
            this.UV.draw(canvas);
        }
    }

    private void f(Canvas canvas) {
        Rect rect = this.ti;
        int measuredWidth = this.UQ.getMeasuredWidth();
        if (this.Vl) {
            measuredWidth = (getWidth() - measuredWidth) - this.UU;
        }
        rect.set(measuredWidth, getPaddingTop(), this.UU + measuredWidth, getBottom() - getPaddingBottom());
        Drawable drawable = this.UT;
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean shouldInterceptTouchEvent = this.UM.shouldInterceptTouchEvent(motionEvent);
        if (!this.UO || this.Ve != 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        boolean z;
        boolean z2 = true;
        switch (motionEvent.getActionMasked()) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.Ns = x;
                this.UW = y;
                z = fa() > 0.0f && this.UM.findTopChildUnder((int) x, (int) y) == this.Rw;
                this.UX = false;
                break;
            case 1:
            case 3:
                removeCallbacks(this.Vf);
                fb();
                this.UX = false;
                break;
            case 2:
                if (this.UM.checkTouchSlop(3)) {
                    removeCallbacks(this.Vf);
                    break;
                }
                break;
        }
        z = false;
        if (!(shouldInterceptTouchEvent || z || eZ() || this.UX)) {
            z2 = false;
        }
        return z2;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.UM.processTouchEvent(motionEvent);
        if (!this.UO || this.Ve != 0) {
            return super.onTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z = false;
        if (actionMasked != 3) {
            switch (actionMasked) {
                case 0:
                    this.Ns = x;
                    this.UW = y;
                    this.UX = false;
                    break;
                case 1:
                    float f = x - this.Ns;
                    float f2 = y - this.UW;
                    int touchSlop = this.UM.getTouchSlop();
                    View findTopChildUnder = this.UM.findTopChildUnder((int) x, (int) y);
                    if (findTopChildUnder == null || findTopChildUnder != this.Rw || (f * f) + (f2 * f2) >= ((float) (touchSlop * touchSlop)) || !isNavigationDrawerOpen()) {
                        z = true;
                    }
                    removeCallbacks(this.Vf);
                    if (!z) {
                        if (this.Ve == 0) {
                            closeNavigationDrawer(true);
                            break;
                        }
                    }
                    fb();
                    break;
                    break;
            }
        }
        fb();
        this.UX = false;
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        int i;
        ViewDragHelper viewDragHelper = this.UM;
        if (this.Vl) {
            i = 2;
        } else {
            i = 1;
        }
        if (!viewDragHelper.isEdgeTouched(i)) {
            super.requestDisallowInterceptTouchEvent(z);
        }
        if (z) {
            fb();
        }
    }

    private void eY() {
        if (!this.UX) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.UX = true;
        }
    }

    private boolean eZ() {
        return ((LayoutParams) this.UQ.getLayoutParams()).Vn;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.UP == 2) {
            this.Vg = 0.0f;
        } else {
            this.Vg = fa();
        }
        if (this.UM.continueSettling(true)) {
            postInvalidateOnAnimation();
        }
    }

    private float fa() {
        return ((LayoutParams) this.UQ.getLayoutParams()).Oa;
    }

    private void c(float f) {
        LayoutParams layoutParams = (LayoutParams) this.UQ.getLayoutParams();
        if (f != layoutParams.Oa) {
            layoutParams.Oa = f;
            if (this.Vc != null) {
                this.Vc.onDrawerSlide(f);
            }
            if (this.UP == 0) {
                this.Rw.setScrollX(0);
            } else if (this.UP == 1) {
                int width = this.UQ.getWidth();
                View view = this.Rw;
                if (!this.Vl) {
                    width = -width;
                }
                view.setScrollX((int) (((float) width) * layoutParams.Oa));
            } else {
                requestLayout();
            }
        }
    }

    public void setDrawerLockMode(int i) {
        if (this.Ve != i) {
            this.Ve = i;
            if (i != 0) {
                this.UM.cancel();
            }
            switch (i) {
                case 1:
                    closeNavigationDrawer(false);
                    break;
                case 2:
                    openNavigationDrawer(false);
                    break;
            }
        }
    }

    public int getDrawerLockMode() {
        return this.Ve;
    }

    public void openNavigationDrawer(boolean z) {
        if (this.Vd) {
            z = false;
        }
        if (!z) {
            c(1.0f);
            if (this.Vc != null) {
                this.Vc.onDrawerOpened();
            }
        } else if (this.UO) {
            this.UM.smoothSlideViewTo(this.UQ, 0, this.UQ.getTop());
        } else {
            return;
        }
        invalidate();
    }

    private void fb() {
        LayoutParams layoutParams = (LayoutParams) this.UQ.getLayoutParams();
        if (layoutParams.Vn) {
            layoutParams.Vn = false;
            closeNavigationDrawer(true);
        }
    }

    public void closeNavigationDrawer(boolean z) {
        if (this.Vd) {
            z = false;
        }
        if (!z) {
            c(0.0f);
            if (this.Vc != null) {
                this.Vc.onDrawerClosed();
            }
        } else if (this.UO) {
            this.UM.smoothSlideViewTo(this.UQ, this.Vl ? getWidth() : -this.UQ.getWidth(), this.UQ.getTop());
        } else {
            return;
        }
        invalidate();
        removeCallbacks(this.Vf);
    }

    public boolean isNavigationDrawerOpen() {
        return ((LayoutParams) this.UQ.getLayoutParams()).Oa == 1.0f;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (getDrawerLockMode() != 0 || !this.UO || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        boolean isNavigationDrawerOpen = isNavigationDrawerOpen();
        closeNavigationDrawer(true);
        return isNavigationDrawerOpen;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState(), null);
        savedState.Oa = fa();
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        c(savedState.Oa);
        if (savedState.Oa >= UL) {
            openNavigationDrawer(false);
        } else {
            closeNavigationDrawer(false);
        }
    }
}

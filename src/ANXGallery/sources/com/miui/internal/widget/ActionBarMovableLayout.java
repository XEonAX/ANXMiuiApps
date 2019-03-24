package com.miui.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.widget.OverScroller;
import com.miui.internal.R;
import com.miui.internal.util.DeviceHelper;
import miui.app.ActionBar.OnScrollListener;

public class ActionBarMovableLayout extends ActionBarOverlayLayout {
    public static final int DEFAULT_SPRING_BACK_DURATION = 800;
    public static final int STATE_DOWN = 1;
    public static final int STATE_UNKNOWN = -1;
    public static final int STATE_UP = 0;
    private static final String TAG = ActionBarMovableLayout.class.getSimpleName();
    private static final boolean hJ = false;
    private final int fO;
    private float mLastMotionX;
    private float mLastMotionY;
    private View qM;
    private OverScroller qN;
    private int qO;
    private boolean qP;
    private int qQ;
    private int qR = -1;
    private final int qS;
    private final int qT;
    private int qU = -1;
    private int qV;
    private int qW = -1;
    private int qX;
    private int qY = 8;
    private boolean qZ;
    private boolean ra = true;
    private boolean rb;
    private VelocityTracker rc;
    private OnScrollListener rd;

    public ActionBarMovableLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarMovableLayout, R.attr.actionBarMovableLayoutStyle, 0);
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            this.qV = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBarMovableLayout_overScrollRange, 0);
        }
        this.qU = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBarMovableLayout_scrollRange, -1);
        this.qW = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ActionBarMovableLayout_scrollStart, -1);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.fO = viewConfiguration.getScaledTouchSlop();
        this.qN = new OverScroller(context);
        this.qS = viewConfiguration.getScaledMinimumFlingVelocity();
        this.qT = viewConfiguration.getScaledMaximumFlingVelocity();
        setOverScrollMode(0);
        obtainStyledAttributes.recycle();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View findViewById = findViewById(R.id.content_mask);
        if (findViewById != null && findViewById.getVisibility() == 0) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 2 && this.qP) {
            return true;
        }
        action &= 255;
        if (action != 6) {
            switch (action) {
                case 0:
                    this.mLastMotionY = motionEvent.getY();
                    this.mLastMotionX = motionEvent.getX();
                    this.qO = motionEvent.getPointerId(0);
                    be();
                    this.rc.addMovement(motionEvent);
                    this.qN.forceFinished(true);
                    break;
                case 1:
                case 3:
                    this.qP = false;
                    this.qO = -1;
                    bg();
                    onScrollEnd();
                    break;
                case 2:
                    if (shouldStartScroll(motionEvent)) {
                        this.qP = true;
                        bf();
                        this.rc.addMovement(motionEvent);
                        onScrollBegin();
                        break;
                    }
                    break;
            }
        }
        a(motionEvent);
        return this.qP;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        bf();
        this.rc.addMovement(motionEvent2);
        int computeVerticalVelocity;
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mLastMotionY = motionEvent.getY();
                this.qO = motionEvent2.getPointerId(0);
                break;
            case 1:
            case 3:
                if (this.qP) {
                    this.qP = false;
                    this.qO = -1;
                    computeVerticalVelocity = computeVerticalVelocity();
                    if (Math.abs(computeVerticalVelocity) <= this.qS) {
                        if (!this.qN.springBack(0, this.qQ, 0, 0, 0, getScrollRange())) {
                            springBack();
                            break;
                        }
                        invalidate();
                        break;
                    }
                    fling(computeVerticalVelocity);
                    break;
                }
                break;
            case 2:
                if (!this.qP) {
                    if (shouldStartScroll(motionEvent)) {
                        this.qP = true;
                        bf();
                        this.rc.addMovement(motionEvent2);
                        onScrollBegin();
                        break;
                    }
                }
                computeVerticalVelocity = motionEvent2.findPointerIndex(this.qO);
                if (computeVerticalVelocity != -1) {
                    float y = motionEvent2.getY(computeVerticalVelocity);
                    boolean overScrollBy = overScrollBy(0, (int) (y - this.mLastMotionY), 0, this.qQ, 0, getScrollRange(), 0, getOverScrollDistance(), true);
                    this.mLastMotionY = y;
                    if (overScrollBy) {
                        if (this.qQ == 0) {
                            this.qP = false;
                            this.qO = -1;
                            motionEvent2.setAction(0);
                            dispatchTouchEvent(motionEvent);
                        }
                        this.rc.clear();
                        break;
                    }
                }
                return false;
                break;
            case 5:
                computeVerticalVelocity = motionEvent.getActionIndex();
                this.mLastMotionY = (float) ((int) motionEvent2.getY(computeVerticalVelocity));
                this.qO = motionEvent2.getPointerId(computeVerticalVelocity);
                break;
            case 6:
                a(motionEvent);
                this.mLastMotionY = (float) ((int) motionEvent2.getY(motionEvent2.findPointerIndex(this.qO)));
                break;
        }
        return true;
    }

    public void computeScroll() {
        if (this.qN.computeScrollOffset()) {
            int i = this.qQ;
            int currY = this.qN.getCurrY();
            if (i != currY) {
                overScrollBy(0, currY - i, 0, this.qQ, 0, getScrollRange(), 0, getOverScrollDistance(), true);
            }
            postInvalidateOnAnimation();
        } else if (this.rb) {
            springBack();
            this.rb = false;
        }
    }

    protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        i = getOverScrollMode();
        boolean z2 = true;
        boolean z3 = i == 0 || (i == 1 && (computeVerticalScrollRange() > computeVerticalScrollExtent()));
        i2 += i4;
        if (!z3) {
            i8 = 0;
        }
        i = i8 + i6;
        if (i2 <= i) {
            if (i2 < 0) {
                i = 0;
            } else {
                i = i2;
                z2 = false;
            }
        }
        onOverScrolled(0, i, false, z2);
        return z2;
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        onScroll((float) i2);
        this.qQ = i2;
        if (this.qQ == 0 && z2) {
            i = computeVerticalVelocity();
            if (Math.abs(i) > this.qS * 2 && this.rd != null) {
                this.rd.onFling(((float) (-i)) * 0.2f, 500);
            }
        }
    }

    public void setInitialMotionY(int i) {
        this.qW = i;
    }

    public void setOverScrollDistance(int i) {
        if (DeviceHelper.FEATURE_WHOLE_ANIM) {
            this.qV = i;
        }
    }

    public int getOverScrollDistance() {
        return DeviceHelper.FEATURE_WHOLE_ANIM ? this.qV : 0;
    }

    public void setScrollRange(int i) {
        this.qU = i;
    }

    public int getScrollRange() {
        return this.qU;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.rd = onScrollListener;
    }

    public void setScrollStart(int i) {
        this.qX = i;
    }

    public int getScrollStart() {
        return this.qX;
    }

    public void setSpringBackEnabled(boolean z) {
        this.ra = z;
    }

    private boolean b(View view, int i, int i2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        int y = (int) view.getY();
        int x = (int) view.getX();
        int y2 = (int) (view.getY() + ((float) view.getHeight()));
        int x2 = (int) (view.getX() + ((float) view.getWidth()));
        if (view == this.qM) {
            int top = this.mActionBarTop.getTop();
            y += top;
            y2 += top;
        }
        if (i2 >= y && i2 < y2 && i >= x && i < x2) {
            z = true;
        }
        return z;
    }

    private void be() {
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        } else {
            this.rc.clear();
        }
    }

    private void bf() {
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        }
    }

    private void bg() {
        if (this.rc != null) {
            this.rc.recycle();
            this.rc = null;
        }
    }

    void bh() {
        this.qM = this.mActionBarTop.getTabContainer();
    }

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (view != this.mContentView) {
            super.measureChildWithMargins(view, i, i2, i3, i4);
            return;
        }
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, (((getPaddingLeft() + getPaddingRight()) + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin) + i2, marginLayoutParams.width), getChildMeasureSpec(i3, ((((((getPaddingTop() + getPaddingBottom()) + marginLayoutParams.bottomMargin) + this.mActionBarView.getMeasuredHeight()) + ((MarginLayoutParams) this.mActionBarView.getLayoutParams()).topMargin) - getScrollRange()) - getOverScrollDistance()) - this.qX, marginLayoutParams.height));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.qZ || bi()) {
            z = true;
        } else {
            z = false;
        }
        if (!this.qZ) {
            if (this.qW < 0) {
                this.qW = this.qU;
            }
            this.qQ = this.qW;
            this.qZ = true;
        }
        if (z) {
            applyTranslationY((float) this.qQ);
        }
    }

    protected int computeVerticalScrollExtent() {
        return 0;
    }

    protected int computeVerticalScrollRange() {
        return getScrollRange();
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
    }

    protected int computeVerticalVelocity() {
        VelocityTracker velocityTracker = this.rc;
        velocityTracker.computeCurrentVelocity(1000, (float) this.qT);
        return (int) velocityTracker.getYVelocity(this.qO);
    }

    protected void fling(int i) {
        int overScrollDistance = getOverScrollDistance();
        this.qN.fling(0, this.qQ, 0, i, 0, 0, 0, getScrollRange(), 0, overScrollDistance);
        this.rb = true;
        postInvalidate();
    }

    protected boolean shouldStartScroll(MotionEvent motionEvent) {
        int i = this.qO;
        int i2 = 0;
        if (i == -1) {
            return false;
        }
        i = motionEvent.findPointerIndex(i);
        if (i == -1) {
            Log.w(TAG, "invalid pointer index");
            return false;
        }
        float x = motionEvent.getX(i);
        float y = motionEvent.getY(i);
        i = (int) (y - this.mLastMotionY);
        int abs = Math.abs(i);
        int abs2 = (int) Math.abs(x - this.mLastMotionX);
        int i3 = (int) x;
        int i4 = (int) y;
        int i5 = (b(this.mContentView, i3, i4) || b(this.qM, i3, i4)) ? true : 0;
        boolean z = i5 != 0 && abs > this.fO && abs > abs2 && (this.qQ != 0 ? i <= 0 || this.qQ < getOverScrollDistance() || this.rd == null || !this.rd.onContentScrolled() : i >= 0 && (this.rd == null || !this.rd.onContentScrolled()));
        if (z) {
            this.mLastMotionY = y;
            this.mLastMotionX = x;
            if (i > 0) {
                i2 = 1;
            }
            this.qR = i2;
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
        return z;
    }

    protected void onScrollBegin() {
        if (this.rd != null) {
            this.rd.onStartScroll();
        }
    }

    protected void onScroll(float f) {
        applyTranslationY(f);
        if (this.rd != null) {
            this.rd.onScroll(this.qR, f / ((float) this.qU));
        }
    }

    protected void onScrollEnd() {
        this.qR = -1;
        if (this.rd != null) {
            this.rd.onStopScroll();
        }
    }

    protected float motionToTranslation(float f) {
        float f2 = ((((float) (-this.qV)) + f) - ((float) this.qU)) - ((float) this.qX);
        bh();
        if (this.qM == null || this.qM.getVisibility() != 0) {
            return f2;
        }
        return f2 - ((float) this.qM.getHeight());
    }

    protected void applyTranslationY(float f) {
        f = motionToTranslation(f);
        this.mContentView.setTranslationY(f);
        bh();
        if (this.qM != null) {
            this.qM.setTranslationY(f);
        }
    }

    protected void springBack() {
        if (this.ra) {
            int scrollRange = getScrollRange();
            this.qN.startScroll(0, this.qQ, 0, this.qQ > scrollRange / 2 ? scrollRange - this.qQ : -this.qQ, DEFAULT_SPRING_BACK_DURATION);
            postInvalidateOnAnimation();
        }
    }

    private void a(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (motionEvent.getPointerId(action) == this.qO) {
            action = action == 0 ? 1 : 0;
            this.mLastMotionY = (float) ((int) motionEvent.getY(action));
            this.qO = motionEvent.getPointerId(action);
            if (this.rc != null) {
                this.rc.clear();
            }
        }
    }

    private boolean bi() {
        bh();
        if (this.qM != null) {
            int visibility = this.qM.getVisibility();
            if (visibility != this.qY) {
                this.qY = visibility;
                return true;
            }
        }
        return false;
    }

    public void setMotionY(int i) {
        this.qQ = i;
        onScroll((float) i);
    }
}

package com.miui.internal.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.Arrays;

public class ViewDragHelper {
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator wD = new Interpolator() {
        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }
    };
    private static final int wi = 20;
    private static final int wj = 256;
    private static final int wk = 600;
    private int fO;
    private int qO = -1;
    private VelocityTracker rc;
    private View wA;
    private boolean wB;
    private final ViewGroup wC;
    private final Runnable wE = new Runnable() {
        public void run() {
            ViewDragHelper.this.B(0);
        }
    };
    private int wl;
    private float[] wm;
    private float[] wn;
    private float[] wo;
    private float[] wp;
    private int[] wq;
    private int[] wr;
    private int[] ws;
    private int wt;
    private float wu;
    private float wv;
    private int ww;
    private int wx;
    private Scroller wy;
    private final Callback wz;

    public static abstract class Callback {
        public abstract boolean tryCaptureView(View view, int i);

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return 0;
        }
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    public static ViewDragHelper create(ViewGroup viewGroup, float f, Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.fO = (int) (((float) create.fO) * (1.0f / f));
        return create;
    }

    private ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (callback != null) {
            this.wC = viewGroup;
            this.wz = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.ww = (int) ((20.0f * context.getResources().getDisplayMetrics().density) + 0.5f);
            this.fO = viewConfiguration.getScaledTouchSlop();
            this.wu = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.wv = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.wy = new Scroller(context, wD);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    public void setMinVelocity(float f) {
        this.wv = f;
    }

    public float getMinVelocity() {
        return this.wv;
    }

    public int getViewDragState() {
        return this.wl;
    }

    public void setEdgeTrackingEnabled(int i) {
        this.wx = i;
    }

    public int getEdgeSize() {
        return this.ww;
    }

    public void captureChildView(View view, int i) {
        if (view.getParent() == this.wC) {
            this.wA = view;
            this.qO = i;
            this.wz.onViewCaptured(view, i);
            B(1);
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
        stringBuilder.append(this.wC);
        stringBuilder.append(")");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public View getCapturedView() {
        return this.wA;
    }

    public int getActivePointerId() {
        return this.qO;
    }

    public int getTouchSlop() {
        return this.fO;
    }

    public void cancel() {
        this.qO = -1;
        bW();
        if (this.rc != null) {
            this.rc.recycle();
            this.rc = null;
        }
    }

    public void abort() {
        cancel();
        if (this.wl == 2) {
            int currX = this.wy.getCurrX();
            int currY = this.wy.getCurrY();
            this.wy.abortAnimation();
            int currX2 = this.wy.getCurrX();
            int currY2 = this.wy.getCurrY();
            this.wz.onViewPositionChanged(this.wA, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        B(0);
    }

    public boolean smoothSlideViewTo(View view, int i, int i2) {
        this.wA = view;
        this.qO = -1;
        return b(i, i2, 0, 0);
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (this.wB) {
            return b(i, i2, (int) this.rc.getXVelocity(this.qO), (int) this.rc.getYVelocity(this.qO));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    private boolean b(int i, int i2, int i3, int i4) {
        int left = this.wA.getLeft();
        int top = this.wA.getTop();
        i -= left;
        i2 -= top;
        if (i == 0 && i2 == 0) {
            this.wy.abortAnimation();
            B(0);
            return false;
        }
        this.wy.startScroll(left, top, i, i2, a(this.wA, i, i2, i3, i4));
        B(2);
        return true;
    }

    private int a(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        i3 = b(i3, (int) this.wv, (int) this.wu);
        i4 = b(i4, (int) this.wv, (int) this.wu);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(i3);
        int abs4 = Math.abs(i4);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (i3 != 0) {
            f = ((float) abs3) / ((float) i5);
        } else {
            f = ((float) abs) / ((float) i6);
        }
        if (i4 != 0) {
            f2 = ((float) abs4) / ((float) i5);
        } else {
            f2 = ((float) abs2) / ((float) i6);
        }
        return (int) ((((float) a(i, i3, this.wz.getViewHorizontalDragRange(view))) * f) + (((float) a(i2, i4, this.wz.getViewVerticalDragRange(view))) * f2));
    }

    private int a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.wC.getWidth();
        float f = (float) (width / 2);
        f += a(Math.min(1.0f, ((float) Math.abs(i)) / ((float) width))) * f;
        i2 = Math.abs(i2);
        if (i2 > 0) {
            i = 4 * Math.round(1000.0f * Math.abs(f / ((float) i2)));
        } else {
            i = (int) (((((float) Math.abs(i)) / ((float) i3)) + 1.0f) * 256.0f);
        }
        return Math.min(i, wk);
    }

    private int b(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        if (abs <= i3) {
            return i;
        }
        if (i <= 0) {
            i3 = -i3;
        }
        return i3;
    }

    private float a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        if (abs <= f3) {
            return f;
        }
        if (f <= 0.0f) {
            f3 = -f3;
        }
        return f3;
    }

    private float a(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (this.wB) {
            this.wy.fling(this.wA.getLeft(), this.wA.getTop(), (int) this.rc.getXVelocity(this.qO), (int) this.rc.getYVelocity(this.qO), i, i3, i2, i4);
            B(2);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public boolean continueSettling(boolean z) {
        if (this.wl == 2) {
            boolean computeScrollOffset = this.wy.computeScrollOffset();
            int currX = this.wy.getCurrX();
            int currY = this.wy.getCurrY();
            int left = currX - this.wA.getLeft();
            int top = currY - this.wA.getTop();
            if (left != 0) {
                this.wA.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.wA.offsetTopAndBottom(top);
            }
            if (!(left == 0 && top == 0)) {
                this.wz.onViewPositionChanged(this.wA, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.wy.getFinalX() && currY == this.wy.getFinalY()) {
                this.wy.abortAnimation();
                computeScrollOffset = this.wy.isFinished();
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.wC.post(this.wE);
                } else {
                    B(0);
                }
            }
        }
        if (this.wl == 2) {
            return true;
        }
        return false;
    }

    private void a(float f, float f2) {
        this.wB = true;
        this.wz.onViewReleased(this.wA, f, f2);
        this.wB = false;
        if (this.wl == 1) {
            B(0);
        }
    }

    private void bW() {
        if (this.wm != null) {
            Arrays.fill(this.wm, 0.0f);
            Arrays.fill(this.wn, 0.0f);
            Arrays.fill(this.wo, 0.0f);
            Arrays.fill(this.wp, 0.0f);
            Arrays.fill(this.wq, 0);
            Arrays.fill(this.wr, 0);
            Arrays.fill(this.ws, 0);
            this.wt = 0;
        }
    }

    private void z(int i) {
        if (this.wm != null && isPointerDown(i)) {
            this.wm[i] = 0.0f;
            this.wn[i] = 0.0f;
            this.wo[i] = 0.0f;
            this.wp[i] = 0.0f;
            this.wq[i] = 0;
            this.wr[i] = 0;
            this.ws[i] = 0;
            this.wt = (~(1 << i)) & this.wt;
        }
    }

    private void A(int i) {
        if (this.wm == null || this.wm.length <= i) {
            i++;
            Object obj = new float[i];
            Object obj2 = new float[i];
            Object obj3 = new float[i];
            Object obj4 = new float[i];
            Object obj5 = new int[i];
            Object obj6 = new int[i];
            Object obj7 = new int[i];
            if (this.wm != null) {
                System.arraycopy(this.wm, 0, obj, 0, this.wm.length);
                System.arraycopy(this.wn, 0, obj2, 0, this.wn.length);
                System.arraycopy(this.wo, 0, obj3, 0, this.wo.length);
                System.arraycopy(this.wp, 0, obj4, 0, this.wp.length);
                System.arraycopy(this.wq, 0, obj5, 0, this.wq.length);
                System.arraycopy(this.wr, 0, obj6, 0, this.wr.length);
                System.arraycopy(this.ws, 0, obj7, 0, this.ws.length);
            }
            this.wm = obj;
            this.wn = obj2;
            this.wo = obj3;
            this.wp = obj4;
            this.wq = obj5;
            this.wr = obj6;
            this.ws = obj7;
        }
    }

    private void a(float f, float f2, int i) {
        A(i);
        float[] fArr = this.wm;
        this.wo[i] = f;
        fArr[i] = f;
        fArr = this.wn;
        this.wp[i] = f2;
        fArr[i] = f2;
        this.wq[i] = g((int) f, (int) f2);
        this.wt |= 1 << i;
    }

    private void b(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (C(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.wo[pointerId] = x;
                this.wp[pointerId] = y;
            }
        }
    }

    public boolean isPointerDown(int i) {
        return ((1 << i) & this.wt) != 0;
    }

    void B(int i) {
        if (this.wl != i) {
            this.wl = i;
            this.wz.onViewDragStateChanged(i);
            if (i == 0) {
                this.wA = null;
            }
        }
    }

    boolean b(View view, int i) {
        if (view == this.wA && this.qO == i) {
            return true;
        }
        if (view == null || !this.wz.tryCaptureView(view, i)) {
            return false;
        }
        this.qO = i;
        captureChildView(view, i);
        return true;
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3, int i4) {
        View view2 = view;
        boolean z2 = true;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view2.getScrollX();
            int scrollY = view2.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i3 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight()) {
                    int i6 = i4 + scrollY;
                    if (i6 >= childAt.getTop() && i6 < childAt.getBottom()) {
                        if (canScroll(childAt, true, i, i2, i5 - childAt.getLeft(), i6 - childAt.getTop())) {
                            return true;
                        }
                    }
                }
            }
        }
        if (!(z && (view2.canScrollHorizontally(-i) || view2.canScrollVertically(-i2)))) {
            z2 = false;
        }
        return z2;
    }

    public boolean shouldInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        }
        this.rc.addMovement(motionEvent);
        int pointerId;
        float x;
        switch (actionMasked) {
            case 0:
                float x2 = motionEvent.getX();
                float y = motionEvent.getY();
                pointerId = motionEvent.getPointerId(0);
                a(x2, y, pointerId);
                View findTopChildUnder = findTopChildUnder((int) x2, (int) y);
                if (findTopChildUnder == this.wA && this.wl == 2) {
                    b(findTopChildUnder, pointerId);
                }
                actionMasked = this.wq[pointerId];
                if ((this.wx & actionMasked) != 0) {
                    this.wz.onEdgeTouched(actionMasked & this.wx, pointerId);
                    break;
                }
                break;
            case 1:
            case 3:
                cancel();
                break;
            case 2:
                actionMasked = motionEvent.getPointerCount();
                for (actionIndex = 0; actionIndex < actionMasked; actionIndex++) {
                    int pointerId2 = motionEvent.getPointerId(actionIndex);
                    if (C(pointerId2)) {
                        x = motionEvent.getX(actionIndex);
                        float y2 = motionEvent.getY(actionIndex);
                        float f = x - this.wm[pointerId2];
                        float f2 = y2 - this.wn[pointerId2];
                        b(f, f2, pointerId2);
                        if (this.wl != 1) {
                            View findTopChildUnder2 = findTopChildUnder((int) x, (int) y2);
                            if (findTopChildUnder2 != null && a(findTopChildUnder2, f, f2) && b(findTopChildUnder2, pointerId2)) {
                            }
                        }
                        b(motionEvent);
                        break;
                    }
                }
                b(motionEvent);
            case 5:
                actionMasked = motionEvent.getPointerId(actionIndex);
                x = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                a(x, y3, actionMasked);
                if (this.wl != 0) {
                    if (this.wl == 2) {
                        View findTopChildUnder3 = findTopChildUnder((int) x, (int) y3);
                        if (findTopChildUnder3 == this.wA) {
                            b(findTopChildUnder3, actionMasked);
                            break;
                        }
                    }
                }
                pointerId = this.wq[actionMasked];
                if ((this.wx & pointerId) != 0) {
                    this.wz.onEdgeTouched(pointerId & this.wx, actionMasked);
                    break;
                }
                break;
            case 6:
                z(motionEvent.getPointerId(actionIndex));
                break;
        }
        if (this.wl == 1) {
            return true;
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0063  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void processTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.rc == null) {
            this.rc = VelocityTracker.obtain();
        }
        this.rc.addMovement(motionEvent);
        int i = 0;
        float y;
        int pointerId;
        switch (actionMasked) {
            case 0:
                float x = motionEvent.getX();
                y = motionEvent.getY();
                pointerId = motionEvent.getPointerId(0);
                View findTopChildUnder = findTopChildUnder((int) x, (int) y);
                a(x, y, pointerId);
                b(findTopChildUnder, pointerId);
                actionMasked = this.wq[pointerId];
                if ((this.wx & actionMasked) != 0) {
                    this.wz.onEdgeTouched(actionMasked & this.wx, pointerId);
                    return;
                }
                return;
            case 1:
                if (this.wl == 1) {
                    bX();
                }
                cancel();
                return;
            case 2:
                if (this.wl != 1) {
                    actionMasked = motionEvent.getPointerCount();
                    while (i < actionMasked) {
                        actionIndex = motionEvent.getPointerId(i);
                        if (C(actionIndex)) {
                            float x2 = motionEvent.getX(i);
                            float y2 = motionEvent.getY(i);
                            float f = x2 - this.wm[actionIndex];
                            float f2 = y2 - this.wn[actionIndex];
                            b(f, f2, actionIndex);
                            if (this.wl != 1) {
                                View findTopChildUnder2 = findTopChildUnder((int) x2, (int) y2);
                                if (a(findTopChildUnder2, f, f2) && b(findTopChildUnder2, actionIndex)) {
                                }
                            }
                            b(motionEvent);
                            return;
                        }
                        i++;
                    }
                    b(motionEvent);
                    return;
                } else if (C(this.qO)) {
                    actionMasked = motionEvent.findPointerIndex(this.qO);
                    if (actionMasked >= 0 && actionMasked < motionEvent.getPointerCount()) {
                        y = motionEvent.getX(actionMasked);
                        actionIndex = (int) (y - this.wo[this.qO]);
                        actionMasked = (int) (motionEvent.getY(actionMasked) - this.wp[this.qO]);
                        c(this.wA.getLeft() + actionIndex, this.wA.getTop() + actionMasked, actionIndex, actionMasked);
                        b(motionEvent);
                        return;
                    }
                    return;
                } else {
                    return;
                }
            case 3:
                if (this.wl == 1) {
                    a(0.0f, 0.0f);
                }
                cancel();
                return;
            case 5:
                actionMasked = motionEvent.getPointerId(actionIndex);
                float x3 = motionEvent.getX(actionIndex);
                float y3 = motionEvent.getY(actionIndex);
                a(x3, y3, actionMasked);
                if (this.wl == 0) {
                    b(findTopChildUnder((int) x3, (int) y3), actionMasked);
                    pointerId = this.wq[actionMasked];
                    if ((this.wx & pointerId) != 0) {
                        this.wz.onEdgeTouched(pointerId & this.wx, actionMasked);
                        return;
                    }
                    return;
                } else if (isCapturedViewUnder((int) x3, (int) y3)) {
                    b(this.wA, actionMasked);
                    return;
                } else {
                    return;
                }
            case 6:
                actionMasked = motionEvent.getPointerId(actionIndex);
                if (this.wl == 1 && actionMasked == this.qO) {
                    actionIndex = motionEvent.getPointerCount();
                    while (i < actionIndex) {
                        int pointerId2 = motionEvent.getPointerId(i);
                        if (pointerId2 != this.qO) {
                            if (findTopChildUnder((int) motionEvent.getX(i), (int) motionEvent.getY(i)) == this.wA && b(this.wA, pointerId2)) {
                                pointerId = this.qO;
                                if (pointerId == -1) {
                                    bX();
                                }
                            }
                        }
                        i++;
                    }
                    pointerId = -1;
                    if (pointerId == -1) {
                    }
                }
                z(actionMasked);
                return;
            default:
                return;
        }
    }

    private void b(float f, float f2, int i) {
        int i2 = 1;
        if (!a(f, f2, i, 1)) {
            i2 = 0;
        }
        if (a(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (a(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (a(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.wr;
            iArr[i] = iArr[i] | i2;
            this.wz.onEdgeDragStarted(i2, i);
        }
    }

    private boolean a(float f, float f2, int i, int i2) {
        f = Math.abs(f);
        f2 = Math.abs(f2);
        boolean z = false;
        if ((this.wq[i] & i2) != i2 || (this.wx & i2) == 0 || (this.ws[i] & i2) == i2 || (this.wr[i] & i2) == i2 || (f <= ((float) this.fO) && f2 <= ((float) this.fO))) {
            return false;
        }
        if (f >= f2 * 0.5f || !this.wz.onEdgeLock(i2)) {
            if ((this.wr[i] & i2) == 0 && f > ((float) this.fO)) {
                z = true;
            }
            return z;
        }
        int[] iArr = this.ws;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean a(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        boolean z2 = this.wz.getViewHorizontalDragRange(view) > 0;
        boolean z3 = this.wz.getViewVerticalDragRange(view) > 0;
        if (z2 && z3) {
            if ((f * f) + (f2 * f2) > ((float) (this.fO * this.fO))) {
                z = true;
            }
            return z;
        } else if (z2) {
            if (Math.abs(f2) < ((float) this.fO) && Math.abs(f) > ((float) this.fO)) {
                z = true;
            }
            return z;
        } else if (!z3) {
            return false;
        } else {
            if (Math.abs(f) < ((float) this.fO) && Math.abs(f2) > ((float) this.fO)) {
                z = true;
            }
            return z;
        }
    }

    public boolean checkTouchSlop(int i) {
        int length = this.wm.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i, int i2) {
        boolean z = false;
        if (!isPointerDown(i2)) {
            return false;
        }
        boolean z2 = (i & 1) == 1;
        boolean z3 = (i & 2) == 2;
        float f = this.wo[i2] - this.wm[i2];
        float f2 = this.wp[i2] - this.wn[i2];
        if (z2 && z3) {
            if ((f * f) + (f2 * f2) > ((float) (this.fO * this.fO))) {
                z = true;
            }
            return z;
        } else if (z2) {
            if (Math.abs(f) > ((float) this.fO)) {
                z = true;
            }
            return z;
        } else if (!z3) {
            return false;
        } else {
            if (Math.abs(f2) > ((float) this.fO)) {
                z = true;
            }
            return z;
        }
    }

    public boolean isEdgeTouched(int i) {
        int length = this.wq.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (i & this.wq[i2]) != 0;
    }

    private void bX() {
        this.rc.computeCurrentVelocity(1000, this.wu);
        a(a(this.rc.getXVelocity(this.qO), this.wv, this.wu), a(this.rc.getYVelocity(this.qO), this.wv, this.wu));
    }

    private void c(int i, int i2, int i3, int i4) {
        int left = this.wA.getLeft();
        int top = this.wA.getTop();
        if (i3 != 0) {
            i = this.wz.clampViewPositionHorizontal(this.wA, i, i3);
            this.wA.offsetLeftAndRight(i - left);
        }
        int i5 = i;
        if (i4 != 0) {
            i2 = this.wz.clampViewPositionVertical(this.wA, i2, i4);
            this.wA.offsetTopAndBottom(i2 - top);
        }
        int i6 = i2;
        if (i3 != 0 || i4 != 0) {
            this.wz.onViewPositionChanged(this.wA, i5, i6, i5 - left, i6 - top);
        }
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.wA, i, i2);
    }

    public boolean isViewUnder(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public View findTopChildUnder(int i, int i2) {
        for (int childCount = this.wC.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.wC.getChildAt(this.wz.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int g(int i, int i2) {
        int i3;
        if (i < this.wC.getLeft() + this.ww) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        if (i2 < this.wC.getTop() + this.ww) {
            i3 |= 4;
        }
        if (i > this.wC.getRight() - this.ww) {
            i3 |= 2;
        }
        if (i2 > this.wC.getBottom() - this.ww) {
            return i3 | 8;
        }
        return i3;
    }

    private boolean C(int i) {
        if (isPointerDown(i)) {
            return true;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Ignoring pointerId=");
        stringBuilder.append(i);
        stringBuilder.append(" because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        Log.e(str, stringBuilder.toString());
        return false;
    }
}

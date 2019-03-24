package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import miui.R;
import miui.util.AttributeResolver;

public class ScrollableViewDrawer extends FrameLayout {
    private static final String LOG_TAG = "ScrollableViewDrawer";
    private static final int STATE_DRAGGING = 1;
    private static final int ZK = 0;
    private static final int ZL = 2;
    private static final boolean ZN = false;
    private boolean NS;
    private int Vr;
    private int ZO;
    private int ZP;
    private View ZQ;
    private IScrollableView ZR;
    private int ZS;
    private Drawable ZT;
    private int ZU;
    private DrawerListener ZV;
    private int ZX;
    private boolean ZY;
    private boolean ZZ;
    private boolean aaa;
    private float aab;
    private float aac;
    private int aad;
    private int fO;
    private View mContentView;
    private float mLastMotionY;
    private int qR;
    private VelocityTracker rc;
    private Scroller wy;

    public interface IScrollableView {
        boolean canScroll();
    }

    private static class AdapterViewWrapper implements IScrollableView {
        private AdapterView<?> aae;

        public AdapterViewWrapper(AdapterView<?> adapterView) {
            this.aae = adapterView;
        }

        public boolean canScroll() {
            int firstVisiblePosition = this.aae.getFirstVisiblePosition();
            if (firstVisiblePosition > 0) {
                String str = ScrollableViewDrawer.LOG_TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("canScrollDown true first visible ");
                stringBuilder.append(firstVisiblePosition);
                Log.d(str, stringBuilder.toString());
                return true;
            }
            firstVisiblePosition = this.aae.getPaddingTop();
            int childCount = this.aae.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (this.aae.getChildAt(i).getTop() < firstVisiblePosition) {
                    String str2 = ScrollableViewDrawer.LOG_TAG;
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("canScrollDown true ");
                    stringBuilder2.append(i);
                    Log.d(str2, stringBuilder2.toString());
                    return true;
                }
            }
            return false;
        }
    }

    public interface DrawerListener {
        void onDrawerClosed(ScrollableViewDrawer scrollableViewDrawer);

        void onDrawerOpened(ScrollableViewDrawer scrollableViewDrawer);

        void onDrawerSlide(ScrollableViewDrawer scrollableViewDrawer, float f);
    }

    private static class ScrollViewWrapper implements IScrollableView {
        private ScrollView aaf;

        public ScrollViewWrapper(ScrollView scrollView) {
            this.aaf = scrollView;
        }

        public boolean canScroll() {
            return this.aaf.getScrollY() > 0;
        }
    }

    public ScrollableViewDrawer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrollableViewDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ZX = -1;
        this.fO = ViewConfiguration.get(context).getScaledTouchSlop();
        this.wy = new Scroller(context);
        this.rc = VelocityTracker.obtain();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollableViewDrawer, i, 0);
        this.ZO = obtainStyledAttributes.getResourceId(R.styleable.ScrollableViewDrawer_contentView, 0);
        if (this.ZO != 0) {
            this.ZP = obtainStyledAttributes.getResourceId(R.styleable.ScrollableViewDrawer_targetView, 0);
            if (this.ZP != 0) {
                this.Vr = obtainStyledAttributes.getResourceId(R.styleable.ScrollableViewDrawer_scrollableView, 0);
                if (this.Vr != 0) {
                    this.ZT = obtainStyledAttributes.getDrawable(R.styleable.ScrollableViewDrawer_scrollDivider);
                    if (this.ZT == null) {
                        this.ZT = AttributeResolver.resolveDrawable(context, R.attr.scrollDivider);
                    }
                    if (this.ZT != null) {
                        this.ZU = this.ZT.getIntrinsicHeight();
                    }
                    this.NS = obtainStyledAttributes.getBoolean(R.styleable.ScrollableViewDrawer_dragEnabled, true);
                    obtainStyledAttributes.recycle();
                    return;
                }
                throw new IllegalArgumentException("The scrollableView attribute is required and must refer to a valid child.");
            }
            throw new IllegalArgumentException("The targetView attribute is required and must refer to a valid child.");
        }
        throw new IllegalArgumentException("The contentView attribute is required and must refer to a valid child.");
    }

    protected void onFinishInflate() {
        this.mContentView = findViewById(this.ZO);
        if (this.mContentView == null) {
            throw new IllegalArgumentException("The contentView attribute is must refer to an existing child.");
        } else if (this.mContentView.getParent() == this) {
            this.ZQ = findViewById(this.ZP);
            if (this.ZQ != null) {
                View findViewById = this.ZQ.findViewById(this.Vr);
                if (findViewById == null) {
                    throw new IllegalArgumentException("The scrollableView attribute is must refer to an existing child of targetView.");
                } else if (findViewById instanceof IScrollableView) {
                    this.ZR = (IScrollableView) findViewById;
                    return;
                } else if (findViewById instanceof ScrollView) {
                    this.ZR = new ScrollViewWrapper((ScrollView) findViewById);
                    return;
                } else if (findViewById instanceof AdapterView) {
                    this.ZR = new AdapterViewWrapper((AdapterView) findViewById);
                    return;
                } else {
                    throw new IllegalArgumentException("The scrollableView attribute is must refer to an ScrollView or AdapterView or IScrollableViewWrapper.");
                }
            }
            throw new IllegalArgumentException("The targetView attribute is must refer to an existing child.");
        } else {
            throw new IllegalArgumentException("The contentView attribute is must be a direct child of ScrollableViewDrawer.");
        }
    }

    private int fI() {
        if (this.ZS == 0) {
            this.ZS = this.mContentView.getMeasuredHeight();
        }
        return this.ZS;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.NS) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        float y;
        if (actionMasked != 6) {
            switch (actionMasked) {
                case 0:
                    this.ZX = motionEvent.getPointerId(0);
                    this.ZY = false;
                    this.rc.clear();
                    this.rc.addMovement(motionEvent);
                    this.aab = motionEvent.getX(0);
                    y = motionEvent.getY(0);
                    this.aac = y;
                    this.mLastMotionY = y;
                    this.aad = (int) this.ZQ.getTranslationY();
                    break;
                case 1:
                case 3:
                    if (!this.ZY) {
                        this.rc.clear();
                    }
                    this.ZY = false;
                    this.aaa = false;
                    this.ZZ = false;
                    break;
                case 2:
                    actionMasked = motionEvent.findPointerIndex(this.ZX);
                    if (actionMasked == -1) {
                        this.ZX = motionEvent.getPointerId(0);
                        actionMasked = 0;
                    }
                    float x = motionEvent.getX(actionMasked) - this.aab;
                    float y2 = motionEvent.getY(actionMasked) - this.aac;
                    if (!(this.ZY || this.aaa)) {
                        if (this.aad == fI() && y2 < 0.0f) {
                            this.ZY = true;
                        } else if (y2 > ((float) this.fO)) {
                            this.ZY = fJ();
                        }
                        if (this.ZY) {
                            Log.d(LOG_TAG, "determine drag");
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                        if (Math.abs(y2) > ((float) this.fO) && !this.aaa) {
                            this.ZZ = true;
                        }
                        if (Math.abs(x) > ((float) this.fO) && !this.ZZ) {
                            this.aaa = true;
                        }
                    }
                    if (!this.ZY) {
                        this.rc.addMovement(motionEvent);
                        this.mLastMotionY = motionEvent.getY(actionMasked);
                        break;
                    }
                    break;
            }
        }
        actionMasked = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionMasked) == this.ZX) {
            actionMasked = actionMasked == 0 ? 1 : 0;
            this.ZX = motionEvent.getPointerId(actionMasked);
            this.aab = motionEvent.getX(actionMasked);
            y = motionEvent.getY(actionMasked);
            this.aac = y;
            this.mLastMotionY = y;
        }
        if (!(super.dispatchTouchEvent(motionEvent) || this.ZY)) {
            z = false;
        }
        return z;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 1:
                this.rc.addMovement(motionEvent);
                this.rc.computeCurrentVelocity(1000);
                if (this.aad == 0 || this.aad == fI()) {
                    fK();
                } else {
                    if (this.rc.getYVelocity() > 5.0f) {
                        this.wy.startScroll(0, this.aad, 0, fI() - this.aad);
                    } else {
                        this.wy.startScroll(0, this.aad, 0, -this.aad);
                    }
                    invalidate();
                }
                this.rc.clear();
                break;
            case 2:
                this.rc.addMovement(motionEvent);
                int findPointerIndex = motionEvent.findPointerIndex(this.ZX);
                if (findPointerIndex == -1) {
                    this.ZX = motionEvent.getPointerId(0);
                    findPointerIndex = 0;
                }
                float y = motionEvent.getY(findPointerIndex);
                this.aad = Math.max(0, Math.min(((int) (y - this.mLastMotionY)) + this.aad, fI()));
                this.mLastMotionY = y;
                fM();
                invalidate();
                break;
            case 3:
                if (this.aad == 0 || this.aad == fI()) {
                    fK();
                } else {
                    this.wy.startScroll(0, this.aad, 0, -this.aad);
                    invalidate();
                }
                this.rc.clear();
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.NS && this.ZY;
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.mContentView) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int top = view.getTop();
            int i = this.aad + top;
            if (this.ZU > 0) {
                this.ZT.setBounds(paddingLeft, i - this.ZU, width, i);
                this.ZT.draw(canvas);
                i -= this.ZU;
            }
            canvas.save();
            canvas.clipRect(paddingLeft, top, width, i);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        if (view == this.mContentView) {
            canvas.restore();
        }
        return drawChild;
    }

    private boolean fJ() {
        return (this.ZQ == null || this.aad != 0 || this.ZR.canScroll()) ? false : true;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.ZQ != null && this.wy.computeScrollOffset()) {
            this.aad = this.wy.getCurrY();
            fM();
            postInvalidateOnAnimation();
        }
    }

    public void setDragEnabled(boolean z) {
        this.NS = z;
    }

    public void setDrawerListener(DrawerListener drawerListener) {
        this.ZV = drawerListener;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001f  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001f  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void fK() {
        int i;
        if (this.aad == 0) {
            if (!this.ZY) {
                i = 0;
                if (this.qR != i) {
                    this.qR = i;
                    fL();
                    return;
                } else if (this.qR == 1) {
                    fL();
                    return;
                } else {
                    return;
                }
            }
        } else if (this.aad == fI() && !this.ZY) {
            i = 2;
            if (this.qR != i) {
            }
        }
        i = 1;
        if (this.qR != i) {
        }
    }

    private void fL() {
        if (this.ZV != null) {
            switch (this.qR) {
                case 0:
                    this.ZV.onDrawerClosed(this);
                    return;
                case 1:
                    this.ZV.onDrawerSlide(this, ((float) this.aad) / ((float) fI()));
                    return;
                case 2:
                    this.ZV.onDrawerOpened(this);
                    return;
                default:
                    return;
            }
        }
    }

    public void resetState() {
        closeDrawer();
    }

    public void openDrawer() {
        openDrawer(false);
    }

    public void openDrawer(boolean z) {
        if (z) {
            this.wy.startScroll(0, this.aad, 0, fI() - this.aad);
        } else {
            this.aad = fI();
            fM();
        }
        invalidate();
    }

    public void closeDrawer() {
        closeDrawer(false);
    }

    public void closeDrawer(boolean z) {
        if (z) {
            this.wy.startScroll(0, this.aad, 0, -this.aad);
        } else {
            this.aad = 0;
            fM();
        }
        invalidate();
    }

    private void fM() {
        if (this.NS && this.ZQ != null) {
            this.ZQ.setTranslationY((float) this.aad);
            fK();
        }
    }
}

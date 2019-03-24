package miui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AdapterView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Scroller;
import miui.R;

public class TriggerViewDrawer extends RelativeLayout {
    private static final String LOG_TAG = "TriggerViewDrawer";
    private static final boolean ZN = false;
    private static final int aaS = 0;
    private static final int aaT = 1;
    private static final int aaU = 2;
    private static final int aaV = 0;
    private static final int aaW = 1;
    private static final int aaX = 2;
    private static final float aaY = 2.0f;
    private boolean NS;
    private int Vr;
    private int ZO;
    private int ZP;
    private View ZQ;
    private Drawable ZT;
    private int ZU;
    private int ZX;
    private int aaZ;
    private float aab;
    private float aac;
    private View aba;
    private ScrollableView abb;
    private View abc;
    private int abd;
    private int abe;
    private DrawerListener abf;
    private TriggerListener abg;
    private boolean abh;
    private View abi;
    private int abj;
    private int abk;
    private boolean abl;
    private boolean abm;
    private float abn;
    private final int[] abo;
    private final int[] abp;
    private boolean abq;
    private int fO;
    private float fQ;
    private View mContentView;
    private VelocityTracker rc;
    private Scroller wy;

    public interface ScrollableView {
        boolean canScrollDown();
    }

    private static class AdapterViewWrapper implements ScrollableView {
        private AdapterView<?> aae;

        public AdapterViewWrapper(AdapterView<?> adapterView) {
            this.aae = adapterView;
        }

        public boolean canScrollDown() {
            int firstVisiblePosition = this.aae.getFirstVisiblePosition();
            if (firstVisiblePosition > 0) {
                String str = TriggerViewDrawer.LOG_TAG;
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
                    String str2 = TriggerViewDrawer.LOG_TAG;
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
        void onDrawerClose(TriggerViewDrawer triggerViewDrawer);

        void onDrawerOpen(TriggerViewDrawer triggerViewDrawer);

        void onDrawerSlide(TriggerViewDrawer triggerViewDrawer, float f);
    }

    private static class FixedViewWrapper implements ScrollableView {
        public boolean canScrollDown() {
            return false;
        }
    }

    private static class ScrollViewWrapper implements ScrollableView {
        private ScrollView aaf;

        public ScrollViewWrapper(ScrollView scrollView) {
            this.aaf = scrollView;
        }

        public boolean canScrollDown() {
            return this.aaf.getScrollY() > 0;
        }
    }

    public interface TriggerListener {
        void onTriggerOpen(TriggerViewDrawer triggerViewDrawer);

        void onTriggerSlide(TriggerViewDrawer triggerViewDrawer, float f);
    }

    public TriggerViewDrawer(Context context) {
        this(context, null);
    }

    public TriggerViewDrawer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.triggerViewDrawerStyle);
    }

    public TriggerViewDrawer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ZX = -1;
        this.abn = -1.0f;
        this.abo = new int[2];
        this.abp = new int[2];
        this.abq = false;
        this.fO = ViewConfiguration.get(context).getScaledTouchSlop();
        this.wy = new Scroller(context);
        this.rc = VelocityTracker.obtain();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TriggerViewDrawer, i, R.style.Widget_TriggerViewDrawer);
        this.ZO = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_contentView, 0);
        this.ZP = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_targetView, 0);
        if (this.ZP != 0) {
            this.Vr = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_scrollableView, 0);
            this.aaZ = obtainStyledAttributes.getResourceId(R.styleable.TriggerViewDrawer_triggerView, 0);
            this.abe = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TriggerViewDrawer_triggerDistance, 0);
            this.ZT = obtainStyledAttributes.getDrawable(R.styleable.TriggerViewDrawer_scrollDivider);
            if (this.ZT != null) {
                this.ZU = this.ZT.getIntrinsicHeight();
            }
            this.NS = obtainStyledAttributes.getBoolean(R.styleable.TriggerViewDrawer_dragEnabled, false);
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalArgumentException("The targetView attribute is required and must refer to a valid child.");
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.ZO > 0) {
            this.mContentView = findViewById(this.ZO);
            if (this.mContentView == null) {
                throw new IllegalArgumentException("The contentView attribute is must refer to an existing child.");
            } else if (this.mContentView.getParent() != this) {
                throw new IllegalArgumentException("The contentView attribute is must be a direct child of TriggerViewDrawer.");
            }
        }
        this.ZQ = findViewById(this.ZP);
        if (this.ZQ != null) {
            this.aba = this.ZQ;
            while (this.aba != null && this.aba.getParent() != this) {
                this.aba = (View) this.aba.getParent();
            }
            if (this.Vr > 0) {
                View findViewById = this.ZQ.findViewById(this.Vr);
                if (findViewById == null) {
                    throw new IllegalArgumentException("The scrollableView attribute is must refer to an existing child of targetView.");
                } else if (findViewById instanceof ScrollableView) {
                    this.abb = (ScrollableView) findViewById;
                } else if (findViewById instanceof ScrollView) {
                    this.abb = new ScrollViewWrapper((ScrollView) findViewById);
                } else if (findViewById instanceof AdapterView) {
                    this.abb = new AdapterViewWrapper((AdapterView) findViewById);
                } else {
                    Log.w(LOG_TAG, "The scrollableView is a fixed view that can't scroll all the time");
                    this.abb = new FixedViewWrapper();
                }
            }
            if (this.aaZ > 0) {
                this.abc = findViewById(this.aaZ);
                if (this.abc == null) {
                    throw new IllegalArgumentException("The triggerView attribute is must refer to an existing child.");
                } else if (this.abc.getParent() != this) {
                    throw new IllegalArgumentException("The triggerView attribute is must be a direct child of TriggerViewDrawer.");
                } else {
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("The targetView attribute is must refer to an existing child.");
    }

    public void setNestedScrollingEnabled(boolean z) {
        super.setNestedScrollingEnabled(z);
        if (VERSION.SDK_INT >= 21 && z) {
            this.ZQ.findViewById(this.Vr).setNestedScrollingEnabled(true);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mContentView != null) {
            this.abd = ((int) this.mContentView.getY()) + this.mContentView.getHeight();
        }
        if (this.abc != null) {
            this.abe = ((int) this.abc.getY()) + this.abc.getHeight();
        }
        if (fT()) {
            String str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Height of trigger must bigger than height of content, mTriggerDistance=");
            stringBuilder.append(this.abe);
            stringBuilder.append(", mContentDistance=");
            stringBuilder.append(this.abd);
            Log.w(str, stringBuilder.toString());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:84:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0146  */
    /* JADX WARNING: Missing block: B:61:0x011a, code:
            if (r6.ZQ.getTranslationY() >= ((float) r6.abd)) goto L_0x0129;
     */
    /* JADX WARNING: Missing block: B:65:0x0126, code:
            if (r6.abb.canScrollDown() != false) goto L_0x0129;
     */
    /* JADX WARNING: Missing block: B:73:0x013e, code:
            if (r6.abb != null) goto L_0x0129;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        if (!this.NS || fT() || ((this.abd <= 0 && this.abe <= 0) || (motionEvent.getActionMasked() != 0 && this.abj == 0))) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        float y;
        if (actionMasked != 6) {
            switch (actionMasked) {
                case 0:
                    this.ZX = motionEvent2.getPointerId(0);
                    this.rc.clear();
                    this.rc.addMovement(motionEvent2);
                    this.aab = motionEvent2.getX(0);
                    y = motionEvent2.getY(0);
                    this.fQ = y;
                    this.aac = y;
                    this.abi = r((int) this.aab, (int) this.aac);
                    this.abj = 1;
                    this.abk = 0;
                    this.abm = false;
                    break;
                case 1:
                    actionMasked = (int) this.ZQ.getTranslationY();
                    if (this.abh && actionMasked != 0) {
                        s(actionMasked, -actionMasked);
                    } else if (!(actionMasked == 0 || actionMasked == this.abd)) {
                        this.rc.addMovement(motionEvent2);
                        this.rc.computeCurrentVelocity(1000);
                        if (this.rc.getYVelocity() > 5.0f) {
                            s(actionMasked, this.abd - actionMasked);
                        } else {
                            s(actionMasked, -actionMasked);
                        }
                    }
                    this.rc.clear();
                    this.abj = 1;
                    this.abk = 0;
                    this.abm = false;
                    break;
                case 2:
                    actionMasked = motionEvent2.findPointerIndex(this.ZX);
                    if (actionMasked == -1) {
                        this.ZX = motionEvent2.getPointerId(0);
                        actionMasked = 0;
                    }
                    float x = motionEvent2.getX(actionMasked);
                    float y2 = motionEvent2.getY(actionMasked);
                    y = Math.abs(x - this.aab);
                    x = Math.abs(y2 - this.aac);
                    if (this.abj == 1) {
                        if (y > ((float) this.fO) && y > x) {
                            this.abj = 0;
                        } else if (x > ((float) this.fO)) {
                            this.abj = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            if (this.mContentView != null && this.abi == this.mContentView) {
                                a(this.mContentView, motionEvent2, 3);
                            }
                        }
                    }
                    y = y2 - this.fQ;
                    if (this.abj == 2 && (y >= 1.0f || y <= -1.0f)) {
                        boolean z = this.ZQ.getTranslationY() <= 0.0f;
                        if (VERSION.SDK_INT >= 21 && z && dispatchNestedPreScroll(0, (int) (this.fQ - y2), this.abp, this.abo)) {
                            this.fQ = y2 - ((float) this.abo[1]);
                            this.abq = true;
                            this.abk = 0;
                            this.aba.setPressed(false);
                            this.aba.cancelLongPress();
                            this.aba.cancelPendingInputEvents();
                            break;
                        }
                        int i;
                        this.abq = false;
                        int i2 = this.abk;
                        if (y > 0.0f) {
                            if (this.abe <= 0) {
                                break;
                            }
                            if (this.abb != null) {
                                break;
                            }
                            i = 1;
                            if (i != 1) {
                                if (this.abk == 2 || (this.abi == this.aba && this.abk == 0)) {
                                    a(this.aba, motionEvent2, 3);
                                }
                                f(y);
                                fU();
                            } else if (i == 2) {
                                if (this.abk == 1 || (this.abi != this.aba && this.abk == 0)) {
                                    a(this.aba, motionEvent2, this.aab - motionEvent.getX(), 0.0f, 0);
                                    this.abn = motionEvent.getY();
                                } else {
                                    a(this.aba, motionEvent2, this.aab - motionEvent.getX(), 0.0f);
                                }
                            }
                            this.abk = i;
                            this.fQ = y2;
                        } else if (y < 0.0f) {
                            if (this.ZQ.getTranslationY() <= 0.0f) {
                                break;
                            }
                            i = 1;
                            if (i != 1) {
                            }
                            this.abk = i;
                            this.fQ = y2;
                        } else {
                            i = i2;
                            if (i != 1) {
                            }
                            this.abk = i;
                            this.fQ = y2;
                        }
                        i = 2;
                        if (i != 1) {
                        }
                        this.abk = i;
                        this.fQ = y2;
                    }
                    this.rc.addMovement(motionEvent2);
                    break;
                case 3:
                    actionMasked = (int) this.ZQ.getTranslationY();
                    if (actionMasked != 0 && (this.abh || actionMasked != this.abd)) {
                        s(actionMasked, -actionMasked);
                    }
                    this.rc.clear();
                    this.abj = 1;
                    this.abk = 0;
                    this.abm = false;
                    break;
            }
        }
        actionMasked = motionEvent.getActionIndex();
        if (motionEvent2.getPointerId(actionMasked) == this.ZX) {
            actionMasked = actionMasked == 0 ? 1 : 0;
            this.ZX = motionEvent2.getPointerId(actionMasked);
            this.aab = motionEvent2.getX(actionMasked);
            y = motionEvent2.getY(actionMasked);
            this.aac = y;
            this.fQ = y;
        }
        this.rc.addMovement(motionEvent2);
        if (this.abn > 0.0f && motionEvent.getActionMasked() == 1) {
            if (Math.abs(motionEvent.getY() - this.abn) < ((float) this.fO)) {
                motionEvent2.setAction(3);
            }
            this.abn = -1.0f;
        }
        if (this.abj != 2) {
            if (this.abq && motionEvent.getActionMasked() == 1) {
                motionEvent2.setAction(3);
                this.abq = false;
            }
            super.dispatchTouchEvent(motionEvent);
        } else if (motionEvent.getActionMasked() != 2 && this.abk == 2) {
            a(this.aba, motionEvent2);
        }
        return true;
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        boolean z = this.ZQ.getTranslationY() <= 0.0f;
        if (i == 2 && z) {
            return true;
        }
        return false;
    }

    public void onNestedScrollAccepted(View view, View view2, int i) {
        super.onNestedScrollAccepted(view, view2, i);
        if (VERSION.SDK_INT >= 21) {
            startNestedScroll(2);
        }
    }

    private boolean fT() {
        return this.abe > 0 && this.abe <= this.abd;
    }

    private View r(int i, int i2) {
        Rect rect = new Rect();
        r1 = new View[2];
        int i3 = 0;
        r1[0] = this.aba;
        r1[1] = this.mContentView;
        int length = r1.length;
        while (i3 < length) {
            View view = r1[i3];
            if (view != null && view.getVisibility() == 0) {
                int x = (int) view.getX();
                int y = (int) view.getY();
                rect.set(x, y, view.getWidth() + x, view.getHeight() + y);
                if (rect.contains(i, i2)) {
                    return view;
                }
            }
            i3++;
        }
        return null;
    }

    private void f(float f) {
        float f2;
        int i;
        int translationY = (int) this.ZQ.getTranslationY();
        if (translationY > this.abd) {
            f2 = ((float) this.abd) + (((float) (translationY - this.abd)) * aaY);
        } else {
            f2 = (float) translationY;
        }
        f2 += f;
        if (f2 > ((float) this.abd)) {
            i = this.abd + ((int) ((f2 - ((float) this.abd)) / aaY));
        } else {
            i = (int) f2;
        }
        aM(i);
        invalidate();
    }

    private void aM(int i) {
        if (this.abe <= 0) {
            i = Math.min(this.abd, i);
        }
        this.ZQ.setTranslationY((float) i);
        fV();
    }

    private void a(View view, MotionEvent motionEvent, int i) {
        motionEvent = MotionEvent.obtain(motionEvent);
        motionEvent.setAction(i);
        a(view, motionEvent);
        motionEvent.recycle();
    }

    private void a(View view, MotionEvent motionEvent, float f, float f2, int i) {
        motionEvent = MotionEvent.obtain(motionEvent);
        motionEvent.setAction(i);
        a(view, motionEvent, f, f2);
        motionEvent.recycle();
    }

    private void a(View view, MotionEvent motionEvent) {
        a(view, motionEvent, (float) (-view.getLeft()), (float) (-view.getTop()));
    }

    private void a(View view, MotionEvent motionEvent, float f, float f2) {
        motionEvent.offsetLocation(f, f2);
        view.dispatchTouchEvent(motionEvent);
        motionEvent.offsetLocation(-f, -f2);
    }

    private void s(int i, int i2) {
        this.wy.startScroll(0, i, 0, i2);
        this.abl = true;
        invalidate();
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.mContentView) {
            return a(canvas, view, j);
        }
        if (view == this.abc) {
            return b(canvas, view, j);
        }
        return super.drawChild(canvas, view, j);
    }

    private boolean a(Canvas canvas, View view, long j) {
        int translationY = (int) this.ZQ.getTranslationY();
        if (translationY > this.abd) {
            return super.drawChild(canvas, view, j);
        }
        int width = getWidth();
        if (this.ZU > 0) {
            this.ZT.setBounds(0, translationY - this.ZU, width, translationY);
            this.ZT.draw(canvas);
            translationY -= this.ZU;
        }
        canvas.save();
        canvas.clipRect(0, 0, width, translationY);
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return drawChild;
    }

    private boolean b(Canvas canvas, View view, long j) {
        int translationY = (int) this.ZQ.getTranslationY();
        if (translationY < this.abe - view.getHeight()) {
            return true;
        }
        if (translationY > this.abe) {
            return super.drawChild(canvas, view, j);
        }
        int width = getWidth();
        int y = (int) view.getY();
        canvas.save();
        canvas.clipRect(0, y, width, translationY);
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return drawChild;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.ZQ == null) {
            return;
        }
        if (this.wy.computeScrollOffset()) {
            aM(this.wy.getCurrY());
            postInvalidateOnAnimation();
        } else if (this.abl) {
            this.abl = false;
            fU();
        }
    }

    public void setDragEnabled(boolean z) {
        this.NS = z;
    }

    public void setDrawerListener(DrawerListener drawerListener) {
        this.abf = drawerListener;
    }

    public void openDrawer() {
        openDrawer(false);
    }

    public void openDrawer(boolean z) {
        if (z) {
            int translationY = (int) this.ZQ.getTranslationY();
            s(translationY, this.abd - translationY);
            return;
        }
        aM(this.abd);
        fU();
        invalidate();
    }

    public void closeDrawer() {
        closeDrawer(false);
    }

    public void closeDrawer(boolean z) {
        if (z) {
            int translationY = (int) this.ZQ.getTranslationY();
            s(translationY, -translationY);
            return;
        }
        aM(0);
        fU();
        invalidate();
    }

    public void setTriggerDistance(int i) {
        this.abe = i;
    }

    public void setTriggerListener(TriggerListener triggerListener) {
        this.abg = triggerListener;
    }

    public void setAutoClose(boolean z) {
        this.abh = z;
    }

    private void fU() {
        if (this.abf != null && this.mContentView != null) {
            int translationY = (int) this.ZQ.getTranslationY();
            if (this.abj == 2) {
                this.abf.onDrawerSlide(this, ((float) Math.min(this.abd, Math.max(translationY, 0))) / ((float) this.abd));
            } else if (translationY == 0) {
                this.abf.onDrawerClose(this);
            } else if (translationY == this.abd) {
                this.abf.onDrawerOpen(this);
            } else {
                this.abf.onDrawerSlide(this, ((float) translationY) / ((float) this.abd));
            }
        }
    }

    private void fV() {
        if (this.abg != null && this.abe > 0 && this.abj == 2) {
            int i = this.abe - this.abd;
            int translationY = ((int) this.ZQ.getTranslationY()) - this.abd;
            this.abg.onTriggerSlide(this, ((float) translationY) / ((float) i));
            if (translationY >= i) {
                if (!this.abm) {
                    this.abm = true;
                    this.abg.onTriggerOpen(this);
                }
            } else if (this.abm) {
                this.abm = false;
            }
        }
    }
}

package miui.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Scroller;
import miui.R;
import miui.util.Log;

@TargetApi(21)
public class NestedScrollingLayout extends FrameLayout {
    private static final String TAG = "NestedScrollingLayout";
    private static final int Vq = 300;
    private int Vr;
    private int Vs;
    private int Vt;
    private int Vu;
    private boolean Vv;
    protected View mScrollableView;
    private Scroller wy;

    public NestedScrollingLayout(Context context) {
        this(context, null);
    }

    public NestedScrollingLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollingLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.wy = new Scroller(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NestedScrollingLayout);
        this.Vr = obtainStyledAttributes.getResourceId(R.styleable.NestedScrollingLayout_scrollableView, 16908298);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mScrollableView = findViewById(this.Vr);
        if (this.mScrollableView != null) {
            this.mScrollableView.setNestedScrollingEnabled(true);
            return;
        }
        throw new IllegalArgumentException("The scrollableView attribute is required and must refer to a valid child.");
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        fc();
    }

    public void setScrollingRange(int i, int i2) {
        if (i > i2) {
            Log.w(TAG, "wrong scrolling range: [%d, %d], making from=to");
            i = i2;
        }
        this.Vt = i;
        this.Vu = i2;
        if (this.Vs < this.Vt) {
            this.Vs = this.Vt;
            fc();
        }
        if (this.Vs > this.Vu) {
            this.Vs = this.Vu;
            fc();
        }
    }

    public boolean onStartNestedScroll(View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(view, view2, i);
    }

    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        super.onNestedPreScroll(view, i, i2, iArr);
        int max = Math.max(this.Vt, Math.min(this.Vu, this.Vs - i2));
        iArr[1] = this.Vs - max;
        this.Vs = max;
        fc();
    }

    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2 = z && this.Vs < this.Vu && this.Vs > this.Vt;
        if (z2) {
            at(f2 > 0.0f ? this.Vt : this.Vu);
        }
        this.Vv = z2;
        return z2;
    }

    public void onStopNestedScroll(View view) {
        super.onStopNestedScroll(view);
        if (!this.Vv) {
            at(this.Vs > (this.Vt + this.Vu) / 2 ? this.Vu : this.Vt);
        }
        this.Vv = false;
    }

    public void computeScroll() {
        super.computeScroll();
        if (this.wy.computeScrollOffset()) {
            this.Vs = this.wy.getCurrY();
            fc();
            postInvalidateOnAnimation();
        }
    }

    private void at(int i) {
        if (i != this.Vs) {
            this.wy.startScroll(0, this.Vs, 0, i - this.Vs, 300);
            postInvalidate();
        }
    }

    private void fc() {
        onScrollingProgressUpdated(this.Vs);
    }

    protected void onScrollingProgressUpdated(int i) {
    }
}

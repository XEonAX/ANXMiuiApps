package miui.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import miui.R;

@TargetApi(21)
public class NestedHeaderLayout extends NestedScrollingLayout {
    private int Vo;
    private float Vp;
    private View ok;

    public NestedHeaderLayout(Context context) {
        this(context, null);
    }

    public NestedHeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedHeaderLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NestedHeaderLayout);
        this.Vo = obtainStyledAttributes.getResourceId(R.styleable.NestedHeaderLayout_headerView, R.id.header_view);
        this.Vp = obtainStyledAttributes.getDimension(R.styleable.NestedHeaderLayout_rangeOffset, 0.0f);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.ok = findViewById(this.Vo);
        if (this.ok == null) {
            throw new IllegalArgumentException("The headerView attribute is required and must refer to a valid child.");
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setScrollingRange((int) (((float) (-this.ok.getMeasuredHeight())) + this.Vp), 0);
    }

    protected void onScrollingProgressUpdated(int i) {
        super.onScrollingProgressUpdated(i);
        this.ok.offsetTopAndBottom(i - this.ok.getTop());
        this.mScrollableView.offsetTopAndBottom((i + this.ok.getMeasuredHeight()) - this.mScrollableView.getTop());
    }
}

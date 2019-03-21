package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.miui.gallery.R;
import com.miui.gallery.widget.slip.ISlipAnimView;

public class PhotoChoiceContainer extends FrameLayout implements ISlipAnimView {
    private int mInitPadding;
    private int mSlipPadding;
    private float mSlipPaddingRatio;

    public PhotoChoiceContainer(Context context) {
        this(context, null);
    }

    public PhotoChoiceContainer(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PhotoChoiceContainer(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mInitPadding = 0;
        this.mSlipPadding = 0;
        this.mSlipPaddingRatio = 0.0f;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mInitPadding = getPaddingTop();
        this.mSlipPaddingRatio = getResources().getFraction(R.fraction.share_channel_slip_padding_ratio, 1, 1);
    }

    public void onSlipping(float progress) {
        doSlipAnim(progress);
        setAlpha(progress);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mSlipPadding == 0 || changed) {
            this.mSlipPadding = (int) (((float) (bottom - top)) * this.mSlipPaddingRatio);
        }
    }

    public boolean hasOverlappingRendering() {
        return false;
    }

    private void doSlipAnim(float progress) {
        if (this.mSlipPadding > 0) {
            setPadding(getPaddingLeft(), (int) (((float) this.mInitPadding) + (((float) (this.mSlipPadding - this.mInitPadding)) * progress)), getPaddingRight(), getPaddingBottom());
        }
    }
}

package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.widget.slip.ISlipAnimView;

public class PhotoChoiceTitle extends TextView implements ISlipAnimView {
    public PhotoChoiceTitle(Context context) {
        super(context);
    }

    public PhotoChoiceTitle(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public PhotoChoiceTitle(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void onSlipping(float progress) {
        doSlipAnim(progress);
        setAlpha(progress);
    }

    public boolean hasOverlappingRendering() {
        return false;
    }

    private void doSlipAnim(float progress) {
        ((LayoutParams) getLayoutParams()).topMargin = (int) ((1.0f - progress) * ((float) getHeight()));
        if (BaseMiscUtil.floatEquals(progress, 0.0f)) {
            setVisibility(4);
        } else {
            setVisibility(0);
        }
    }
}

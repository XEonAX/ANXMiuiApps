package com.miui.gallery.widget.stickyheader;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import android.util.AttributeSet;

public class StickyGridLayoutManager extends GridLayoutManager {
    private OnLayoutChangedListener mLayoutChangedListener;

    interface OnLayoutChangedListener {
        void onSpanCountChanged(int i, int i2);

        void onSpanSizeLookupChanged(SpanSizeLookup spanSizeLookup, SpanSizeLookup spanSizeLookup2);
    }

    public StickyGridLayoutManager(Context context, int spanCount) {
        super(context, spanCount);
    }

    public StickyGridLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    public StickyGridLayoutManager(Context context, int spanCount, int orientation, boolean reverseLayout) {
        super(context, spanCount, orientation, reverseLayout);
    }

    public void setSpanCount(int spanCount) {
        int oldValue = getSpanCount();
        super.setSpanCount(spanCount);
        if (this.mLayoutChangedListener != null && oldValue != spanCount) {
            this.mLayoutChangedListener.onSpanCountChanged(oldValue, spanCount);
        }
    }

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        SpanSizeLookup oldValue = getSpanSizeLookup();
        super.setSpanSizeLookup(spanSizeLookup);
        if (this.mLayoutChangedListener != null && oldValue != spanSizeLookup) {
            this.mLayoutChangedListener.onSpanSizeLookupChanged(oldValue, spanSizeLookup);
        }
    }
}

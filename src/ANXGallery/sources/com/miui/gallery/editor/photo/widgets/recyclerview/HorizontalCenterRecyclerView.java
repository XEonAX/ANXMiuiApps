package com.miui.gallery.editor.photo.widgets.recyclerview;

import android.content.Context;
import android.util.AttributeSet;

public class HorizontalCenterRecyclerView extends SimpleRecyclerView {
    private int mLastWidth;

    public HorizontalCenterRecyclerView(Context context) {
        super(context);
    }

    public HorizontalCenterRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public HorizontalCenterRecyclerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (getChildCount() > 0) {
            int newWidth = 0;
            for (int i = 0; i < getChildCount(); i++) {
                newWidth += getChildAt(i).getMeasuredWidth();
            }
            if (this.mLastWidth != newWidth) {
                this.mLastWidth = newWidth;
                int empty = getMeasuredWidth() - newWidth;
                if (empty > 0 && getPaddingLeft() != empty / 2) {
                    setPadding(empty / 2, 0, empty / 2, 0);
                    super.onLayout(changed, l, t, r, b);
                }
            }
        }
    }
}

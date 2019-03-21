package com.miui.gallery.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.miui.gallery.view.menu.ActionMenuView.LayoutParams;

public class TabletActionMenuView extends ActionMenuView {
    public TabletActionMenuView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }

    public int getCollapsedHeight() {
        return getMeasuredHeight();
    }

    public boolean filterLeftoverView(int childIndex) {
        LayoutParams lp = (LayoutParams) getChildAt(childIndex).getLayoutParams();
        if (lp == null || !lp.isOverflowButton) {
            return super.filterLeftoverView(childIndex);
        }
        return false;
    }
}

package com.miui.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.miui.internal.view.menu.ActionMenuView.LayoutParams;

public class TabletActionMenuView extends ActionMenuView {
    public TabletActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public int getCollapsedHeight() {
        return getMeasuredHeight();
    }

    public boolean filterLeftoverView(int i) {
        LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
        if (layoutParams == null || !layoutParams.isOverflowButton) {
            return super.filterLeftoverView(i);
        }
        return false;
    }
}

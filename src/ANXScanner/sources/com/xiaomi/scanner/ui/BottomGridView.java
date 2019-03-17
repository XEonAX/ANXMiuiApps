package com.xiaomi.scanner.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.GridView;

public class BottomGridView extends GridView {
    public BottomGridView(Context context) {
        super(context);
    }

    public BottomGridView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public BottomGridView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 2) {
            return true;
        }
        return super.dispatchTouchEvent(ev);
    }
}

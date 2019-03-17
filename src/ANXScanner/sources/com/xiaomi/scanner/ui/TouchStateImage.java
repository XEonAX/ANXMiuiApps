package com.xiaomi.scanner.ui;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;

public class TouchStateImage extends ImageView {
    public TouchStateImage(Context context) {
        super(context);
    }

    public TouchStateImage(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public TouchStateImage(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                setAlpha(0.4f);
                break;
            case 1:
                setAlpha(1.0f);
                break;
        }
        return super.onTouchEvent(event);
    }
}

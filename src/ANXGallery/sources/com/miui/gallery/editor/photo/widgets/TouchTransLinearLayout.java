package com.miui.gallery.editor.photo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;

public class TouchTransLinearLayout extends LinearLayout {
    OnTouchEvent mOnTouchEvent;

    public interface OnTouchEvent {
        boolean onTouchEvent(MotionEvent motionEvent);
    }

    public OnTouchEvent getOnTouchEvent() {
        return this.mOnTouchEvent;
    }

    public void setOnTouchEvent(OnTouchEvent onTouchEvent) {
        this.mOnTouchEvent = onTouchEvent;
    }

    public TouchTransLinearLayout(Context context) {
        super(context);
    }

    public TouchTransLinearLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TouchTransLinearLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (this.mOnTouchEvent != null) {
            return this.mOnTouchEvent.onTouchEvent(event);
        }
        return super.onTouchEvent(event);
    }
}

package com.miui.gallery.widget;

import android.view.View;
import android.view.View.OnClickListener;

public abstract class AntiDoubleClickListener implements OnClickListener {
    private long mLastClickTimeMillis;
    private int mMinClickInterval;

    public abstract void onAntiDoubleClick(View view);

    public AntiDoubleClickListener() {
        this(600);
    }

    public AntiDoubleClickListener(int minClickInterval) {
        this.mMinClickInterval = minClickInterval;
    }

    public void onClick(View v) {
        if (System.currentTimeMillis() - this.mLastClickTimeMillis >= ((long) this.mMinClickInterval)) {
            this.mLastClickTimeMillis = System.currentTimeMillis();
            onAntiDoubleClick(v);
        }
    }
}

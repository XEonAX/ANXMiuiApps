package com.miui.gallery.movie.ui.listener;

import android.view.View;
import android.view.View.OnClickListener;

public abstract class SingleClickListener implements OnClickListener {
    private int mId = -1;
    private long mLastClickTime = 0;

    protected abstract void onSingleClick(View view);

    public void onClick(View v) {
        long currentTime = System.currentTimeMillis();
        int mId = v.getId();
        if (this.mId != mId) {
            this.mId = mId;
            this.mLastClickTime = currentTime;
            onSingleClick(v);
        } else if (currentTime - this.mLastClickTime > 1000) {
            this.mLastClickTime = currentTime;
            onSingleClick(v);
        }
    }
}

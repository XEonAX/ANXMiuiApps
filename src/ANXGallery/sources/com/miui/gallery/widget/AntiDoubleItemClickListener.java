package com.miui.gallery.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.miui.gallery.util.Log;

public abstract class AntiDoubleItemClickListener implements OnItemClickListener {
    private long mLastClickTimeMillis;
    private int mMinClickInterval;

    public abstract void onAntiDoubleItemClick(AdapterView<?> adapterView, View view, int i, long j);

    public AntiDoubleItemClickListener() {
        this(600);
    }

    public AntiDoubleItemClickListener(int minClickInterval) {
        this.mMinClickInterval = minClickInterval;
    }

    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (System.currentTimeMillis() - this.mLastClickTimeMillis < ((long) this.mMinClickInterval)) {
            Log.e("DoubleClick", "On filtered click event");
            return;
        }
        this.mLastClickTimeMillis = System.currentTimeMillis();
        onAntiDoubleItemClick(parent, view, position, id);
    }
}

package com.miui.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.util.GalleryDateUtils;

public class BabyAlbumDetailGridHeaderItem extends TimeLineGridHeaderItem {
    private TextView mAge;

    public BabyAlbumDetailGridHeaderItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mAge = (TextView) findViewById(R.id.age);
    }

    public void bindData(long time, String location, String age) {
        bindData(GalleryDateUtils.formatRelativeDate(time), location);
        this.mAge.setText(age);
    }

    public void setCheckable(boolean checkable) {
        super.setCheckable(checkable);
        if (checkable) {
            this.mAge.setVisibility(8);
        } else {
            this.mAge.setVisibility(0);
        }
    }
}

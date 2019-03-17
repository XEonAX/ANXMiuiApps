package com.xiaomi.scanner.ui;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;

public class BusinessCardFrameView extends ImageView {
    public BusinessCardFrameView(Context context) {
        super(context);
    }

    public BusinessCardFrameView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public BusinessCardFrameView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int width = MeasureSpec.getSize(widthMeasureSpec);
        setMeasuredDimension(width, (int) (((float) width) * 0.618f));
    }
}

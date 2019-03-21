package com.miui.gallery.editor.photo.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class StrokeImageView extends ImageView {
    private boolean mIsStrokeVisible = true;
    private StrokeImageHelper mStrokeImageHelper;

    public StrokeImageView(Context context) {
        super(context);
        init();
    }

    public StrokeImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public StrokeImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        this.mStrokeImageHelper = new StrokeImageHelper(getContext());
    }

    public void setStrokeVisible(boolean isVisible) {
        this.mIsStrokeVisible = isVisible;
        invalidate();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = getDrawable();
        if (drawable != null && this.mIsStrokeVisible) {
            this.mStrokeImageHelper.draw(canvas, drawable.getBounds(), getImageMatrix());
        }
    }
}

package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;

public interface ImageAware {
    int getHeight();

    int getId();

    ViewScaleType getScaleType();

    Object getTag(int i);

    int getWidth();

    View getWrappedView();

    boolean isCollected();

    void saveBitmap(Bitmap bitmap);

    boolean setImageBitmap(Bitmap bitmap);

    boolean setImageDrawable(Drawable drawable);

    void setTag(int i, Object obj);
}

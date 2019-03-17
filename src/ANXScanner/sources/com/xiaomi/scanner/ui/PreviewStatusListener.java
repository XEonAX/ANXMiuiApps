package com.xiaomi.scanner.ui;

import android.graphics.RectF;
import android.view.GestureDetector.OnGestureListener;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.OnTouchListener;

public interface PreviewStatusListener extends SurfaceTextureListener {

    public interface PreviewAreaChangedListener {
        void onPreviewAreaChanged(RectF rectF);
    }

    public interface PreviewAspectRatioChangedListener {
        void onPreviewAspectRatioChanged(float f);
    }

    OnGestureListener getGestureListener();

    OnTouchListener getTouchListener();

    void onPreviewLayoutChanged(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    boolean shouldAutoAdjustTransformMatrixOnLayout();
}

package com.miui.gallery.editor.photo.widgets;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.PopupWindow;
import com.miui.gallery.R;

public class PaintSizePopupWindow extends PopupWindow {
    private AnimatorUpdateListener mAnimatorUpdateListener = new AnimatorUpdateListener() {
        public void onAnimationUpdate(ValueAnimator animation) {
            PaintSizePopupWindow.this.getContentView().setAlpha(((Float) animation.getAnimatedValue()).floatValue());
        }
    };
    private PaintSizeView mPaintView;
    private ValueAnimator mValueAnimator;

    public PaintSizePopupWindow(Context context) {
        super(getCustomView(context), getCustomWidth(context), getCustomHeight(context));
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(R.style.f179PhotoEditor.PaintWindow);
        this.mPaintView = (PaintSizeView) getContentView().findViewById(R.id.paint_view);
        this.mValueAnimator = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.mValueAnimator.setDuration((long) context.getResources().getInteger(R.integer.paint_anim_duration));
        this.mValueAnimator.setInterpolator(new DecelerateInterpolator());
        this.mValueAnimator.addUpdateListener(this.mAnimatorUpdateListener);
    }

    private static View getCustomView(Context context) {
        return View.inflate(context, R.layout.paint_size_popupwindow, null);
    }

    private static int getCustomWidth(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.paint_window_size);
    }

    private static int getCustomHeight(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.paint_window_size);
    }

    public void setPaintSize(int size) {
        this.mPaintView.setDiameter(size);
    }

    public void showAtLocation(View parent, int gravity, int x, int y) {
        super.showAtLocation(parent, gravity, x, y);
        getContentView().setAlpha(0.0f);
        this.mValueAnimator.cancel();
        this.mValueAnimator.start();
    }

    public void dismiss() {
        this.mValueAnimator.cancel();
        super.dismiss();
    }
}

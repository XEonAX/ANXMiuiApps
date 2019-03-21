package com.miui.gallery.hybrid.pulltorefresh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView.ScaleType;
import com.miui.gallery.R;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.Mode;
import com.miui.gallery.hybrid.pulltorefresh.PullToRefreshBase.Orientation;
import com.nexstreaming.nexeditorsdk.nexClip;

@SuppressLint({"ViewConstructor"})
public class FlipLoadingLayout extends LoadingLayout {
    private final Animation mResetRotateAnimation;
    private final Animation mRotateAnimation;

    public FlipLoadingLayout(Context context, Mode mode, Orientation scrollDirection, TypedArray attrs) {
        super(context, mode, scrollDirection, attrs);
        int rotateAngle = mode == Mode.PULL_FROM_START ? -180 : nexClip.kClip_Rotate_180;
        this.mRotateAnimation = new RotateAnimation(0.0f, (float) rotateAngle, 1, 0.5f, 1, 0.5f);
        this.mRotateAnimation.setInterpolator(ANIMATION_INTERPOLATOR);
        this.mRotateAnimation.setDuration(150);
        this.mRotateAnimation.setFillAfter(true);
        this.mResetRotateAnimation = new RotateAnimation((float) rotateAngle, 0.0f, 1, 0.5f, 1, 0.5f);
        this.mResetRotateAnimation.setInterpolator(ANIMATION_INTERPOLATOR);
        this.mResetRotateAnimation.setDuration(150);
        this.mResetRotateAnimation.setFillAfter(true);
    }

    protected void onLoadingDrawableSet(Drawable imageDrawable) {
        if (imageDrawable != null) {
            int dHeight = imageDrawable.getIntrinsicHeight();
            int dWidth = imageDrawable.getIntrinsicWidth();
            LayoutParams lp = this.mHeaderImage.getLayoutParams();
            int max = Math.max(dHeight, dWidth);
            lp.height = max;
            lp.width = max;
            this.mHeaderImage.requestLayout();
            this.mHeaderImage.setScaleType(ScaleType.MATRIX);
            Matrix matrix = new Matrix();
            matrix.postTranslate(((float) (lp.width - dWidth)) / 2.0f, ((float) (lp.height - dHeight)) / 2.0f);
            matrix.postRotate(getDrawableRotationAngle(), ((float) lp.width) / 2.0f, ((float) lp.height) / 2.0f);
            this.mHeaderImage.setImageMatrix(matrix);
        }
    }

    protected void onPullImpl(float scaleOfLayout) {
    }

    protected void pullToRefreshImpl() {
        if (this.mRotateAnimation == this.mHeaderImage.getAnimation()) {
            this.mHeaderImage.startAnimation(this.mResetRotateAnimation);
        }
    }

    protected void refreshingImpl() {
        this.mHeaderImage.clearAnimation();
        this.mHeaderImage.setVisibility(4);
        this.mHeaderProgress.setVisibility(0);
    }

    protected void releaseToRefreshImpl() {
        this.mHeaderImage.startAnimation(this.mRotateAnimation);
    }

    protected void resetImpl() {
        this.mHeaderImage.clearAnimation();
        this.mHeaderProgress.setVisibility(8);
        this.mHeaderImage.setVisibility(0);
    }

    protected int getDefaultDrawableResId() {
        return R.drawable.hybrid_default_ptr_flip;
    }

    private float getDrawableRotationAngle() {
        switch (this.mMode) {
            case PULL_FROM_END:
                if (this.mScrollDirection == Orientation.HORIZONTAL) {
                    return 90.0f;
                }
                return 180.0f;
            case PULL_FROM_START:
                if (this.mScrollDirection == Orientation.HORIZONTAL) {
                    return 270.0f;
                }
                return 0.0f;
            default:
                return 0.0f;
        }
    }
}

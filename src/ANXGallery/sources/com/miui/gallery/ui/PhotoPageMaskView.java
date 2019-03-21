package com.miui.gallery.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.app.BottomMenuFragment;
import com.miui.gallery.util.MiscUtil;
import miui.view.animation.CubicEaseInInterpolator;
import miui.view.animation.CubicEaseOutInterpolator;

public class PhotoPageMaskView extends View {
    private boolean isActionBarDividerVisible;
    private boolean isMaskVisible;
    private boolean isSplitBarDividerVisible;
    private int mActionBarDividerY;
    private Drawable mActionBarMask;
    private ValueAnimator mActionBarMaskAnim;
    private Paint mDividerPaint;
    private BottomMenuFragment mHost;
    private int mSplitBarDividerY;
    private int mSplitBarHeight;
    private Drawable mSplitBarMask;
    private int mSystemWindowInsetBottom;
    private int mSystemWindowInsetTop;

    public PhotoPageMaskView(Context context) {
        this(context, null);
    }

    public PhotoPageMaskView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PhotoPageMaskView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSplitBarHeight = -1;
        this.mDividerPaint = new Paint(1);
        this.mDividerPaint.setColor(getResources().getColor(R.color.photo_page_action_bar_divider));
        this.mDividerPaint.setStrokeWidth((float) getResources().getDimensionPixelSize(R.dimen.photo_page_action_bar_divider_height));
        this.mActionBarMask = getResources().getDrawable(R.drawable.photo_page_action_bar_background);
        this.mSplitBarMask = getResources().getDrawable(R.drawable.photo_page_action_bar_background);
        this.mActionBarMask.setAlpha(0);
        this.mSplitBarMask.setAlpha(0);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() {
            public WindowInsetsCompat onApplyWindowInsets(View v, WindowInsetsCompat insets) {
                int systemWindowInsetBottom = com.miui.gallery.compat.view.ViewCompat.getSystemWindowInsetBottom(PhotoPageMaskView.this);
                int systemWindowInsetTop = com.miui.gallery.compat.view.ViewCompat.getSystemWindowInsetTop(PhotoPageMaskView.this);
                if (!(systemWindowInsetBottom == PhotoPageMaskView.this.mSystemWindowInsetBottom && systemWindowInsetTop == PhotoPageMaskView.this.mSystemWindowInsetTop)) {
                    PhotoPageMaskView.this.mSystemWindowInsetBottom = systemWindowInsetBottom;
                    PhotoPageMaskView.this.mSystemWindowInsetTop = systemWindowInsetTop;
                    PhotoPageMaskView.this.setMaskBounds();
                    PhotoPageMaskView.this.initSplitBarDividerPos();
                    PhotoPageMaskView.this.initActionBarDividerPos();
                }
                return insets;
            }
        });
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        cancelAnim();
        setMaskBounds();
        initActionBarDividerPos();
        initSplitBarDividerPos();
        int alpha = this.isMaskVisible ? 255 : 0;
        if (this.mActionBarMask != null) {
            this.mActionBarMask.setAlpha(alpha);
        }
        if (this.mSplitBarMask != null) {
            this.mSplitBarMask.setAlpha(alpha);
        }
        invalidate();
    }

    public void setHost(BottomMenuFragment fragment) {
        this.mHost = fragment;
    }

    private void initActionBarDividerPos() {
        this.mActionBarDividerY = getActionBarHeight();
    }

    public boolean setActionBarDividerVisible(boolean visible) {
        if (visible == this.isActionBarDividerVisible) {
            return false;
        }
        this.isActionBarDividerVisible = visible;
        if (visible) {
            initActionBarDividerPos();
        }
        invalidate();
        return true;
    }

    private void initSplitBarDividerPos() {
        if (getSplitBarHeight() > 0) {
            this.mSplitBarDividerY = getHeight() - getSplitBarHeight();
        } else {
            this.mSplitBarDividerY = -1;
        }
    }

    public boolean setSplitBarDividerVisible(boolean visible) {
        if (visible == this.isSplitBarDividerVisible) {
            return false;
        }
        this.isSplitBarDividerVisible = visible;
        if (visible) {
            initSplitBarDividerPos();
        }
        invalidate();
        return true;
    }

    private ValueAnimator getMaskAnim(boolean visible) {
        ValueAnimator anim;
        if (visible) {
            anim = ValueAnimator.ofInt(new int[]{0, 255}).setDuration((long) getResources().getInteger(R.integer.photo_bar_mask_in_duration));
            anim.setInterpolator(new CubicEaseOutInterpolator());
            return anim;
        }
        anim = ValueAnimator.ofInt(new int[]{255, 0}).setDuration((long) getResources().getInteger(R.integer.photo_bar_mask_out_duration));
        anim.setInterpolator(new CubicEaseInInterpolator());
        return anim;
    }

    private void cancelAnim() {
        if (this.mActionBarMaskAnim != null) {
            this.mActionBarMaskAnim.cancel();
            this.mActionBarMaskAnim = null;
        }
    }

    private boolean setMaskBounds() {
        int actionBarHeight = getActionBarHeight();
        int splitBarHeight = getSplitBarHeight();
        if (actionBarHeight == -1 || splitBarHeight == -1) {
            return false;
        }
        if (this.mActionBarMask != null) {
            this.mActionBarMask.setBounds(0, 0, getWidth(), actionBarHeight);
        }
        if (this.mSplitBarMask != null) {
            this.mSplitBarMask.setBounds(0, getHeight() - splitBarHeight, getWidth(), getHeight());
        }
        return true;
    }

    public boolean setActionBarMaskVisible(boolean visible, boolean anim) {
        int alpha = 0;
        if ((this.mActionBarMask == null && this.mSplitBarMask == null) || visible == this.isMaskVisible || !setMaskBounds()) {
            return false;
        }
        this.isMaskVisible = visible;
        cancelAnim();
        if (anim) {
            this.mActionBarMaskAnim = getMaskAnim(visible);
            this.mActionBarMaskAnim.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator animation) {
                    int height;
                    int alpha = ((Integer) animation.getAnimatedValue()).intValue();
                    if (PhotoPageMaskView.this.mActionBarMask != null) {
                        PhotoPageMaskView.this.mActionBarMask.setAlpha(alpha);
                        height = (int) (((((float) PhotoPageMaskView.this.getActionBarHeight()) * 1.0f) * ((float) alpha)) / 255.0f);
                        PhotoPageMaskView.this.mActionBarMask.setBounds(0, 0, PhotoPageMaskView.this.getWidth(), height);
                        PhotoPageMaskView.this.mActionBarDividerY = height;
                    }
                    if (PhotoPageMaskView.this.mSplitBarMask != null) {
                        PhotoPageMaskView.this.mSplitBarMask.setAlpha(alpha);
                        height = (int) (((((float) PhotoPageMaskView.this.getSplitBarHeight()) * 1.0f) * ((float) alpha)) / 255.0f);
                        PhotoPageMaskView.this.mSplitBarMask.setBounds(0, PhotoPageMaskView.this.getHeight() - height, PhotoPageMaskView.this.getWidth(), PhotoPageMaskView.this.getHeight());
                        PhotoPageMaskView.this.mSplitBarDividerY = PhotoPageMaskView.this.getHeight() - height;
                    }
                    PhotoPageMaskView.this.invalidate();
                }
            });
            this.mActionBarMaskAnim.start();
        } else {
            if (visible) {
                alpha = 255;
            }
            if (this.mActionBarMask != null) {
                this.mActionBarMask.setAlpha(alpha);
            }
            if (this.mSplitBarMask != null) {
                this.mSplitBarMask.setAlpha(alpha);
            }
            invalidate();
        }
        return true;
    }

    private int getActionBarHeight() {
        if (this.mHost == null || this.mHost.getActionBar() == null) {
            return -1;
        }
        return this.mSystemWindowInsetTop + getContext().getResources().getDimensionPixelSize(R.dimen.photo_page_actionbar_height);
    }

    private int getSplitBarHeight() {
        if (this.mHost != null && this.mSplitBarHeight == -1) {
            this.mSplitBarHeight = this.mHost.getMenuCollapsedHeight();
        }
        return (this.mSplitBarHeight > 0 ? this.mSplitBarHeight : MiscUtil.getDefaultSplitActionBarHeight(getContext())) + com.miui.gallery.compat.view.ViewCompat.getSystemWindowInsetBottom(this);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.isActionBarDividerVisible && this.mActionBarDividerY != -1) {
            canvas.drawLine(0.0f, (float) this.mActionBarDividerY, (float) getWidth(), (float) this.mActionBarDividerY, this.mDividerPaint);
        }
        if (this.isSplitBarDividerVisible && this.mSplitBarDividerY != -1) {
            canvas.drawLine(0.0f, (float) this.mSplitBarDividerY, (float) getWidth(), (float) this.mSplitBarDividerY, this.mDividerPaint);
        }
        if (this.mActionBarMask != null) {
            this.mActionBarMask.draw(canvas);
        }
        if (this.mSplitBarMask != null) {
            this.mSplitBarMask.draw(canvas);
        }
    }
}

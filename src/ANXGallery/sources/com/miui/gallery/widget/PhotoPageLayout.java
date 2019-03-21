package com.miui.gallery.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.miui.gallery.R;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.IMultiThemeView.Theme;
import com.miui.gallery.widget.IMultiThemeView.ThemeTransition;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.animation.SineEaseInOutInterpolator;

public class PhotoPageLayout extends FrameLayout implements IMultiThemeView {
    private static final Theme DEFAULT_THEME = Theme.LIGHT;
    private float mAnimFinalValue;
    private float mBackgroundAlpha;
    private int mBackgroundColor;
    private ValueAnimator mColorAnim;
    private float mPreBackgroundAlpha;
    private int mPreBackgroundColor;
    private Theme mTheme;
    private ThemeTransition mTransition;

    public PhotoPageLayout(Context context) {
        this(context, null);
    }

    public PhotoPageLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PhotoPageLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        setWillNotDraw(false);
        this.mBackgroundAlpha = 1.0f;
        this.mPreBackgroundAlpha = 0.0f;
        setTheme(DEFAULT_THEME);
    }

    public void setTheme(Theme theme) {
        setTheme(theme, ThemeTransition.NONE);
    }

    public void setTheme(Theme theme, ThemeTransition transition) {
        setTheme(theme, transition, getDefaultTransitionInterpolator(transition), getDefaultTransitionTime(transition));
    }

    public void setTheme(Theme theme, ThemeTransition transition, Interpolator interpolator, long time) {
        if (this.mTheme != theme) {
            Log.d("PhotoPageLayout", "setTheme %s -> %s", this.mTheme, theme);
            this.mTheme = theme;
            this.mPreBackgroundColor = this.mBackgroundColor;
            this.mBackgroundColor = getBackgroundColor(theme);
            this.mTransition = transition;
            float from = 1.0f;
            float to = 1.0f;
            switch (transition) {
                case FADE_IN:
                    this.mPreBackgroundAlpha = this.mBackgroundAlpha;
                    from = 0.0f;
                    this.mBackgroundAlpha = 0.0f;
                    if (isBackColorTransiting()) {
                        this.mPreBackgroundAlpha = this.mAnimFinalValue;
                    } else {
                        this.mAnimFinalValue = this.mPreBackgroundAlpha;
                    }
                    to = this.mAnimFinalValue;
                    break;
                case FADE_OUT:
                    to = 0.0f;
                    if (isBackColorTransiting()) {
                        this.mBackgroundAlpha = this.mAnimFinalValue;
                    } else {
                        this.mAnimFinalValue = this.mBackgroundAlpha;
                    }
                    from = this.mAnimFinalValue;
                    this.mPreBackgroundAlpha = from;
                    break;
                default:
                    this.mPreBackgroundAlpha = 0.0f;
                    this.mBackgroundAlpha = 1.0f;
                    this.mAnimFinalValue = 1.0f;
                    break;
            }
            if (BaseMiscUtil.floatEquals(from, to)) {
                invalidate();
                return;
            }
            cancelBackgroundTransition();
            if (time <= 0) {
                time = getDefaultTransitionTime(transition);
            }
            if (interpolator == null) {
                interpolator = getDefaultTransitionInterpolator(transition);
            }
            this.mColorAnim = ValueAnimator.ofFloat(new float[]{from, to}).setDuration(time);
            this.mColorAnim.setInterpolator(interpolator);
            this.mColorAnim.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator animation) {
                    float alpha = ((Float) animation.getAnimatedValue()).floatValue();
                    switch (AnonymousClass2.$SwitchMap$com$miui$gallery$widget$IMultiThemeView$ThemeTransition[PhotoPageLayout.this.mTransition.ordinal()]) {
                        case 1:
                            PhotoPageLayout.this.mBackgroundAlpha = alpha;
                            break;
                        case 2:
                            PhotoPageLayout.this.mPreBackgroundAlpha = alpha;
                            break;
                    }
                    PhotoPageLayout.this.invalidate();
                }
            });
            this.mColorAnim.start();
        }
    }

    private Interpolator getDefaultTransitionInterpolator(ThemeTransition transition) {
        switch (transition) {
            case FADE_IN:
                return new CubicEaseOutInterpolator();
            case FADE_OUT:
                return new SineEaseInOutInterpolator();
            default:
                return null;
        }
    }

    private long getDefaultTransitionTime(ThemeTransition transition) {
        switch (transition) {
            case FADE_IN:
                return (long) getResources().getInteger(R.integer.photo_background_in_duration);
            case FADE_OUT:
                return (long) getResources().getInteger(R.integer.photo_background_out_duration);
            default:
                return 0;
        }
    }

    private int getBackgroundColor(Theme theme) {
        switch (theme) {
            case LIGHT:
                return getContext().getResources().getColor(R.color.photo_page_default_background);
            case DARK:
                return getContext().getResources().getColor(R.color.photo_page_fullscreen_background);
            default:
                return 0;
        }
    }

    public void setBackgroundAlpha(float alpha) {
        if (isBackColorTransiting() && BaseMiscUtil.floatEquals(alpha, this.mAnimFinalValue)) {
            Log.d("PhotoPageLayout", "color transiting while set alpha %s", Float.valueOf(alpha));
            return;
        }
        cancelBackgroundTransition();
        this.mPreBackgroundAlpha = 0.0f;
        if (!BaseMiscUtil.floatEquals(this.mBackgroundAlpha, alpha)) {
            this.mBackgroundAlpha = alpha;
            invalidate();
        }
    }

    private boolean isBackColorTransiting() {
        return this.mColorAnim != null && this.mColorAnim.isRunning();
    }

    private void cancelBackgroundTransition() {
        if (isBackColorTransiting()) {
            this.mColorAnim.cancel();
        }
    }

    private int genColor(int color, float alpha) {
        return Color.argb((int) (255.0f * alpha), Color.red(color), Color.green(color), Color.blue(color));
    }

    private void drawBackground(Canvas canvas) {
        if (isBackColorTransiting()) {
            int downColor = this.mPreBackgroundColor;
            float downAlpha = this.mPreBackgroundAlpha;
            int upColor = this.mBackgroundColor;
            float upAlpha = this.mBackgroundAlpha;
            if (this.mTransition == ThemeTransition.FADE_OUT) {
                downColor = this.mBackgroundColor;
                downAlpha = this.mBackgroundAlpha;
                upColor = this.mPreBackgroundColor;
                upAlpha = this.mPreBackgroundAlpha;
            }
            if (downAlpha > 0.0f) {
                canvas.save();
                drawColor(canvas, downColor, downAlpha);
                canvas.restore();
            }
            drawColor(canvas, upColor, upAlpha);
            return;
        }
        drawColor(canvas, this.mBackgroundColor, this.mBackgroundAlpha);
    }

    private void drawColor(Canvas canvas, int color, float alpha) {
        if (alpha > 0.0f) {
            canvas.drawColor(genColor(color, alpha));
        }
    }

    protected void onDraw(Canvas canvas) {
        drawBackground(canvas);
        super.onDraw(canvas);
    }
}

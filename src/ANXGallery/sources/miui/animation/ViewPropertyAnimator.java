package miui.animation;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.res.Resources;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Animation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class ViewPropertyAnimator extends Animator {
    public static final int ALPHA = 512;
    public static final float CURRENT_HALF_HEIGHT = 0.01f;
    public static final float CURRENT_HALF_WIDTH = 0.007f;
    public static final float CURRENT_HEIGHT = 0.008f;
    public static final float CURRENT_HEIGHT_NEGATIVE = 0.009f;
    public static final float CURRENT_VALUE = Float.MAX_VALUE;
    public static final float CURRENT_WIDTH = 0.005f;
    public static final float CURRENT_WIDTH_NEGATIVE = 0.006f;
    private static final int DISPLAY_METRICES_HEIGHT = Resources.getSystem().getDisplayMetrics().heightPixels;
    private static final int DISPLAY_METRICES_WIDTH = Resources.getSystem().getDisplayMetrics().widthPixels;
    public static final float NO_FINAL_VALUE = Float.MIN_VALUE;
    public static final int NO_FINAL_VISIBILITY = -1;
    public static final float OUT_BOTTOM_SCREEN = 0.002f;
    public static final float OUT_LEFT_SCREEN = 0.003f;
    public static final float OUT_RIGHT_SCREEN = 0.004f;
    public static final float OUT_TOP_SCREEN = 0.001f;
    public static final int ROTATION = 16;
    public static final int ROTATION_X = 32;
    public static final int ROTATION_Y = 64;
    public static final int SCALE_X = 4;
    public static final int SCALE_Y = 8;
    public static final int TRANSLATION_X = 1;
    public static final int TRANSLATION_Y = 2;
    public static final int X = 128;
    public static final int Y = 256;
    private static final HashMap<Object, Animator> mAnimatorMap = new HashMap();
    private ValueAnimator mAnimator = ValueAnimator.ofFloat(new float[]{1.0f});
    private float mFinalValue = Float.MIN_VALUE;
    private int mFinalVisibility = -1;
    private float mFromValue;
    private int mProperty;
    private float mToValue;
    private View mView;

    public static class Builder extends AnimatorBuilder {
        public Builder(ViewPropertyAnimator animator) {
            super(animator);
        }

        public Builder setRepeatCount(int value) {
            ((ViewPropertyAnimator) this.mAnimator).setRepeatCount(value);
            return this;
        }

        public Builder setRepeatMode(int value) {
            ((ViewPropertyAnimator) this.mAnimator).setRepeatMode(value);
            return this;
        }

        public Builder setFinalValue(float value) {
            ((ViewPropertyAnimator) this.mAnimator).setFinalValue(value);
            return this;
        }

        public Builder setFinalVisibility(int visibility) {
            ((ViewPropertyAnimator) this.mAnimator).setFinalVisibility(visibility);
            return this;
        }

        public Builder setStartDelay(long startDelay) {
            this.mAnimator.setStartDelay(startDelay);
            return this;
        }

        public Builder setDuration(long duration) {
            this.mAnimator.setDuration(duration);
            return this;
        }

        public Builder setInterpolator(TimeInterpolator value) {
            this.mAnimator.setInterpolator(value);
            return this;
        }

        public Builder addListener(AnimatorListener listener) {
            this.mAnimator.addListener(listener);
            return this;
        }
    }

    public static Builder of(View view, int property, float fromValue, float toValue) {
        return new Builder(new ViewPropertyAnimator(view, property, fromValue, toValue));
    }

    public ViewPropertyAnimator(View view, int property, float fromValue, float toValue) {
        this.mView = view;
        this.mProperty = property;
        this.mFromValue = fromValue;
        this.mToValue = toValue;
        this.mAnimator.addListener(new AnimatorListener() {
            public void onAnimationStart(Animator animation) {
                ArrayList<?> listeners = ViewPropertyAnimator.this.getListeners();
                if (listeners != null) {
                    Iterator it = ((ArrayList) listeners.clone()).iterator();
                    while (it.hasNext()) {
                        ((AnimatorListener) it.next()).onAnimationStart(ViewPropertyAnimator.this);
                    }
                }
            }

            public void onAnimationRepeat(Animator animation) {
                ArrayList<?> listeners = ViewPropertyAnimator.this.getListeners();
                if (listeners != null) {
                    Iterator it = ((ArrayList) listeners.clone()).iterator();
                    while (it.hasNext()) {
                        ((AnimatorListener) it.next()).onAnimationRepeat(ViewPropertyAnimator.this);
                    }
                }
            }

            public void onAnimationEnd(Animator animation) {
                ViewPropertyAnimator.setAnimator(ViewPropertyAnimator.this.mView, null);
                ViewPropertyAnimator.this.setFinalValues();
                ArrayList<?> listeners = ViewPropertyAnimator.this.getListeners();
                if (listeners != null) {
                    Iterator it = ((ArrayList) listeners.clone()).iterator();
                    while (it.hasNext()) {
                        ((AnimatorListener) it.next()).onAnimationEnd(ViewPropertyAnimator.this);
                    }
                }
            }

            public void onAnimationCancel(Animator animation) {
                ViewPropertyAnimator.setAnimator(ViewPropertyAnimator.this.mView, null);
                ViewPropertyAnimator.this.setFinalValues();
                ArrayList<?> listeners = ViewPropertyAnimator.this.getListeners();
                if (listeners != null) {
                    Iterator it = ((ArrayList) listeners.clone()).iterator();
                    while (it.hasNext()) {
                        ((AnimatorListener) it.next()).onAnimationCancel(ViewPropertyAnimator.this);
                    }
                }
            }
        });
        this.mAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                ViewPropertyAnimator.this.setValue(ViewPropertyAnimator.this.mFromValue + (animation.getAnimatedFraction() * (ViewPropertyAnimator.this.mToValue - ViewPropertyAnimator.this.mFromValue)));
            }
        });
    }

    public long getStartDelay() {
        return this.mAnimator.getStartDelay();
    }

    public void setStartDelay(long startDelay) {
        this.mAnimator.setStartDelay(startDelay);
    }

    public Animator setDuration(long duration) {
        this.mAnimator.setDuration(duration);
        return this;
    }

    public long getDuration() {
        return this.mAnimator.getDuration();
    }

    public void setRepeatCount(int value) {
        this.mAnimator.setRepeatCount(value);
    }

    public int getRepeatCount() {
        return this.mAnimator.getRepeatCount();
    }

    public void setRepeatMode(int value) {
        this.mAnimator.setRepeatMode(value);
    }

    public int getRepeatMode() {
        return this.mAnimator.getRepeatMode();
    }

    public void setFinalVisibility(int visibility) {
        this.mFinalVisibility = visibility;
    }

    public int getFinalVisibility() {
        return this.mFinalVisibility;
    }

    public void setFinalValue(float value) {
        this.mFinalValue = value;
    }

    public float getFinalValue() {
        return this.mFinalValue;
    }

    public void setInterpolator(TimeInterpolator value) {
        this.mAnimator.setInterpolator(value);
    }

    public boolean isRunning() {
        return this.mAnimator.isRunning();
    }

    public void start() {
        cancelAnimator(this.mView);
        Animation animation = this.mView.getAnimation();
        if (animation != null) {
            animation.cancel();
        }
        this.mView.animate().cancel();
        setAnimator(this.mView, this);
        setupValues();
        if (this.mView.getVisibility() != 0) {
            this.mView.setVisibility(0);
        }
        this.mAnimator.start();
    }

    public void cancel() {
        this.mAnimator.cancel();
    }

    public void end() {
        this.mAnimator.end();
    }

    public Animator clone() {
        ViewPropertyAnimator anim = (ViewPropertyAnimator) super.clone();
        anim.mAnimator = this.mAnimator.clone();
        anim.mView = this.mView;
        anim.mProperty = this.mProperty;
        anim.mFromValue = this.mFromValue;
        anim.mToValue = this.mToValue;
        anim.mFinalVisibility = this.mFinalVisibility;
        anim.mFinalValue = this.mFinalValue;
        return anim;
    }

    private void setFinalValues() {
        if (this.mFinalVisibility != -1) {
            this.mView.setVisibility(this.mFinalVisibility);
        }
        if (this.mFinalValue != Float.MIN_VALUE) {
            setValue(this.mFinalValue);
        }
    }

    private void setupValues() {
        this.mFromValue = calulateAnimatorValue(this.mFromValue);
        this.mToValue = calulateAnimatorValue(this.mToValue);
        this.mFinalValue = calulateAnimatorValue(this.mFinalValue);
    }

    private float calulateAnimatorValue(float value) {
        int[] location;
        if (value == 0.003f) {
            if (this.mProperty != 128 && this.mProperty != 1) {
                return value;
            }
            location = new int[2];
            this.mView.getLocationOnScreen(location);
            value = (float) (DISPLAY_METRICES_WIDTH - location[0]);
            if (this.mProperty == 128) {
                return value + ((float) this.mView.getLeft());
            }
            return value;
        } else if (value == 0.004f) {
            if (this.mProperty != 128 && this.mProperty != 1) {
                return value;
            }
            location = new int[2];
            this.mView.getLocationOnScreen(location);
            value = -(getWidthOrMeasureWidth(this.mView) + ((float) location[0]));
            if (this.mProperty == 128) {
                return value + ((float) this.mView.getLeft());
            }
            return value;
        } else if (value == 0.001f) {
            if (this.mProperty != 256 && this.mProperty != 2) {
                return value;
            }
            location = new int[2];
            this.mView.getLocationOnScreen(location);
            value = -(getHeightOrMeasureHeight(this.mView) + ((float) location[1]));
            if (this.mProperty == 256) {
                return value + ((float) this.mView.getTop());
            }
            return value;
        } else if (value == 0.002f) {
            if (this.mProperty != 256 && this.mProperty != 2) {
                return value;
            }
            location = new int[2];
            this.mView.getLocationOnScreen(location);
            value = (float) (DISPLAY_METRICES_HEIGHT - location[1]);
            if (this.mProperty == 256) {
                return value + ((float) this.mView.getTop());
            }
            return value;
        } else if (value == 0.008f) {
            return getHeightOrMeasureHeight(this.mView);
        } else {
            if (value == 0.005f) {
                return getWidthOrMeasureWidth(this.mView);
            }
            if (value == 0.009f) {
                return -getHeightOrMeasureHeight(this.mView);
            }
            if (value == 0.006f) {
                return -getWidthOrMeasureWidth(this.mView);
            }
            if (value == 0.01f) {
                return getHeightOrMeasureHeight(this.mView) / 2.0f;
            }
            if (value == 0.007f) {
                return getWidthOrMeasureWidth(this.mView) / 2.0f;
            }
            if (value == Float.MAX_VALUE) {
                return getValue();
            }
            return value;
        }
    }

    private float getValue() {
        int i = this.mProperty;
        if (i == 4) {
            return this.mView.getScaleX();
        }
        if (i == 8) {
            return this.mView.getScaleY();
        }
        if (i == 16) {
            return this.mView.getRotation();
        }
        if (i == 32) {
            return this.mView.getRotationX();
        }
        if (i == 64) {
            return this.mView.getRotationY();
        }
        if (i == 128) {
            return this.mView.getX();
        }
        if (i == 256) {
            return this.mView.getY();
        }
        if (i == 512) {
            return this.mView.getAlpha();
        }
        switch (i) {
            case 1:
                return this.mView.getTranslationX();
            case 2:
                return this.mView.getTranslationY();
            default:
                return Float.MIN_VALUE;
        }
    }

    private void setValue(float value) {
        int i = this.mProperty;
        if (i == 4) {
            this.mView.setScaleX(value);
        } else if (i == 8) {
            this.mView.setScaleY(value);
        } else if (i == 16) {
            this.mView.setRotation(value);
        } else if (i == 32) {
            this.mView.setRotationX(value);
        } else if (i == 64) {
            this.mView.setRotationY(value);
        } else if (i == 128) {
            this.mView.setX(value);
        } else if (i == 256) {
            this.mView.setY(value);
        } else if (i != 512) {
            switch (i) {
                case 1:
                    this.mView.setTranslationX(value);
                    return;
                case 2:
                    this.mView.setTranslationY(value);
                    return;
                default:
                    return;
            }
        } else {
            this.mView.setAlpha(value);
        }
    }

    public float getWidthOrMeasureWidth(View view) {
        int width = view.getWidth();
        if (width == 0) {
            view.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            width = view.getMeasuredWidth();
        }
        return (float) width;
    }

    public static float getHeightOrMeasureHeight(View view) {
        int height = view.getHeight();
        if (height == 0) {
            view.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            height = view.getMeasuredHeight();
        }
        return (float) height;
    }

    private static void setAnimator(View view, Animator anim) {
        if (anim != null) {
            mAnimatorMap.put(view, anim);
        } else {
            mAnimatorMap.remove(view);
        }
    }

    public static Animator getAnimator(View view) {
        return (Animator) mAnimatorMap.get(view);
    }

    public static void cancelAnimator(View view) {
        Animator anim = (Animator) mAnimatorMap.remove(view);
        if (anim != null) {
            anim.cancel();
        }
    }
}

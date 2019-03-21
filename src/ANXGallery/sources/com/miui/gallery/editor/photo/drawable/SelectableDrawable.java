package com.miui.gallery.editor.photo.drawable;

import android.animation.TimeInterpolator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;
import android.util.StateSet;

public class SelectableDrawable extends Drawable {
    private static final int[] STATE_ACTIVATED = new int[]{16843518};
    private static final int[] STATE_SELECTED = new int[]{16842913};
    private State mAnimateState;
    private Callback mChildrenCallback;
    private long mDuration;
    private int mFromAlpha;
    private TimeInterpolator mInterpolator;
    private boolean mMutated;
    private boolean mSelected;
    private long mStart;
    private ChildrenState mState;
    private int mToAlpha;

    private static class ChildrenState extends ConstantState {
        private int mChangingConfigurations;
        private Drawable mNormal;
        private Drawable mSelect;

        ChildrenState(Drawable normal, Drawable select) {
            this.mNormal = normal;
            this.mSelect = select;
        }

        private ChildrenState(ChildrenState state) {
            this.mNormal = state.mNormal;
            this.mSelect = state.mSelect;
            this.mChangingConfigurations = state.mChangingConfigurations;
        }

        public Drawable newDrawable() {
            return new SelectableDrawable(this, null);
        }

        public int getChangingConfigurations() {
            return (this.mChangingConfigurations | this.mNormal.getChangingConfigurations()) | this.mSelect.getChangingConfigurations();
        }

        ChildrenState mutate() {
            ChildrenState state = new ChildrenState(this);
            state.mNormal.mutate();
            state.mSelect.mutate();
            return state;
        }
    }

    private enum State {
        IDLE,
        PREPARE,
        RUNNING
    }

    public SelectableDrawable(Drawable normal, Drawable selected) {
        this(new ChildrenState(normal, selected));
    }

    private SelectableDrawable(ChildrenState state) {
        this.mDuration = 200;
        this.mChildrenCallback = new Callback() {
            public void invalidateDrawable(Drawable who) {
                if (SelectableDrawable.this.getCallback() == null) {
                    return;
                }
                if (who == SelectableDrawable.this.mState.mNormal || who == SelectableDrawable.this.mState.mSelect) {
                    SelectableDrawable.this.getCallback().invalidateDrawable(SelectableDrawable.this);
                }
            }

            public void scheduleDrawable(Drawable who, Runnable what, long when) {
                if (SelectableDrawable.this.getCallback() == null) {
                    return;
                }
                if (who == SelectableDrawable.this.mState.mNormal || who == SelectableDrawable.this.mState.mSelect) {
                    SelectableDrawable.this.getCallback().scheduleDrawable(SelectableDrawable.this, what, when);
                }
            }

            public void unscheduleDrawable(Drawable who, Runnable what) {
                if (SelectableDrawable.this.getCallback() == null) {
                    return;
                }
                if (who == SelectableDrawable.this.mState.mNormal || who == SelectableDrawable.this.mState.mSelect) {
                    SelectableDrawable.this.getCallback().unscheduleDrawable(SelectableDrawable.this, what);
                }
            }
        };
        this.mState = state;
        this.mState.mNormal.setCallback(this.mChildrenCallback);
        this.mState.mSelect.setCallback(this.mChildrenCallback);
    }

    public void setDuration(long duration) {
        this.mDuration = duration;
    }

    public void setInterpolator(TimeInterpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public void setChangingConfigurations(int configs) {
        this.mState.mChangingConfigurations = configs;
    }

    public int getChangingConfigurations() {
        return this.mState.getChangingConfigurations();
    }

    public void setDither(boolean dither) {
        this.mState.mSelect.setDither(dither);
        this.mState.mNormal.setDither(dither);
    }

    public void setFilterBitmap(boolean filter) {
        this.mState.mSelect.setFilterBitmap(filter);
        this.mState.mNormal.setFilterBitmap(filter);
    }

    public void clearColorFilter() {
        this.mState.mNormal.clearColorFilter();
        this.mState.mSelect.clearColorFilter();
    }

    public int getAlpha() {
        return getCurrent().getAlpha();
    }

    public boolean isStateful() {
        return true;
    }

    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        if (this.mAnimateState != State.IDLE) {
            this.mAnimateState = State.IDLE;
        }
        invalidateSelf();
    }

    protected boolean onStateChange(int[] state) {
        boolean selected;
        if (StateSet.stateSetMatches(STATE_SELECTED, state) || StateSet.stateSetMatches(STATE_ACTIVATED, state)) {
            selected = true;
        } else {
            selected = false;
        }
        if (this.mSelected == selected) {
            return false;
        }
        this.mSelected = selected;
        if (this.mAnimateState != State.PREPARE) {
            if (selected) {
                this.mFromAlpha = 0;
                this.mToAlpha = this.mState.mSelect.getAlpha();
            } else {
                this.mFromAlpha = this.mState.mSelect.getAlpha();
                this.mToAlpha = 0;
            }
            this.mAnimateState = State.PREPARE;
            return true;
        } else if ((!selected || this.mToAlpha != 0) && (selected || this.mFromAlpha != 0)) {
            return false;
        } else {
            this.mAnimateState = State.IDLE;
            return false;
        }
    }

    protected boolean onLevelChange(int level) {
        return this.mState.mSelect.setLevel(level) || this.mState.mNormal.setLevel(level);
    }

    protected void onBoundsChange(Rect bounds) {
        this.mState.mNormal.setBounds(bounds);
        this.mState.mSelect.setBounds(bounds);
    }

    public Drawable getCurrent() {
        return this.mSelected ? this.mState.mSelect : this.mState.mNormal;
    }

    public boolean setVisible(boolean visible, boolean restart) {
        return this.mState.mSelect.setVisible(visible, restart) || this.mState.mNormal.setVisible(visible, restart);
    }

    public void setAutoMirrored(boolean mirrored) {
        this.mState.mNormal.setAutoMirrored(mirrored);
        this.mState.mSelect.setAutoMirrored(mirrored);
    }

    public boolean isAutoMirrored() {
        return getCurrent().isAutoMirrored();
    }

    public Region getTransparentRegion() {
        return getCurrent().getTransparentRegion();
    }

    public int getIntrinsicWidth() {
        return getCurrent().getIntrinsicWidth();
    }

    public int getIntrinsicHeight() {
        return getCurrent().getIntrinsicHeight();
    }

    public int getMinimumWidth() {
        return getCurrent().getMinimumWidth();
    }

    public int getMinimumHeight() {
        return getCurrent().getMinimumHeight();
    }

    public boolean getPadding(Rect padding) {
        return getCurrent().getPadding(padding);
    }

    public Drawable mutate() {
        if (!this.mMutated) {
            this.mState = this.mState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    public ConstantState getConstantState() {
        return this.mState;
    }

    public void draw(Canvas canvas) {
        if (this.mAnimateState == State.IDLE) {
            getCurrent().draw(canvas);
            return;
        }
        this.mState.mNormal.draw(canvas);
        long current = SystemClock.uptimeMillis();
        if (this.mAnimateState == State.PREPARE) {
            this.mStart = current;
            this.mAnimateState = State.RUNNING;
        }
        int value = this.mState.mSelect.getAlpha();
        float fraction = ((float) (current - this.mStart)) / ((float) this.mDuration);
        this.mState.mSelect.setAlpha(calculateAlpha(fraction, this.mFromAlpha, this.mToAlpha, this.mInterpolator));
        this.mState.mSelect.draw(canvas);
        this.mState.mSelect.setAlpha(value);
        if (fraction < 1.0f) {
            invalidateSelf();
        } else {
            this.mAnimateState = State.IDLE;
        }
    }

    public void setAlpha(int alpha) {
        this.mState.mNormal.setAlpha(alpha);
        this.mState.mSelect.setAlpha(alpha);
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mState.mNormal.setColorFilter(colorFilter);
        this.mState.mSelect.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public int getOpacity() {
        return getCurrent().getOpacity();
    }

    private static int calculateAlpha(float fraction, int from, int to, TimeInterpolator interpolator) {
        if (fraction > 1.0f) {
            fraction = 1.0f;
        }
        if (interpolator != null) {
            fraction = interpolator.getInterpolation(fraction);
        }
        return (int) (((float) from) + (((float) (to - from)) * fraction));
    }
}

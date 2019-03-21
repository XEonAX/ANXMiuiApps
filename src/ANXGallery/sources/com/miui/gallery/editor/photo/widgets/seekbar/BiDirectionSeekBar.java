package com.miui.gallery.editor.photo.widgets.seekbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.miui.gallery.R;

public class BiDirectionSeekBar extends BasicSeekBar {
    private int mAnchor;
    private int mMax;
    private boolean mStickyState;
    private int mTouchSlop;

    private static class BiDirectionDrawable extends Drawable {
        private Paint mBlankPaint;
        private float mBlankWidth;
        private Drawable mDrawable;
        private Rect mPadding = new Rect();

        public BiDirectionDrawable(Drawable drawable, Resources resources) {
            this.mDrawable = drawable;
            this.mDrawable.getPadding(this.mPadding);
            this.mBlankPaint = new Paint(1);
            this.mBlankPaint.setStyle(Style.FILL);
            this.mBlankPaint.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
            this.mBlankWidth = resources.getDimension(R.dimen.photo_editor_bi_direction_seek_bar_blank);
        }

        public int getOpacity() {
            return this.mDrawable.getOpacity();
        }

        public void setChangingConfigurations(int configs) {
            this.mDrawable.setChangingConfigurations(configs);
        }

        public int getChangingConfigurations() {
            return this.mDrawable.getChangingConfigurations();
        }

        public void setDither(boolean dither) {
            this.mDrawable.setDither(dither);
        }

        public void setFilterBitmap(boolean filter) {
            this.mDrawable.setFilterBitmap(filter);
        }

        public int getAlpha() {
            return this.mDrawable.getAlpha();
        }

        public void setColorFilter(int color, Mode mode) {
            this.mDrawable.setColorFilter(color, mode);
        }

        public void clearColorFilter() {
            this.mDrawable.clearColorFilter();
        }

        public boolean isStateful() {
            return this.mDrawable.isStateful();
        }

        public boolean setState(int[] stateSet) {
            return this.mDrawable.setState(stateSet);
        }

        public int[] getState() {
            return this.mDrawable.getState();
        }

        public void jumpToCurrentState() {
            this.mDrawable.jumpToCurrentState();
        }

        public Region getTransparentRegion() {
            Rect bounds = getBounds();
            this.mDrawable.setBounds(bounds.centerX(), bounds.top, bounds.right, bounds.bottom);
            Region positive = this.mDrawable.getTransparentRegion();
            if (positive == null) {
                return null;
            }
            this.mDrawable.setBounds(bounds.left, bounds.top, bounds.centerX(), bounds.bottom);
            positive.union(this.mDrawable.getTransparentRegion().getBounds());
            return positive;
        }

        public boolean getPadding(Rect padding) {
            if (this.mPadding.isEmpty()) {
                return false;
            }
            padding.set(this.mPadding);
            padding.left = padding.right;
            return true;
        }

        public void draw(Canvas canvas) {
            int negative;
            int positive;
            Rect bounds = getBounds();
            int centerX = bounds.centerX();
            this.mDrawable.setBounds(centerX - this.mPadding.left, bounds.top, bounds.right, bounds.bottom);
            int level = getLevel();
            if (level > 5000) {
                negative = 0;
                positive = (level - 5000) * 2;
            } else if (level < 5000) {
                negative = (5000 - level) * 2;
                positive = 0;
            } else {
                negative = 0;
                positive = 0;
            }
            this.mDrawable.setLevel(positive);
            this.mDrawable.draw(canvas);
            canvas.save();
            canvas.scale(-1.0f, 1.0f, (float) bounds.centerX(), 0.0f);
            this.mDrawable.setLevel(negative);
            this.mDrawable.draw(canvas);
            canvas.restore();
            Canvas canvas2 = canvas;
            canvas2.drawRect(((float) centerX) - this.mBlankWidth, (float) bounds.top, this.mBlankWidth + ((float) centerX), (float) bounds.bottom, this.mBlankPaint);
        }

        public void setAlpha(int alpha) {
            this.mDrawable.setAlpha(alpha);
        }

        public void setColorFilter(ColorFilter colorFilter) {
            this.mDrawable.setColorFilter(colorFilter);
        }
    }

    private class SeekBarChangeDelegator implements OnSeekBarChangeListener {
        private OnSeekBarChangeListener mDelegated;

        public SeekBarChangeDelegator(OnSeekBarChangeListener delegated) {
            this.mDelegated = delegated;
        }

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            if (this.mDelegated != null) {
                this.mDelegated.onProgressChanged(seekBar, progress - BiDirectionSeekBar.this.mMax, fromUser);
            }
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
            if (this.mDelegated != null) {
                this.mDelegated.onStartTrackingTouch(seekBar);
            }
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            if (this.mDelegated != null) {
                this.mDelegated.onStopTrackingTouch(seekBar);
            }
        }
    }

    public BiDirectionSeekBar(Context context) {
        this(context, null);
    }

    public BiDirectionSeekBar(Context context, AttributeSet attrs) {
        this(context, attrs, 16842875);
    }

    public BiDirectionSeekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mMax = getMax() / 2;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setLayerType(2, null);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (this.mStickyState) {
            int action = event.getAction();
            if (action == 2) {
                if (Math.abs(this.mAnchor - ((int) event.getX())) < this.mTouchSlop) {
                    return true;
                }
            } else if (action == 1 || action == 3) {
                event.setLocation((float) this.mAnchor, event.getY());
                this.mStickyState = false;
            }
        }
        boolean handled = super.onTouchEvent(event);
        if (handled && getCurrentValue() == 0) {
            this.mStickyState = true;
            this.mAnchor = (int) event.getX();
            return handled;
        }
        this.mStickyState = false;
        return handled;
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener l) {
        super.setOnSeekBarChangeListener(new SeekBarChangeDelegator(l));
    }

    public void setProgressDrawable(Drawable d) {
        if (d instanceof LayerDrawable) {
            LayerDrawable layer = (LayerDrawable) d.mutate();
            Drawable progress = layer.findDrawableByLayerId(16908301);
            if (progress != null) {
                layer.setDrawableByLayerId(16908301, new BiDirectionDrawable(progress, getResources()));
                super.setProgressDrawable(layer);
                return;
            }
        } else if (d instanceof DrawableContainer) {
            d.mutate();
        }
        super.setProgressDrawable(new BiDirectionDrawable(d, getResources()));
    }

    public void setMaxValue(int max) {
        setMax(max * 2);
        this.mMax = max;
    }

    public int getMaxValue() {
        return this.mMax;
    }

    public int getCurrentValue() {
        return getProgress() - this.mMax;
    }

    public void setCurrentValue(int value) {
        setProgress(this.mMax + value);
    }

    void updateThumb(int progress) {
        super.updateThumb(progress - this.mMax);
    }
}

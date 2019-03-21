package com.miui.gallery.editor.photo.widgets.seekbar;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.miui.gallery.R;

public class ColorPicker extends SeekBar {
    public static int[] COLORS = new int[]{-16747777, -384518, -53457, -35801, -16384, -13964758, -15998977};
    private static int MAX_LEVEL = 10000;
    private Delegator mDelegator;
    private CircleDrawable mThumbDrawable;

    private static abstract class Delegator<D extends Drawable> {
        D mDrawable;

        abstract int findLevel(int i);

        abstract int getColor();

        Delegator(D drawable) {
            this.mDrawable = drawable;
        }
    }

    private static class BitmapDelegator extends Delegator<BitmapDrawable> {
        private Bitmap mBitmap;

        public BitmapDelegator(BitmapDrawable drawable) {
            super(drawable);
            this.mBitmap = drawable.getBitmap();
        }

        int getColor() {
            return this.mBitmap.getPixel((int) (((float) ((BitmapDrawable) this.mDrawable).getLevel()) * (((float) this.mBitmap.getWidth()) / ((float) ColorPicker.MAX_LEVEL))), this.mBitmap.getHeight() / 2);
        }

        int findLevel(int color) {
            for (int x = 0; x < this.mBitmap.getWidth(); x++) {
                if (this.mBitmap.getPixel(x, this.mBitmap.getHeight() / 2) == color) {
                    return (int) ((((float) x) / ((float) this.mBitmap.getWidth())) * ((float) ColorPicker.MAX_LEVEL));
                }
            }
            return -1;
        }
    }

    private static class GradientDelegator extends Delegator<ColorGradientDrawable> {
        private int[] mColors;

        GradientDelegator(ColorGradientDrawable drawable) {
            super(drawable);
            this.mColors = drawable.getColors();
        }

        int getColor() {
            int level = ((ColorGradientDrawable) this.mDrawable).getLevel();
            if (level == ColorPicker.MAX_LEVEL) {
                return -1;
            }
            if (level == 0) {
                return -16777216;
            }
            float scale = ((float) level) / ((float) ColorPicker.MAX_LEVEL);
            if (scale <= 0.0f) {
                return this.mColors[0];
            }
            if (scale >= 1.0f) {
                return this.mColors[this.mColors.length - 1];
            }
            float p = scale * ((float) (this.mColors.length - 1));
            int i = (int) p;
            p -= (float) i;
            int c0 = this.mColors[i];
            int c1 = this.mColors[i + 1];
            return Color.argb(ave(Color.alpha(c0), Color.alpha(c1), p), ave(Color.red(c0), Color.red(c1), p), ave(Color.green(c0), Color.green(c1), p), ave(Color.blue(c0), Color.blue(c1), p));
        }

        private int ave(int s, int d, float p) {
            return Math.round(((float) (d - s)) * p) + s;
        }

        int findLevel(int color) {
            if (color == -16777216) {
                return 0;
            }
            if (color == -1) {
                return ColorPicker.MAX_LEVEL;
            }
            int a = Color.alpha(color);
            int r = Color.red(color);
            int g = Color.green(color);
            int b = Color.blue(color);
            int index = -1;
            int i = 0;
            while (i < this.mColors.length - 1) {
                int preColor = this.mColors[i];
                int nextColor = this.mColors[i + 1];
                if (color != preColor) {
                    if (color != nextColor) {
                        int pre_a = Color.alpha(preColor);
                        int pre_r = Color.red(preColor);
                        int pre_g = Color.green(preColor);
                        int pre_b = Color.blue(preColor);
                        int next_a = Color.alpha(nextColor);
                        int next_r = Color.red(nextColor);
                        int next_g = Color.green(nextColor);
                        int next_b = Color.blue(nextColor);
                        if (isValueInside(a, pre_a, next_a) && isValueInside(r, pre_r, next_r) && isValueInside(g, pre_g, next_g) && isValueInside(b, pre_b, next_b)) {
                            index = i;
                            break;
                        }
                        i++;
                    } else {
                        return (int) ((((float) (i + 1)) / ((float) (this.mColors.length - 1))) * ((float) ColorPicker.MAX_LEVEL));
                    }
                }
                return (int) ((((float) i) / ((float) (this.mColors.length - 1))) * ((float) ColorPicker.MAX_LEVEL));
            }
            if (index == -1) {
                return 0;
            }
            return (int) (((float) ColorPicker.MAX_LEVEL) * ((((float) index) / ((float) (this.mColors.length - 1))) + ((1.0f / ((float) (this.mColors.length - 1))) * findColorProgress(color, this.mColors[index], this.mColors[index + 1]))));
        }

        private float getValueProgress(int value, int a, int b) {
            if (b == a) {
                return 0.0f;
            }
            return ((float) (value - a)) / ((float) (b - a));
        }

        private float findColorProgress(int color, int a, int b) {
            float progress_a = getValueProgress(Color.alpha(color), Color.alpha(a), Color.alpha(b));
            float progress_r = getValueProgress(Color.red(color), Color.red(a), Color.red(b));
            float progress_g = getValueProgress(Color.green(color), Color.green(a), Color.green(b));
            return Math.max(Math.max(Math.max(progress_a, progress_r), progress_g), getValueProgress(Color.blue(color), Color.blue(a), Color.blue(b)));
        }

        private boolean isValueInside(int value, int a, int b) {
            return (value >= a && value <= b) || (value >= b && value <= a);
        }
    }

    public ColorPicker(Context context) {
        super(context);
        init();
    }

    public ColorPicker(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public ColorPicker(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        this.mThumbDrawable = new CircleDrawable((float) getContext().getResources().getDimensionPixelSize(R.dimen.custom_seekbar_thumb_size_offset), getResources());
        int size = getContext().getResources().getDimensionPixelSize(R.dimen.custom_seekbar_thumb_size);
        this.mThumbDrawable.setIntrinsicWidth(size);
        this.mThumbDrawable.setIntrinsicHeight(size);
        setThumb(this.mThumbDrawable);
        setLayerType(2, null);
    }

    public void setProgressDrawable(Drawable d) {
        super.setProgressDrawable(d);
        if (d instanceof BitmapDrawable) {
            this.mDelegator = new BitmapDelegator((BitmapDrawable) d);
        } else if (d instanceof ColorGradientDrawable) {
            this.mDelegator = new GradientDelegator((ColorGradientDrawable) d);
        }
    }

    public int getColor() {
        return this.mDelegator.getColor();
    }

    public void setThumbColor(int color) {
        this.mThumbDrawable.setColor(color);
    }

    public int findProgressByColor(int color) {
        return (this.mDelegator.findLevel(color) * getMax()) / MAX_LEVEL;
    }
}

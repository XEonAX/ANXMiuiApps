package com.miui.screenrecorder.colorart.src.colorart;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.support.v4.view.ViewCompat;
import com.miui.screenrecorder.tools.LogUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class ColorArt {
    private static final String LOG_TAG = ColorArt.class.getSimpleName();
    private final double COLOR_THRESHOLD_MINIMUM_PERCENTAGE;
    private final double EDGE_COLOR_DISCARD_THRESHOLD;
    private final float MINIMUM_SATURATION_THRESHOLD;
    private int mBackgroundColor;
    private final Bitmap mBitmap;
    private Integer mDetailColor;
    private HashBag<Integer> mImageColors;
    private boolean mOnlyBackGround;
    private Integer mPrimaryColor;
    private Integer mSecondaryColor;

    private class CountedColor implements Comparable<CountedColor> {
        private final int mColor;
        private final int mCount;

        public CountedColor(int color, int count) {
            this.mColor = color;
            this.mCount = count;
        }

        public int compareTo(CountedColor another) {
            if (getCount() < another.getCount()) {
                return -1;
            }
            return getCount() == another.getCount() ? 0 : 1;
        }

        public boolean isBlackOrWhite() {
            double r = ((double) Color.red(this.mColor)) / 255.0d;
            double g = ((double) Color.green(this.mColor)) / 255.0d;
            double b = ((double) Color.blue(this.mColor)) / 255.0d;
            if ((r <= 0.91d || g <= 0.91d || b <= 0.91d) && (r >= 0.09d || g >= 0.09d || b >= 0.09d)) {
                return false;
            }
            return true;
        }

        public int getCount() {
            return this.mCount;
        }

        public int getColor() {
            return this.mColor;
        }
    }

    public ColorArt(Bitmap bitmap) {
        this(bitmap, true);
    }

    public ColorArt(Bitmap bitmap, boolean onlyBackGround) {
        this.COLOR_THRESHOLD_MINIMUM_PERCENTAGE = 0.01d;
        this.EDGE_COLOR_DISCARD_THRESHOLD = 0.3d;
        this.MINIMUM_SATURATION_THRESHOLD = 0.15f;
        this.mPrimaryColor = null;
        this.mSecondaryColor = null;
        this.mDetailColor = null;
        this.mOnlyBackGround = true;
        this.mBitmap = Bitmap.createScaledBitmap(bitmap, 120, 120, false);
        this.mOnlyBackGround = onlyBackGround;
        analyzeImage();
    }

    public int colorBurn(int RGBValues, float level) {
        return Color.rgb((int) Math.floor((double) (((float) Color.red(RGBValues)) * (1.0f - level))), (int) Math.floor((double) (((float) Color.green(RGBValues)) * (1.0f - level))), (int) Math.floor((double) (((float) Color.blue(RGBValues)) * (1.0f - level))));
    }

    private void analyzeImage() {
        this.mBackgroundColor = findEdgeColor();
        if (this.mOnlyBackGround) {
            findTextColors(this.mImageColors);
            boolean hasDarkBackground = isDarkColor(this.mBackgroundColor);
            if (this.mPrimaryColor == null) {
                LogUtil.d(LOG_TAG, "Unable to detect primary color in image");
                if (hasDarkBackground) {
                    this.mPrimaryColor = Integer.valueOf(-1);
                } else {
                    this.mPrimaryColor = Integer.valueOf(ViewCompat.MEASURED_STATE_MASK);
                }
            }
            if (this.mSecondaryColor == null) {
                LogUtil.d(LOG_TAG, "Unable to detect secondary in image");
                if (hasDarkBackground) {
                    this.mSecondaryColor = Integer.valueOf(-1);
                } else {
                    this.mSecondaryColor = Integer.valueOf(ViewCompat.MEASURED_STATE_MASK);
                }
            }
            if (this.mDetailColor == null) {
                LogUtil.d(LOG_TAG, "Unable to detect detail color in image");
                if (hasDarkBackground) {
                    this.mDetailColor = Integer.valueOf(-1);
                } else {
                    this.mDetailColor = Integer.valueOf(ViewCompat.MEASURED_STATE_MASK);
                }
            }
        }
    }

    private int findEdgeColor() {
        int height = this.mBitmap.getHeight();
        int width = this.mBitmap.getWidth();
        this.mImageColors = new HashBag();
        HashBag<Integer> leftImageColors = new HashBag();
        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                if (x == 0) {
                    leftImageColors.add(Integer.valueOf(this.mBitmap.getPixel(x, y)));
                }
                this.mImageColors.add(Integer.valueOf(this.mBitmap.getPixel(x, y)));
            }
        }
        ArrayList<CountedColor> sortedColors = new ArrayList();
        int randomColorThreshold = (int) (((double) height) * 0.01d);
        Iterator<Integer> iterator = leftImageColors.iterator();
        while (iterator.hasNext()) {
            Integer color = (Integer) iterator.next();
            int colorCount = leftImageColors.getCount(color);
            if (colorCount >= randomColorThreshold) {
                sortedColors.add(new CountedColor(color.intValue(), colorCount));
            }
        }
        Collections.sort(sortedColors);
        Iterator<CountedColor> sortedColorIterator = sortedColors.iterator();
        if (!sortedColorIterator.hasNext()) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        CountedColor proposedEdgeColor = (CountedColor) sortedColorIterator.next();
        if (!proposedEdgeColor.isBlackOrWhite()) {
            return proposedEdgeColor.getColor();
        }
        while (sortedColorIterator.hasNext()) {
            CountedColor nextProposedColor = (CountedColor) sortedColorIterator.next();
            if (((double) nextProposedColor.getCount()) / ((double) proposedEdgeColor.getCount()) > 0.3d) {
                if (!nextProposedColor.isBlackOrWhite()) {
                    proposedEdgeColor = nextProposedColor;
                    break;
                }
            }
            break;
        }
        return proposedEdgeColor.getColor();
    }

    private void findTextColors(HashBag<Integer> colors) {
        int currentColor;
        Iterator<Integer> iterator = colors.iterator();
        ArrayList<CountedColor> sortedColors = new ArrayList();
        boolean findDarkTextColor = !isDarkColor(this.mBackgroundColor);
        while (iterator.hasNext()) {
            currentColor = colorWithMinimumSaturation(((Integer) iterator.next()).intValue(), 0.15f);
            if (isDarkColor(currentColor) == findDarkTextColor) {
                sortedColors.add(new CountedColor(currentColor, colors.getCount(Integer.valueOf(currentColor))));
            }
        }
        Collections.sort(sortedColors);
        Iterator it = sortedColors.iterator();
        while (it.hasNext()) {
            currentColor = ((CountedColor) it.next()).getColor();
            if (this.mPrimaryColor == null) {
                if (isContrastingColor(currentColor, this.mBackgroundColor)) {
                    this.mPrimaryColor = Integer.valueOf(currentColor);
                }
            } else if (this.mSecondaryColor == null) {
                if (isDistinctColor(this.mPrimaryColor.intValue(), currentColor) && isContrastingColor(currentColor, this.mBackgroundColor)) {
                    this.mSecondaryColor = Integer.valueOf(currentColor);
                }
            } else if (this.mDetailColor == null && isDistinctColor(this.mSecondaryColor.intValue(), currentColor) && isDistinctColor(this.mPrimaryColor.intValue(), currentColor) && isContrastingColor(currentColor, this.mBackgroundColor)) {
                this.mDetailColor = Integer.valueOf(currentColor);
                return;
            }
        }
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getPrimaryColor() {
        return this.mPrimaryColor.intValue();
    }

    public int getSecondaryColor() {
        return this.mSecondaryColor.intValue();
    }

    public int getDetailColor() {
        return this.mDetailColor.intValue();
    }

    private int colorWithMinimumSaturation(int color, float minSaturation) {
        float[] hsv = new float[3];
        Color.colorToHSV(color, hsv);
        if (hsv[1] >= minSaturation) {
            return color;
        }
        return Color.HSVToColor(new float[]{hsv[0], minSaturation, hsv[2]});
    }

    private boolean isDarkColor(int color) {
        return ((0.2126d * (((double) Color.red(color)) / 255.0d)) + (0.7152d * (((double) Color.green(color)) / 255.0d))) + (0.0722d * (((double) Color.blue(color)) / 255.0d)) < 0.5d;
    }

    private boolean isContrastingColor(int backgroundColor, int foregroundColor) {
        double contrast;
        double bLum = ((0.2126d * (((double) Color.red(backgroundColor)) / 255.0d)) + (0.7152d * (((double) Color.green(backgroundColor)) / 255.0d))) + (0.0722d * (((double) Color.blue(backgroundColor)) / 255.0d));
        double fLum = ((0.2126d * (((double) Color.red(foregroundColor)) / 255.0d)) + (0.7152d * (((double) Color.green(foregroundColor)) / 255.0d))) + (0.0722d * (((double) Color.blue(foregroundColor)) / 255.0d));
        if (bLum > fLum) {
            contrast = (0.05d + bLum) / (0.05d + fLum);
        } else {
            contrast = (0.05d + fLum) / (0.05d + bLum);
        }
        return contrast > 1.6d;
    }

    private boolean isDistinctColor(int colorA, int colorB) {
        double r = ((double) Color.red(colorA)) / 255.0d;
        double g = ((double) Color.green(colorA)) / 255.0d;
        double b = ((double) Color.blue(colorA)) / 255.0d;
        double a = ((double) Color.alpha(colorA)) / 255.0d;
        double r1 = ((double) Color.red(colorB)) / 255.0d;
        double g1 = ((double) Color.green(colorB)) / 255.0d;
        double b1 = ((double) Color.blue(colorB)) / 255.0d;
        double a1 = ((double) Color.alpha(colorB)) / 255.0d;
        if (Math.abs(r - r1) <= 0.25d && Math.abs(g - g1) <= 0.25d && Math.abs(b - b1) <= 0.25d && Math.abs(a - a1) <= 0.25d) {
            return false;
        }
        if (Math.abs(r - g) >= 0.03d || Math.abs(r - b) >= 0.03d || Math.abs(r1 - g1) >= 0.03d || Math.abs(r1 - b1) >= 0.03d) {
            return true;
        }
        return false;
    }
}

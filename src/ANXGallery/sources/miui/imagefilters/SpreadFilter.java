package miui.imagefilters;

import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class SpreadFilter extends AbstractImageFilter {
    private boolean mIsAlphaSpread = false;
    private boolean mIsSpreadBlack = true;
    private int mRadius;

    public void setRadius(int radius) {
        this.mRadius = radius;
    }

    public void setIsSpreadBlack(boolean value) {
        this.mIsSpreadBlack = value;
    }

    public void setIsAlphaSpread(boolean value) {
        this.mIsAlphaSpread = value;
    }

    public void processData(ImageData imgData) {
        int width = imgData.width;
        int height = imgData.height;
        int[] pixels = imgData.pixels;
        int[] backPixels = imgData.getBackPixels();
        int y = 0;
        while (true) {
            int y2 = y;
            if (y2 <= height - 1) {
                y = 0;
                while (true) {
                    int x = y;
                    if (x > width - 1) {
                        break;
                    }
                    backPixels[(y2 * width) + x] = processPerPixel(pixels, x, y2, width, height);
                    y = x + 1;
                }
                y = y2 + 1;
            } else {
                imgData.swapPixels();
                return;
            }
        }
    }

    private int processPerPixel(int[] pixels, int x, int y, int width, int height) {
        int[] iArr;
        int i;
        int i2;
        int radiusSquare = this.mRadius * this.mRadius;
        int i3 = 255;
        int resultA = this.mIsAlphaSpread ? 255 : 0;
        int resultRgb = 0;
        int resultLuminance = -1;
        int yCursor = -this.mRadius;
        while (yCursor <= this.mRadius) {
            int xCursor = -this.mRadius;
            while (xCursor <= this.mRadius) {
                if ((yCursor * yCursor) + (xCursor * xCursor) > radiusSquare) {
                    iArr = pixels;
                    i = width;
                    i2 = height;
                } else {
                    int color = getColor(pixels, x + xCursor, y + yCursor, width, height);
                    int alpha = (color >>> 24) & i3;
                    int lum = getLuminance(color, alpha);
                    resultLuminance = Math.max(lum, resultLuminance);
                    if (resultLuminance == lum) {
                        resultRgb = color;
                    }
                    resultA = this.mIsAlphaSpread ? Math.min(resultA, alpha) : Math.max(resultA, alpha);
                }
                xCursor++;
                i3 = 255;
            }
            iArr = pixels;
            i = width;
            i2 = height;
            yCursor++;
            i3 = 255;
        }
        iArr = pixels;
        i = width;
        i2 = height;
        return (resultA << 24) | (16777215 & resultRgb);
    }

    private int getLuminance(int color, int alpha) {
        int lum = ImageFilterUtils.convertColorToGrayscale(color);
        if (this.mIsSpreadBlack) {
            lum = 255 - lum;
        }
        return lum * alpha;
    }

    private static final int getColor(int[] pixels, int x, int y, int width, int height) {
        return pixels[(ImageFilterUtils.clamp(0, y, height - 1) * width) + ImageFilterUtils.clamp(0, x, width - 1)];
    }
}

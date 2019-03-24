package miui.imagefilters;

import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class ThresholdFilter extends AbstractImageFilter {
    private int mThresholdLevel = 128;
    private boolean mUniform;

    public void setThresholdLevel(int value) {
        this.mThresholdLevel = value;
    }

    public void setUniform(boolean value) {
        this.mUniform = value;
    }

    public void processData(ImageData imgData) {
        int visiblePixelCount;
        int y;
        int width = imgData.width;
        int height = imgData.height;
        int[] pixels = imgData.pixels;
        int thresholdLevel = 0;
        if (this.mUniform) {
            int visiblePixelCount2;
            int[] perGrayscaleCount = new int[256];
            visiblePixelCount = pixels.length;
            y = 0;
            while (y < height) {
                visiblePixelCount2 = visiblePixelCount;
                for (visiblePixelCount = 0; visiblePixelCount < width; visiblePixelCount++) {
                    int argb = pixels[(y * width) + visiblePixelCount];
                    if (((argb >>> 24) & 255) < 10) {
                        visiblePixelCount2--;
                    } else {
                        int grayscale = ImageFilterUtils.convertColorToGrayscale(argb);
                        perGrayscaleCount[grayscale] = perGrayscaleCount[grayscale] + 1;
                    }
                }
                y++;
                visiblePixelCount = visiblePixelCount2;
            }
            y = (this.mThresholdLevel * visiblePixelCount) / 255;
            int grayscaleStep = 0;
            for (visiblePixelCount2 = 0; visiblePixelCount2 < 256; visiblePixelCount2++) {
                grayscaleStep += perGrayscaleCount[visiblePixelCount2];
                if (grayscaleStep >= y) {
                    thresholdLevel = visiblePixelCount2;
                    break;
                }
            }
        } else {
            thresholdLevel = this.mThresholdLevel;
        }
        for (int y2 = 0; y2 < height; y2++) {
            for (y = 0; y < width; y++) {
                int colorIndex = (y2 * width) + y;
                visiblePixelCount = pixels[colorIndex];
                if (ImageFilterUtils.convertColorToGrayscale(visiblePixelCount) >= thresholdLevel) {
                    pixels[colorIndex] = (-16777216 & visiblePixelCount) | 16777215;
                } else {
                    pixels[colorIndex] = -16777216 & visiblePixelCount;
                }
            }
        }
    }
}

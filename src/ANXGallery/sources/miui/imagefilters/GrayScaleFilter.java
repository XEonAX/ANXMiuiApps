package miui.imagefilters;

import android.graphics.Color;
import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class GrayScaleFilter extends AbstractImageFilter {
    private int mBlackColor = -16777216;
    private int mWhiteColor = -1;

    public void setBlackColor(String strColor) {
        this.mBlackColor = Color.parseColor(strColor);
    }

    public void setWhiteColor(String strColor) {
        this.mWhiteColor = Color.parseColor(strColor);
    }

    public void processData(ImageData imgData) {
        ImageData imageData = imgData;
        int width = imageData.width;
        int height = imageData.height;
        int[] pixels = imageData.pixels;
        int aBlack = this.mBlackColor >>> 24;
        int aWhite = this.mWhiteColor >>> 24;
        int rBlack = (this.mBlackColor >>> 16) & 255;
        int rWhite = (this.mWhiteColor >>> 16) & 255;
        int gBlack = (this.mBlackColor >>> 8) & 255;
        int gWhite = (this.mWhiteColor >>> 8) & 255;
        int bBlack = this.mBlackColor & 255;
        int bWhite = this.mWhiteColor & 255;
        int x = 0;
        while (x < width) {
            int y;
            int y2 = 0;
            while (true) {
                y = y2;
                if (y >= height) {
                    break;
                }
                int colorIndex = (y * width) + x;
                int argb = pixels[colorIndex];
                int luminance = ImageFilterUtils.convertColorToGrayscale(argb);
                int width2 = width;
                pixels[colorIndex] = (((((ImageFilterUtils.interpolate(0, 255, aBlack, aWhite, luminance) * (argb >>> 24)) / 255) << 24) | (ImageFilterUtils.interpolate(0, 255, rBlack, rWhite, luminance) << 16)) | (ImageFilterUtils.interpolate(0, 255, gBlack, gWhite, luminance) << 8)) | ImageFilterUtils.interpolate(0, 255, bBlack, bWhite, luminance);
                y2 = y + 1;
                y = 255;
                width = width2;
                imageData = imgData;
            }
            x++;
            y = 255;
            imageData = imgData;
        }
    }
}

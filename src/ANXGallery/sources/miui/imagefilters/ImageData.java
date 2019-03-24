package miui.imagefilters;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

public class ImageData {
    private int[] backPixels;
    int height;
    private int mHashCode = 0;
    int[] pixels;
    int width;

    public ImageData(int width, int height) {
        this.width = width;
        this.height = height;
        this.pixels = new int[(width * height)];
    }

    public int generalRandomNum(int maxNum) {
        int tempCode = this.mHashCode;
        if (tempCode == 0) {
            int xStep = this.width / 8;
            int yStep = this.height / 8;
            for (int i = 1; i < 8; i++) {
                tempCode ^= this.pixels[((i * yStep) * this.width) + (i * xStep)];
            }
            if (tempCode == 0) {
                tempCode = maxNum;
            }
            if (tempCode < 0) {
                tempCode = -tempCode;
            }
        }
        this.mHashCode = tempCode;
        return tempCode % maxNum;
    }

    public int[] getBackPixels() {
        if (this.backPixels == null || this.backPixels.length != this.pixels.length) {
            this.backPixels = new int[this.pixels.length];
        }
        return this.backPixels;
    }

    public void swapPixels() {
        int[] temp = this.pixels;
        this.pixels = this.backPixels;
        this.backPixels = temp;
    }

    public static ImageData bitmapToImageData(Bitmap bitmap) {
        ImageData imgData = new ImageData(bitmap.getWidth(), bitmap.getHeight());
        bitmap.getPixels(imgData.pixels, 0, imgData.width, 0, 0, imgData.width, imgData.height);
        imgData.generalRandomNum(100);
        return imgData;
    }

    public static Bitmap imageDataToBitmap(ImageData imgData) {
        return Bitmap.createBitmap(imgData.pixels, imgData.width, imgData.height, Config.ARGB_8888);
    }
}

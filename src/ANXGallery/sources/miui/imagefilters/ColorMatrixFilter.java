package miui.imagefilters;

import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class ColorMatrixFilter extends AbstractImageFilter {
    private float[] mColorMatrix;

    public void setColorMatrix(float[] colorMatrix) {
        this.mColorMatrix = colorMatrix;
    }

    public void processData(ImageData imgData) {
        ImageData imageData = imgData;
        if (this.mColorMatrix != null && this.mColorMatrix.length == 20) {
            int width = imageData.width;
            int height = imageData.height;
            int[] pixels = imageData.pixels;
            float a = this.mColorMatrix[0];
            float b = this.mColorMatrix[1];
            float c = this.mColorMatrix[2];
            float d = this.mColorMatrix[3];
            float e = this.mColorMatrix[4];
            float f = this.mColorMatrix[5];
            float g = this.mColorMatrix[6];
            float h = this.mColorMatrix[7];
            float i = this.mColorMatrix[8];
            float j = this.mColorMatrix[9];
            float k = this.mColorMatrix[10];
            float l = this.mColorMatrix[11];
            float m = this.mColorMatrix[12];
            float n = this.mColorMatrix[13];
            float o = this.mColorMatrix[14];
            float p = this.mColorMatrix[15];
            float q = this.mColorMatrix[16];
            float r = this.mColorMatrix[17];
            float s = this.mColorMatrix[18];
            float t = this.mColorMatrix[19];
            int y = 0;
            while (true) {
                int i2 = height - 1;
                int height2 = height;
                height = y;
                int width2;
                int[] pixels2;
                float a2;
                float b2;
                float c2;
                float k2;
                if (height <= i2) {
                    float t2;
                    i2 = 0;
                    while (true) {
                        t2 = t;
                        if (i2 > width - 1) {
                            break;
                        }
                        int colorIndex = (height * width) + i2;
                        int t3 = pixels[colorIndex];
                        width2 = width;
                        int y2 = height;
                        width = (t3 >>> 16) & 255;
                        int x = i2;
                        i2 = (t3 >>> 8) & 255;
                        height = t3 & 255;
                        pixels2 = pixels;
                        int color = t3;
                        int A = (t3 >>> 24) & 255;
                        a2 = a;
                        b2 = b;
                        t = ImageFilterUtils.clamp(0, (int) (((((((float) width) * a) + (((float) i2) * b)) + (((float) height) * c)) + (((float) A) * d)) + e), 255);
                        c2 = c;
                        int newG = ImageFilterUtils.clamp(0, (int) (((((((float) width) * f) + (((float) i2) * g)) + (((float) height) * h)) + (((float) A) * i)) + j), 255);
                        k2 = k;
                        pixels2[colorIndex] = (((ImageFilterUtils.clamp(0, (int) (((((((float) width) * p) + (((float) i2) * q)) + (((float) height) * r)) + (((float) A) * s)) + t2), 255) << 24) | (t << 16)) | (newG << 8)) | ImageFilterUtils.clamp((int) 0.0f, (int) (((((((float) width) * k) + (((float) i2) * l)) + (((float) height) * m)) + (((float) A) * n)) + o), 255);
                        i2 = x + 1;
                        t = t2;
                        width = width2;
                        height = y2;
                        pixels = pixels2;
                        a = a2;
                        b = b2;
                        c = c2;
                        k = k2;
                    }
                    pixels2 = pixels;
                    a2 = a;
                    k2 = k;
                    b2 = b;
                    c2 = c;
                    y = height + 1;
                    height = height2;
                    t = t2;
                } else {
                    width2 = width;
                    pixels2 = pixels;
                    a2 = a;
                    k2 = k;
                    b2 = b;
                    c2 = c;
                    return;
                }
            }
        }
    }
}

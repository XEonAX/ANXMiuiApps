package miui.imagefilters;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import miui.imagefilters.FilterParamType.ParamType;
import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class TransformFilter extends AbstractImageFilter {
    private boolean mBasedOnContent = false;
    private boolean mKeepAspectRatio = true;
    private int mMinVisibleAlpha = 10;
    private Paint mPaint = new Paint(3);
    private float[] mPointsMapping;

    @FilterParamType(ParamType.ICON_SIZE)
    public void setPointsMapping(float[] value) {
        if (value == null || value.length == 8) {
            this.mPointsMapping = value;
        }
    }

    public void setBasedOnContent(boolean value) {
        this.mBasedOnContent = value;
    }

    public void setContentKeepAspectRatio(boolean value) {
        this.mKeepAspectRatio = value;
    }

    public void setMinVisibleAlpha(int value) {
        this.mMinVisibleAlpha = ImageFilterUtils.clamp(0, value, 255);
    }

    public void processData(ImageData imgData) {
        int i;
        ImageData imageData = imgData;
        int width = imageData.width;
        int height = imageData.height;
        int[] pixels = imageData.pixels;
        float left = 0.0f;
        float top = 0.0f;
        float right = (float) width;
        float bottom = (float) height;
        float[] pointsMapping = this.mPointsMapping;
        if (pointsMapping == null) {
            pointsMapping = new float[]{0.0f, 0.0f, right, 0.0f, right, bottom, 0.0f, bottom};
        }
        float[] pointsMapping2 = pointsMapping;
        if (this.mBasedOnContent) {
            int i2 = width;
            int i3 = height;
            int[] iArr = pixels;
            i = 8;
            left = (float) scanEdge(i2, i3, iArr, true, true);
            top = (float) scanEdge(i2, i3, iArr, false, true);
            right = (float) scanEdge(i2, i3, iArr, true, false);
            bottom = (float) scanEdge(i2, i3, iArr, false, false);
            if (left != -1.0f && left != right && top != bottom) {
                if (this.mKeepAspectRatio) {
                    float scanedWidth = right - left;
                    float scanedHeight = bottom - top;
                    float newHeight;
                    if (scanedWidth / ((float) width) > scanedHeight / ((float) height)) {
                        newHeight = (scanedWidth / ((float) width)) * ((float) height);
                        top -= (newHeight - scanedHeight) / 2.0f;
                        bottom += (newHeight - scanedHeight) / 2.0f;
                    } else {
                        newHeight = (scanedHeight / ((float) height)) * ((float) width);
                        left -= (newHeight - scanedWidth) / 2.0f;
                        right += (newHeight - scanedWidth) / 2.0f;
                    }
                }
            } else {
                return;
            }
        }
        i = 8;
        pointsMapping = new float[i];
        pointsMapping[0] = left;
        pointsMapping[1] = top;
        pointsMapping[2] = right;
        pointsMapping[3] = top;
        pointsMapping[4] = right;
        pointsMapping[5] = bottom;
        pointsMapping[6] = left;
        pointsMapping[7] = bottom;
        float[] mappingSrc = pointsMapping;
        Matrix matrix = new Matrix();
        if (matrix.setPolyToPoly(mappingSrc, 0, pointsMapping2, 0, 4)) {
            Bitmap currentBitmap = ImageData.imageDataToBitmap(imgData);
            Bitmap newBitmap = Bitmap.createBitmap(width, height, Config.ARGB_8888);
            new Canvas(newBitmap).drawBitmap(currentBitmap, matrix, this.mPaint);
            imageData.pixels = ImageData.bitmapToImageData(newBitmap).pixels;
        }
    }

    private int scanEdge(int width, int height, int[] pixels, boolean scanX, boolean scanLeftTop) {
        int d1Count = scanX ? width : height;
        int d2Count = scanX ? height : width;
        int borderStart = scanLeftTop ? 0 : d1Count - 1;
        int borderEnd = scanLeftTop ? d1Count - 1 : 0;
        int d1 = borderStart;
        while (d1 != borderEnd) {
            int d2 = 0;
            while (d2 < d2Count) {
                if ((pixels[scanX ? (d2 * width) + d1 : (d1 * width) + d2] >>> 24) > this.mMinVisibleAlpha) {
                    return d1;
                }
                d2++;
            }
            if (scanLeftTop) {
                d1++;
            } else {
                d1--;
            }
        }
        return -1;
    }
}

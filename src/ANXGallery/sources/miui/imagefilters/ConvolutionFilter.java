package miui.imagefilters;

import miui.imagefilters.IImageFilter.AbstractImageFilter;

public class ConvolutionFilter extends AbstractImageFilter {
    private int mBias;
    private int mDivisor;
    private boolean mIsFilterA = true;
    private boolean mIsFilterB = true;
    private boolean mIsFilterG = true;
    private boolean mIsFilterR = true;
    private boolean mIsParamsFormated;
    private int[] mMatrix;
    private int mMatrixSideLength;
    private int mRepeatCount;

    public void setMatrix(int[] matrix) {
        this.mMatrix = matrix;
        this.mIsParamsFormated = false;
    }

    public void setRepeatCount(int count) {
        this.mRepeatCount = count;
    }

    public void setDivisor(int divisor) {
        this.mDivisor = divisor;
        this.mIsParamsFormated = false;
    }

    public void setBias(int bias) {
        this.mBias = bias;
    }

    public void setChannel(String channel) {
        boolean[] outRgba = new boolean[4];
        ImageFilterUtils.checkChannelParam(channel, outRgba);
        this.mIsFilterR = outRgba[0];
        this.mIsFilterG = outRgba[1];
        this.mIsFilterB = outRgba[2];
        this.mIsFilterA = outRgba[3];
    }

    /* JADX WARNING: Missing block: B:34:0x006d, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void formatParams() {
        if (!this.mIsParamsFormated) {
            this.mIsParamsFormated = true;
            if (this.mMatrix != null) {
                if (this.mMatrix.length == 9) {
                    this.mMatrixSideLength = 3;
                } else if (this.mMatrix.length == 25) {
                    this.mMatrixSideLength = 5;
                } else {
                    this.mMatrixSideLength = (int) Math.sqrt((double) this.mMatrix.length);
                    if (this.mMatrixSideLength * this.mMatrixSideLength != this.mMatrix.length) {
                        throw new RuntimeException("matrix must be a square matrix.");
                    } else if (this.mMatrixSideLength % 2 != 1) {
                        throw new RuntimeException("matrixX and matrixY must be odd.");
                    }
                }
                if (this.mDivisor == 0) {
                    for (int i : this.mMatrix) {
                        this.mDivisor += i;
                    }
                    if (this.mDivisor == 0) {
                        this.mDivisor = 1;
                    }
                }
            }
        }
    }

    public void processData(ImageData imgData) {
        if (!this.mIsParamsFormated) {
            formatParams();
        }
        if (this.mMatrix != null) {
            int i = 1;
            if (this.mRepeatCount > 1) {
                i = this.mRepeatCount;
            }
            int repeatCount = i;
            for (i = 0; i < repeatCount; i++) {
                processOnce(imgData);
            }
        }
    }

    private void processOnce(ImageData imgData) {
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
        int yCursor;
        int matrixEle;
        int radius;
        int color;
        int[] iArr;
        int i;
        int totalR = 0;
        int totalG = 0;
        int totalB = 0;
        int totalA = 0;
        int radius2 = (this.mMatrixSideLength - 1) / 2;
        int i2 = 0;
        for (yCursor = -radius2; yCursor <= radius2; yCursor++) {
            int xCursor = -radius2;
            while (xCursor <= radius2) {
                matrixEle = this.mMatrix[i2];
                radius = radius2;
                color = getColor(pixels, x + xCursor, y + yCursor, width, height);
                if (this.mIsFilterR) {
                    radius2 = 255;
                    totalR += ((color >>> 16) & 255) * matrixEle;
                } else {
                    radius2 = 255;
                }
                if (this.mIsFilterG) {
                    totalG += ((color >>> 8) & radius2) * matrixEle;
                }
                if (this.mIsFilterB) {
                    totalB += (color & 255) * matrixEle;
                }
                if (this.mIsFilterA) {
                    totalA += ((color >>> 24) & 255) * matrixEle;
                }
                i2++;
                xCursor++;
                radius2 = radius;
            }
            iArr = pixels;
            i = width;
            radius = radius2;
        }
        iArr = pixels;
        i = width;
        radius = radius2;
        radius2 = getColor(pixels, x, y, width, height);
        yCursor = this.mIsFilterR ? ImageFilterUtils.clamp(0, (totalR / this.mDivisor) + this.mBias, 255) : (radius2 >>> 16) & 255;
        matrixEle = this.mIsFilterG ? ImageFilterUtils.clamp(0, (totalG / this.mDivisor) + this.mBias, 255) : (radius2 >>> 8) & 255;
        color = this.mIsFilterB ? ImageFilterUtils.clamp(0, (totalB / this.mDivisor) + this.mBias, 255) : radius2 & 255;
        if (this.mIsFilterA) {
            totalR = ImageFilterUtils.clamp(0, (totalA / this.mDivisor) + this.mBias, 255);
        } else {
            totalR = 255 & (radius2 >>> 24);
        }
        return (((totalR << 24) | (yCursor << 16)) | (matrixEle << 8)) | color;
    }

    private static final int getColor(int[] pixels, int x, int y, int width, int height) {
        return pixels[(ImageFilterUtils.clamp(0, y, height - 1) * width) + ImageFilterUtils.clamp(0, x, width - 1)];
    }
}

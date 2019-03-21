package com.miui.gallery.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.util.face.FaceRegionRectF;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.InputStream;

public class DecodeRegionImageUtils {
    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Missing block: B:15:?, code:
            return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeRegion(RectF posRelativeOfRegion, InputStream is, int preferTargetSize) {
        if (is == null) {
            return null;
        }
        BitmapRegionDecoder decoder = requestCreateBitmapRegionDecoder(is);
        try {
            Bitmap decodeRegion = decodeRegion(posRelativeOfRegion, decoder, preferTargetSize);
            if (!BitmapUtils.isValidate(decoder)) {
                return decodeRegion;
            }
            decoder.recycle();
        } catch (Throwable th) {
            if (BitmapUtils.isValidate(decoder)) {
                decoder.recycle();
            }
        }
    }

    private static Bitmap decodeRegion(RectF posRelative, BitmapRegionDecoder decoder, int preferTargetSize) {
        if (decoder == null) {
            return null;
        }
        int width = decoder.getWidth();
        int height = decoder.getHeight();
        Rect regionPos = new Rect((int) (posRelative.left * ((float) width)), (int) (posRelative.top * ((float) height)), (int) (posRelative.right * ((float) width)), (int) (posRelative.bottom * ((float) height)));
        Options options = new Options();
        if (preferTargetSize > 0 && preferTargetSize < Math.min(regionPos.width(), regionPos.height())) {
            options.inPreferredConfig = Config.RGB_565;
            options.inSampleSize = computeSampleSize(((float) preferTargetSize) / ((float) Math.min(regionPos.width(), regionPos.height())));
        }
        return safeDecodeRegion(decoder, regionPos, options);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Missing block: B:16:?, code:
            return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap decodeFaceRegion(RectF posRelativeOfRegion, String filePath, float faceEnlargeFactor, int preferTargetSize, int exifOrientation, ReusedBitmapCache cache) {
        if (TextUtils.isEmpty(filePath)) {
            return null;
        }
        BitmapRegionDecoder decoder = requestCreateBitmapRegionDecoder(filePath);
        try {
            Bitmap decodeFace = decodeFace(posRelativeOfRegion, decoder, faceEnlargeFactor, preferTargetSize, exifOrientation, cache);
            if (!BitmapUtils.isValidate(decoder)) {
                return decodeFace;
            }
            decoder.recycle();
        } catch (Throwable th) {
            if (BitmapUtils.isValidate(decoder)) {
                decoder.recycle();
            }
        }
    }

    public static Bitmap decodeFaceRegion(RectF posRelativeOfRegion, InputStream is, float faceEnlargeFactor, int preferTargetSize, int exifOrientation) {
        Bitmap bitmap = null;
        if (is != null) {
            BitmapRegionDecoder decoder = requestCreateBitmapRegionDecoder(is);
            try {
                bitmap = decodeFace(posRelativeOfRegion, decoder, faceEnlargeFactor, preferTargetSize, exifOrientation, null);
                if (BitmapUtils.isValidate(decoder)) {
                    decoder.recycle();
                }
            } catch (Throwable th) {
                if (BitmapUtils.isValidate(decoder)) {
                    decoder.recycle();
                }
            }
        }
        return bitmap;
    }

    private static Bitmap decodeFace(RectF posRelative, BitmapRegionDecoder decoder, float faceEnlargeFactor, int preferTargetSize, int exifOrientation, ReusedBitmapCache cache) {
        if (decoder == null) {
            return null;
        }
        int width = decoder.getWidth();
        int height = decoder.getHeight();
        if (posRelative instanceof FaceRegionRectF) {
            int regionOrientation = ((FaceRegionRectF) posRelative).orientation;
            if (!(regionOrientation == -1 || regionOrientation == 1 || regionOrientation == 0 || regionOrientation == exifOrientation)) {
                posRelative = ExifUtil.adjustRectOrientation(1, 1, posRelative, regionOrientation, true);
            }
        }
        Rect facePos = new Rect((int) (posRelative.left * ((float) width)), (int) (posRelative.top * ((float) height)), (int) (posRelative.right * ((float) width)), (int) (posRelative.bottom * ((float) height)));
        Options options = new Options();
        if (preferTargetSize > 0 && preferTargetSize < Math.min(facePos.width(), facePos.height())) {
            options.inPreferredConfig = Config.RGB_565;
            options.outHeight = preferTargetSize;
            options.outWidth = preferTargetSize;
            options.inSampleSize = computeSampleSize(((float) preferTargetSize) / ((float) Math.min(facePos.width(), facePos.height())));
            if (cache != null) {
                options.inBitmap = cache.get(options);
            }
        }
        return safeDecodeRegion(decoder, roundToSquareAndScale(facePos, width, height, faceEnlargeFactor), options);
    }

    private static Bitmap safeDecodeRegion(BitmapRegionDecoder regionDecoder, Rect rect, Options options) {
        Bitmap result = null;
        try {
            return regionDecoder.decodeRegion(rect, options);
        } catch (OutOfMemoryError e) {
            Log.e("DecodeRegionImageUtils", "safeDecodeRegion() failed OOM: ", e);
            return result;
        } catch (Throwable e2) {
            Log.e("DecodeRegionImageUtils", "safeDecodeRegion() failed: ", e2);
            return result;
        }
    }

    public static Rect roundToSquareAndScale(Rect facePos, int imageWidth, int imageHeight, float enlargeFactor) {
        int rawWidth = facePos.right - facePos.left;
        int rawHeight = facePos.bottom - facePos.top;
        int prefSize = Math.min((int) (((float) Math.max(rawWidth, rawHeight)) * enlargeFactor), Math.min(Math.min(facePos.centerX(), facePos.centerY()), Math.min(imageWidth - facePos.centerX(), imageHeight - facePos.centerY())) * 2);
        int widthDelta = (prefSize - rawWidth) / 2;
        int heightDelta = (prefSize - rawHeight) / 2;
        facePos.left -= widthDelta;
        facePos.top -= heightDelta;
        facePos.right += widthDelta;
        facePos.bottom += heightDelta;
        return facePos;
    }

    private static BitmapRegionDecoder requestCreateBitmapRegionDecoder(String filePath) {
        Throwable t;
        Throwable th;
        InputStream is = null;
        try {
            InputStream is2 = new FileInputStream(filePath);
            try {
                BitmapRegionDecoder newInstance = BitmapRegionDecoder.newInstance(is2, false);
                closeSilently(is2);
                is = is2;
                return newInstance;
            } catch (Throwable th2) {
                th = th2;
                is = is2;
                closeSilently(is);
                throw th;
            }
        } catch (Throwable th3) {
            t = th3;
            Log.w("DecodeRegionImageUtils", t);
            closeSilently(is);
            return null;
        }
    }

    private static BitmapRegionDecoder requestCreateBitmapRegionDecoder(InputStream is) {
        try {
            return BitmapRegionDecoder.newInstance(is, false);
        } catch (Throwable t) {
            Log.w("DecodeRegionImageUtils", t);
            return null;
        }
    }

    private static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (Throwable t) {
                Log.w("DecodeRegionImageUtils", "close fail", t);
            }
        }
    }

    private static int computeSampleSize(float scale) {
        int initialSize = Math.max(1, (int) Math.ceil((double) (1.0f / scale)));
        return initialSize <= 8 ? nextPowerOf2(initialSize) : ((initialSize + 7) / 8) * 8;
    }

    private static int nextPowerOf2(int n) {
        if (n <= 0 || n > 1073741824) {
            throw new IllegalArgumentException();
        }
        n--;
        n |= n >> 16;
        n |= n >> 8;
        n |= n >> 4;
        n |= n >> 2;
        return (n | (n >> 1)) + 1;
    }
}

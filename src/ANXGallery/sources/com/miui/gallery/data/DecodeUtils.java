package com.miui.gallery.data;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.opengl.GLUtils;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.BitmapUtils;
import com.miui.gallery.util.BitmapUtils.BitmapDimension;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.ExifUtil.ExifInfo;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.util.Utils;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class DecodeUtils {
    private static final GifCvtJpegCache GIF_CVT_JPEG_CACHE = new GifCvtJpegCache(GalleryUtils.getInternalCacheDir(), 5);
    public static final Object LOCK = new Object();

    public static class GalleryOptions extends Options {
        public Uri uri;

        public ParcelFileDescriptor getFD() {
            try {
                return GalleryApp.sGetAndroidContext().getContentResolver().openFileDescriptor(this.uri, "r");
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static Bitmap considerOrientation(Bitmap bitmap, ExifInfo exifInfo) {
        if (bitmap == null || bitmap.isRecycled() || exifInfo == null) {
            return bitmap;
        }
        boolean shouldMatrix = false;
        Matrix m = new Matrix();
        if (exifInfo.flip) {
            m.postScale(-1.0f, 1.0f);
            shouldMatrix = true;
        }
        if (exifInfo.rotation != 0) {
            m.postRotate((float) exifInfo.rotation);
            shouldMatrix = true;
        }
        if (!shouldMatrix) {
            return bitmap;
        }
        Bitmap finalBitmap = BitmapUtils.safeCreateBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), m, true, bitmap.getConfig());
        if (finalBitmap != bitmap) {
            bitmap.recycle();
        }
        return finalBitmap;
    }

    public static Bitmap requestDecodeThumbNail(String filePath, GalleryOptions options) {
        return requestDecodeThumbNail(filePath, options, null);
    }

    public static Bitmap requestDecodeThumbNail(String filePath, GalleryOptions options, BitmapDimension sourceFileDimension) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        Closeable fis = null;
        Bitmap result = null;
        try {
            Closeable fis2 = new FileInputStream(filePath);
            try {
                result = requestDecodeThumbNail(fis2.getFD(), options, sourceFileDimension, filePath);
                Utils.closeSilently(fis2);
                fis = fis2;
            } catch (FileNotFoundException e3) {
                e = e3;
                fis = fis2;
                try {
                    e.printStackTrace();
                    Utils.closeSilently(fis);
                    return result;
                } catch (Throwable th2) {
                    th = th2;
                    Utils.closeSilently(fis);
                    throw th;
                }
            } catch (IOException e4) {
                e2 = e4;
                fis = fis2;
                e2.printStackTrace();
                Utils.closeSilently(fis);
                return result;
            } catch (Throwable th3) {
                th = th3;
                fis = fis2;
                Utils.closeSilently(fis);
                throw th;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            e.printStackTrace();
            Utils.closeSilently(fis);
            return result;
        } catch (IOException e6) {
            e2 = e6;
            e2.printStackTrace();
            Utils.closeSilently(fis);
            return result;
        }
        return result;
    }

    public static Bitmap requestDecodeThumbNail(FileDescriptor fd, GalleryOptions options, BitmapDimension sourceFileDimension, String filePath) {
        if (options == null) {
            options = new GalleryOptions();
        }
        options.inJustDecodeBounds = true;
        GalleryUtils.safeDecodeFileDescriptor(fd, null, options);
        int bitmapWidth = options.outWidth;
        int bitmapHeight = options.outHeight;
        if (sourceFileDimension != null) {
            sourceFileDimension.width = bitmapWidth;
            sourceFileDimension.height = bitmapHeight;
        }
        DisplayMetrics dm = GalleryApp.sGetAndroidContext().getResources().getDisplayMetrics();
        int windowWidth = dm.widthPixels;
        int windowHeigh = dm.heightPixels;
        options.inSampleSize = BitmapUtils.computeThumbNailSampleSize(bitmapWidth, bitmapHeight, windowWidth, windowHeigh);
        options.inJustDecodeBounds = false;
        options.inPurgeable = false;
        options.inInputShareable = false;
        if (!ScreenUtils.needOptimizeForLowMemory()) {
            return tryDecodeAndFit(options, windowWidth, windowHeigh, filePath);
        }
        Bitmap tryDecodeAndFit;
        synchronized (LOCK) {
            tryDecodeAndFit = tryDecodeAndFit(options, windowWidth, windowHeigh, filePath);
        }
        return tryDecodeAndFit;
    }

    private static Bitmap tryDecodeAndFit(GalleryOptions options, int windowWidth, int windowHeight, String filePath) {
        OutOfMemoryError error;
        Throwable th;
        Throwable ex;
        Bitmap result = null;
        FileInputStream is = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int tryCount = 0;
        while (true) {
            FileInputStream is2 = is;
            if (tryCount < 3 && result == null) {
                FileDescriptor fileDescriptor = null;
                if (filePath != null) {
                    try {
                        is = new FileInputStream(filePath);
                    } catch (OutOfMemoryError e) {
                        error = e;
                        is = is2;
                        try {
                            Log.e("DecodeService", "Decode and fit is out of memory: " + error.toString());
                            options.inSampleSize *= 2;
                            GalleryUtils.closeStream(is);
                            Utils.closeSilently(parcelFileDescriptor);
                            tryCount++;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        is = is2;
                    }
                    try {
                        fileDescriptor = is.getFD();
                    } catch (OutOfMemoryError e2) {
                        error = e2;
                    } catch (Throwable th4) {
                        ex = th4;
                        Log.e("DecodeService", "unkown exception in decode and fit:" + ex.toString());
                        options.inSampleSize *= 2;
                        GalleryUtils.closeStream(is);
                        Utils.closeSilently(parcelFileDescriptor);
                        tryCount++;
                    }
                } else {
                    parcelFileDescriptor = options.getFD();
                    if (parcelFileDescriptor != null) {
                        fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                        is = is2;
                    } else {
                        is = is2;
                    }
                }
                result = GalleryUtils.safeDecodeFileDescriptor(fileDescriptor, null, options);
                if (result == null) {
                    options.inSampleSize *= 2;
                    GalleryUtils.closeStream(is);
                    Utils.closeSilently(parcelFileDescriptor);
                } else {
                    try {
                        GLUtils.getType(result);
                    } catch (IllegalArgumentException e3) {
                        e3.printStackTrace();
                        Log.w("DecodeService", "decoded bitmap type error, IllegalArgumentException:" + e3.getMessage());
                        result = ensureGLCompatibleBitmap(result);
                        if (result == null) {
                            options.inSampleSize *= 2;
                            GalleryUtils.closeStream(is);
                            Utils.closeSilently(parcelFileDescriptor);
                        }
                    }
                    if (!BitmapUtils.isBitmapInScreen(result.getWidth(), result.getHeight(), windowWidth, windowHeight)) {
                        result = BitmapUtils.fitBitmapToScreen(result, windowWidth, windowHeight, true);
                    }
                    options.inSampleSize *= 2;
                    GalleryUtils.closeStream(is);
                    Utils.closeSilently(parcelFileDescriptor);
                }
                tryCount++;
            }
        }
        return considerOrientation(result, ExifUtil.parseRotationInfo(filePath, null));
        options.inSampleSize *= 2;
        GalleryUtils.closeStream(is);
        Utils.closeSilently(parcelFileDescriptor);
        throw th;
    }

    public static Bitmap ensureGLCompatibleBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.getConfig() != null) {
            return bitmap;
        }
        Bitmap newBitmap = bitmap.copy(Config.ARGB_8888, false);
        bitmap.recycle();
        return newBitmap;
    }
}

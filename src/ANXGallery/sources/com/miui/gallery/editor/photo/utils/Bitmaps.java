package com.miui.gallery.editor.photo.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Build;
import android.support.media.ExifInterface;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.ExifUtil;
import com.miui.gallery.util.Log;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.HashMap;

public final class Bitmaps {
    public static Bitmap decodeUri(Context context, Uri uri, Options opt) throws FileNotFoundException {
        InputStream in = null;
        try {
            in = IoUtils.openInputStream(context, uri);
            Bitmap decodeStream = BitmapFactory.decodeStream(in, null, opt);
            return decodeStream;
        } finally {
            IoUtils.close(in);
        }
    }

    public static Bitmap decodeStream(InputStream in, Options opt) {
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(in, null, opt);
            return decodeStream;
        } finally {
            IoUtils.close(in);
        }
    }

    public static ExifInterface readExif(Context context, Uri uri) {
        InputStream in = IoUtils.openInputStream("Graphics", context, uri);
        if (in == null) {
            return null;
        }
        try {
            ExifInterface exifInterface = (ExifInterface) ExifUtil.sSupportExifCreator.create(in);
            return exifInterface;
        } finally {
            IoUtils.close("Graphics", in);
        }
    }

    public static Bitmap setConfig(Bitmap src) {
        Bitmap bmp = src;
        if (src == null || src.getConfig() != null) {
            return bmp;
        }
        bmp = src.copy(Config.ARGB_8888, true);
        src.recycle();
        return bmp;
    }

    public static Bitmap joinExif(Bitmap src, int rotationDegree, Options opt) {
        if (rotationDegree == 0) {
            return src;
        }
        Bitmap bmp;
        if (src != null) {
            Matrix matrix = new Matrix();
            matrix.preRotate((float) rotationDegree);
            bmp = Bitmap.createBitmap(src, 0, 0, src.getWidth(), src.getHeight(), matrix, true);
            src.recycle();
        } else {
            bmp = null;
        }
        if (opt == null || rotationDegree % nexClip.kClip_Rotate_180 == 0) {
            return bmp;
        }
        int width = opt.outWidth;
        opt.outWidth = opt.outHeight;
        opt.outHeight = width;
        return bmp;
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static Bitmap copyBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap copyBitmap = null;
        try {
            copyBitmap = bitmap.copy(Config.ARGB_8888, true);
            if (bitmap == null) {
                return copyBitmap;
            }
            bitmap.recycle();
            return copyBitmap;
        } catch (OutOfMemoryError error) {
            Log.e("Graphics", "ensureBitmapSize error:" + error.toString());
            HashMap<String, String> params = new HashMap();
            params.put("type", "copy");
            params.put("model", Build.MODEL);
            BaseSamplingStatHelper.recordCountEvent("photo_editor", "memory_error", params);
            if (bitmap == null) {
                return copyBitmap;
            }
            bitmap.recycle();
            return copyBitmap;
        } catch (Throwable th) {
            if (bitmap != null) {
                bitmap.recycle();
            }
            throw th;
        }
    }

    public static Bitmap copyBitmapInCaseOfRecycle(Bitmap bitmap) {
        try {
            return bitmap.copy(Config.ARGB_8888, true);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

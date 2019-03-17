package com.taobao.ma.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.util.Log;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.fastjson.asm.Opcodes;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class ImageTool {
    public static boolean rotateBitmapAtPath(String srcImagePath, int angle, CompressFormat compressFormat) {
        FileNotFoundException e;
        boolean z = false;
        Bitmap newBitmap = rotateBitmap(srcImagePath, angle);
        if (newBitmap == null) {
            return z;
        }
        try {
            FileOutputStream stream = new FileOutputStream(srcImagePath);
            try {
                return newBitmap.compress(compressFormat, 100, stream);
            } catch (FileNotFoundException e2) {
                e = e2;
                FileOutputStream fileOutputStream = stream;
            }
        } catch (FileNotFoundException e3) {
            e = e3;
            e.printStackTrace();
            return z;
        }
    }

    public static Bitmap rotateBitmap(String srcImagePath, int angle) {
        return rotateBitmap(BitmapFactory.decodeFile(srcImagePath), angle);
    }

    public static Bitmap rotateBitmap(Bitmap bitmap, int angle) {
        if (bitmap == null) {
            return null;
        }
        Matrix m = new Matrix();
        m.setRotate((float) angle);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), m, true);
    }

    public static Bitmap toGrayscale(Bitmap bmpOriginal) {
        Bitmap bmpGrayscale = Bitmap.createBitmap(bmpOriginal.getWidth(), bmpOriginal.getHeight(), Config.RGB_565);
        Canvas c = new Canvas(bmpGrayscale);
        Paint paint = new Paint();
        ColorMatrix cm = new ColorMatrix();
        cm.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(cm));
        c.drawBitmap(bmpOriginal, 0.0f, 0.0f, paint);
        return bmpGrayscale;
    }

    public static Bitmap toRoundCorner(Context context, Bitmap input, int pixels, int w, int h, boolean squareTL, boolean squareTR, boolean squareBL, boolean squareBR) {
        Bitmap output = Bitmap.createBitmap(w, h, Config.ARGB_8888);
        Canvas canvas = new Canvas(output);
        float densityMultiplier = context.getResources().getDisplayMetrics().density;
        Paint paint = new Paint();
        RectF rectF = new RectF(new Rect(0, 0, w, h));
        float roundPx = ((float) pixels) * densityMultiplier;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, roundPx, roundPx, paint);
        if (squareTL) {
            canvas.drawRect(0.0f, 0.0f, (float) (w / 2), (float) (h / 2), paint);
        }
        if (squareTR) {
            canvas.drawRect((float) (w / 2), 0.0f, (float) w, (float) (h / 2), paint);
        }
        if (squareBL) {
            canvas.drawRect(0.0f, (float) (h / 2), (float) (w / 2), (float) h, paint);
        }
        if (squareBR) {
            canvas.drawRect((float) (w / 2), (float) (h / 2), (float) w, (float) h, paint);
        }
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(input, 0.0f, 0.0f, paint);
        return output;
    }

    public static Bitmap createThumbnail(File srcImageFile, int width, int height) {
        return createThumbnail(srcImageFile, width, height, false);
    }

    public static Bitmap createThumbnail(File srcImageFile, int width, int height, boolean adjustOritation) {
        if (srcImageFile == null || !srcImageFile.exists()) {
            return null;
        }
        Bitmap resultBitmap = null;
        Options opts = null;
        if (width > 0 && height > 0) {
            opts = new Options();
            opts.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(srcImageFile.getPath(), opts);
            opts.inSampleSize = computeSampleSize(opts, Math.min(width, height), width * height);
            opts.inJustDecodeBounds = false;
            opts.inInputShareable = true;
            opts.inPurgeable = true;
        }
        try {
            resultBitmap = BitmapFactory.decodeFile(srcImageFile.getPath(), opts);
        } catch (OutOfMemoryError e) {
            Log.d("TAG", AppLinkConstants.E + e.getLocalizedMessage());
        }
        if (resultBitmap == null || !adjustOritation) {
            return resultBitmap;
        }
        int digree = getDigreeForPicturePath(srcImageFile.getAbsolutePath());
        if (digree == 0) {
            return resultBitmap;
        }
        Matrix m = new Matrix();
        m.postRotate((float) digree);
        try {
            return Bitmap.createBitmap(resultBitmap, 0, 0, resultBitmap.getWidth(), resultBitmap.getHeight(), m, true);
        } catch (OutOfMemoryError e2) {
            return resultBitmap;
        }
    }

    private static int getDigreeForPicturePath(String imgpath) {
        ExifInterface exif;
        try {
            exif = new ExifInterface(imgpath);
        } catch (IOException e) {
            e.printStackTrace();
            exif = null;
        }
        if (exif == null) {
            return 0;
        }
        switch (exif.getAttributeInt("Orientation", 0)) {
            case 3:
                return Opcodes.GETFIELD;
            case 6:
                return 90;
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    public static int computeSampleSize(Options options, int minSideLength, int maxNumOfPixels) {
        int initialSize = computeInitialSampleSize(options, minSideLength, maxNumOfPixels);
        if (initialSize > 8) {
            return ((initialSize + 7) / 8) * 8;
        }
        int roundedSize = 1;
        while (roundedSize < initialSize) {
            roundedSize <<= 1;
        }
        return roundedSize;
    }

    private static int computeInitialSampleSize(Options options, int minSideLength, int maxNumOfPixels) {
        double w = (double) options.outWidth;
        double h = (double) options.outHeight;
        int lowerBound = maxNumOfPixels == -1 ? 1 : (int) Math.ceil(Math.sqrt((w * h) / ((double) maxNumOfPixels)));
        int upperBound = minSideLength == -1 ? 128 : (int) Math.min(Math.floor(w / ((double) minSideLength)), Math.floor(h / ((double) minSideLength)));
        if (upperBound < lowerBound) {
            return lowerBound;
        }
        if (maxNumOfPixels == -1 && minSideLength == -1) {
            return 1;
        }
        if (minSideLength != -1) {
            return upperBound;
        }
        return lowerBound;
    }
}

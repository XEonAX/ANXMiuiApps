package com.xiaomi.scanner.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.TextUtils;
import com.alibaba.fastjson.asm.Opcodes;
import com.xiaomi.scanner.app.ScannerApp;
import com.xiaomi.scanner.camera.Exif;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import java.io.File;

public class PictureDecoder {
    public static final int MAX_PICTURE_SIZE = 2048;
    private static final Tag TAG = new Tag("PictureDecoder");

    public static Bitmap decode(Context context, byte[] data, int downSampleFactor, int pictureOrientation, boolean needMirror) {
        return decode(context, data, downSampleFactor, pictureOrientation, needMirror, 2048, 2048);
    }

    public static Bitmap decodeWithMaxHeight(Bitmap pictureBitmap, int maxHeight) {
        Bitmap result = null;
        try {
            return Bitmap.createBitmap(pictureBitmap, 0, 0, pictureBitmap.getWidth(), Math.min(pictureBitmap.getHeight(), maxHeight));
        } catch (Throwable oom) {
            Log.e(TAG, "decode oom", oom);
            return result;
        }
    }

    private static Bitmap decode(Context context, byte[] data, int downSampleFactor, int pictureOrientation, boolean needMirror, int maxWidth, int maxHeight) {
        Options opts = new Options();
        opts.inSampleSize = downSampleFactor;
        Bitmap pictureBitmap = null;
        long startTime = System.currentTimeMillis();
        try {
            if (AppUtil.isInLowMemoryState(context)) {
                Point size = CameraUtil.getDefaultDisplaySize();
                if (maxWidth > size.x) {
                    maxWidth = size.x;
                }
                if (maxHeight > size.y) {
                    maxHeight = size.y;
                }
                opts.inJustDecodeBounds = true;
                BitmapFactory.decodeByteArray(data, 0, data.length, opts);
                opts.inSampleSize = calculateInSampleSize(opts, maxWidth, maxHeight);
                opts.inJustDecodeBounds = false;
            }
            pictureBitmap = BitmapFactory.decodeByteArray(data, 0, data.length, opts);
        } catch (OutOfMemoryError oom) {
            Log.e(TAG, "decode oom", oom);
        }
        if (pictureOrientation != 0 || needMirror) {
            Matrix m = new Matrix();
            if (pictureOrientation != 0) {
                m.setRotate((float) pictureOrientation, (float) (pictureBitmap.getWidth() / 2), (float) (pictureBitmap.getHeight() / 2));
            }
            if (needMirror) {
                m.setScale(-1.0f, 1.0f);
            }
            Bitmap bm = Bitmap.createBitmap(pictureBitmap, 0, 0, pictureBitmap.getWidth(), pictureBitmap.getHeight(), m, false);
            Log.i(TAG, "decodeByte time=" + (System.currentTimeMillis() - startTime));
            return bm;
        }
        Log.i(TAG, "decodeByte time=" + (System.currentTimeMillis() - startTime));
        return pictureBitmap;
    }

    public static Bitmap decodeSafely(String path, int maxWidth, int maxHeight) {
        try {
            return decode(path, maxWidth, maxHeight, 0, false);
        } catch (OutOfMemoryError error) {
            try {
                Log.w(TAG, error.getMessage());
                if (maxHeight == -1 || maxWidth == -1) {
                    Point size = CameraUtil.getDefaultDisplaySize();
                    if (maxWidth == -1) {
                        maxWidth = size.x;
                    }
                    if (maxHeight == -1) {
                        maxHeight = size.y;
                    }
                }
                Log.d(TAG, "path:" + path + " size:" + maxWidth + "x" + maxHeight);
                return decode(path, maxWidth / 2, maxHeight / 2, 0, false);
            } catch (OutOfMemoryError e) {
                Log.e(TAG, e.getMessage(), e);
                return null;
            }
        } catch (Exception e2) {
            Log.e(TAG, e2.getMessage(), e2);
            return null;
        }
    }

    public static Bitmap decodeSafely(String path, int maxWidth, int maxHeight, int pictureOrientation, boolean needMirror) {
        try {
            return decode(path, maxWidth, maxHeight, pictureOrientation, needMirror);
        } catch (OutOfMemoryError error) {
            try {
                Log.w(TAG, error.getMessage());
                if (maxHeight == -1 || maxWidth == -1) {
                    Point size = CameraUtil.getDefaultDisplaySize();
                    if (maxWidth == -1) {
                        maxWidth = size.x;
                    }
                    if (maxHeight == -1) {
                        maxHeight = size.y;
                    }
                }
                Log.d(TAG, "path:" + path + " size:" + maxWidth + "x" + maxHeight);
                return decode(path, maxWidth / 2, maxHeight / 2, pictureOrientation, needMirror);
            } catch (OutOfMemoryError e) {
                Log.e(TAG, e.getMessage(), e);
                return null;
            }
        } catch (Exception e2) {
            Log.e(TAG, e2.getMessage(), e2);
            return null;
        }
    }

    public static Bitmap decode(String path, int maxWidth, int maxHeight, int pictureOrientation, boolean needMirror) {
        if (TextUtils.isEmpty(path)) {
            Log.d(TAG, "decode: null path");
            return null;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, options);
        options.inJustDecodeBounds = false;
        int widthSample = maxWidth == -1 ? 1 : (int) Math.ceil((double) (((float) options.outWidth) / ((float) maxWidth)));
        int heightSample = maxHeight == -1 ? 1 : (int) Math.ceil((double) (((float) options.outHeight) / ((float) maxHeight)));
        if (heightSample >= 1 && widthSample >= 1) {
            if (heightSample <= widthSample) {
                heightSample = widthSample;
            }
            options.inSampleSize = heightSample;
            Log.t(TAG, "decode: [" + options.outWidth + "," + options.outHeight + "]->[" + maxWidth + ", " + maxHeight + "] sample=" + options.inSampleSize);
        }
        return processBitmap(BitmapFactory.decodeFile(path, options), pictureOrientation, needMirror);
    }

    public static Bitmap decodeSafely(String path) {
        return decodeSafely(path, 2048, 2048);
    }

    public static Bitmap decodeSafely(String path, int pictureOrientation, boolean needMirror) {
        return decodeSafely(path, 2048, 2048, pictureOrientation, needMirror);
    }

    public static Bitmap decodeSafelyWithSameScale(String path, int pictureOrientation, int maxHeight) {
        if (TextUtils.isEmpty(path)) {
            Log.d(TAG, "decode: null path");
            return null;
        }
        int maxWidth = Util.screenWidth;
        try {
            Options options = new Options();
            options.inPreferredConfig = Config.RGB_565;
            Bitmap bitmap = BitmapFactory.decodeFile(path, options);
            Matrix m = new Matrix();
            float scale = (((float) maxWidth) * 1.0f) / ((float) bitmap.getHeight());
            if ((bitmap.getWidth() > bitmap.getHeight() && pictureOrientation == 0) || pictureOrientation == Opcodes.GETFIELD) {
                pictureOrientation += 90;
            }
            if (pictureOrientation != 0) {
                m.setRotate((float) pictureOrientation, (float) (bitmap.getWidth() / 2), (float) (bitmap.getHeight() / 2));
            } else if (bitmap.getHeight() > bitmap.getWidth()) {
                scale = (((float) maxWidth) * 1.0f) / ((float) bitmap.getWidth());
                pictureOrientation = 90;
            }
            m.postScale(scale, scale);
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), m, false);
            if (pictureOrientation == 0) {
                return Bitmap.createBitmap(bitmap, 0, 0, Math.min(bitmap.getWidth(), maxHeight), bitmap.getHeight());
            }
            if (pictureOrientation == Opcodes.GETFIELD) {
                return Bitmap.createBitmap(bitmap, Math.max(0, bitmap.getWidth() - maxHeight), 0, Math.min(maxHeight, bitmap.getWidth()), bitmap.getHeight());
            }
            if (pictureOrientation == 270) {
                return Bitmap.createBitmap(bitmap, 0, Math.max(bitmap.getHeight() - maxHeight, 0), bitmap.getWidth(), Math.min(maxHeight, bitmap.getHeight()));
            }
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), Math.min(bitmap.getHeight(), maxHeight));
        } catch (Throwable e) {
            Log.e(TAG, "decodeSafelyWithSameScale error " + e);
            return null;
        }
    }

    private static Bitmap processBitmap(Bitmap bitmap, int orientation, boolean needMirror) {
        if (bitmap == null) {
            return bitmap;
        }
        if (orientation == 0 && !needMirror) {
            return bitmap;
        }
        long startTime = System.currentTimeMillis();
        Matrix m = new Matrix();
        if (orientation != 0) {
            m.setRotate((float) orientation, (float) (bitmap.getWidth() / 2), (float) (bitmap.getHeight() / 2));
        }
        if (needMirror) {
            m.setScale(-1.0f, 1.0f);
        }
        Bitmap bm = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), m, false);
        Log.t(TAG, "cost:" + (System.currentTimeMillis() - startTime));
        return bm;
    }

    public static Bitmap rotateBitmap(Bitmap bitmap, int orientation) {
        if (orientation == 0) {
            return bitmap;
        }
        Matrix m = new Matrix();
        m.setRotate((float) orientation, (float) (bitmap.getWidth() / 2), (float) (bitmap.getHeight() / 2));
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), m, false);
    }

    public static String rectifyBitmap(String filePath, boolean needMirror, String savePath) {
        if (TextUtils.isEmpty(filePath)) {
            Log.e(TAG, "rectifyBitmap error null path");
            return null;
        }
        long startTime = System.currentTimeMillis();
        boolean success = Util.saveBitmap(decodeSafely(filePath, Exif.getOrientation(filePath), needMirror), savePath, true);
        Log.t(TAG, "rectifyBitmap success=" + success + ", savePath=" + savePath + " ,cost:" + (System.currentTimeMillis() - startTime));
        if (!success) {
            savePath = null;
        }
        return savePath;
    }

    private static int calculateInSampleSize(Options options, int reqWidth, int reqHeight) {
        int height = options.outHeight;
        int width = options.outWidth;
        int inSampleSize = 1;
        if (height > reqHeight || width > reqWidth) {
            if (width > height) {
                inSampleSize = Math.round(((float) height) / ((float) reqHeight));
            } else {
                inSampleSize = Math.round(((float) width) / ((float) reqWidth));
            }
            while (((float) (width * height)) / ((float) (inSampleSize * inSampleSize)) > ((float) ((reqWidth * reqHeight) * 2))) {
                inSampleSize++;
            }
        }
        Log.i(TAG, "calculateInSampleSize reqWidth=" + reqWidth + ", reqHeight=" + reqHeight + ", options.outHeight=" + height + ", options.outWidth=" + width + ", inSampleSize=" + inSampleSize);
        return inSampleSize;
    }

    public static String saveJpeg(String rootPath, byte[] data, boolean checkOrientation, String fileName) {
        if (data == null) {
            Log.w(TAG, "savejpeg fail, data null");
            return null;
        }
        String jpegPath = rootPath + File.separator + fileName + Util.JPEG_POSTFIX;
        long start = System.currentTimeMillis();
        if (checkOrientation) {
            Bitmap bitmap = null;
            try {
                bitmap = decode(ScannerApp.getAndroidContext(), data, 1, Exif.getOrientation(data), false);
                if (Util.saveBitmap(bitmap, jpegPath, true)) {
                    Log.t(TAG, "saveJpeg: " + jpegPath + " cost:" + (System.currentTimeMillis() - start));
                    if (bitmap == null) {
                        return jpegPath;
                    }
                    bitmap.recycle();
                    return jpegPath;
                } else if (bitmap != null) {
                    bitmap.recycle();
                }
            } catch (Exception e) {
                Log.e(TAG, "save jpeg error", e);
                if (bitmap != null) {
                    bitmap.recycle();
                }
            } catch (Throwable th) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
        } else if (Util.writeFile(jpegPath, data) > 0) {
            Log.t(TAG, "saveJpeg: " + jpegPath + " cost:" + (System.currentTimeMillis() - start));
            return jpegPath;
        }
        Log.w(TAG, "savejpeg fail, jpegPath=" + jpegPath);
        return null;
    }

    public static Bitmap scale(Bitmap source, int desWidth, int desHeight) {
        if (source.getWidth() <= desWidth || desWidth <= 0 || desHeight <= 0) {
            return source;
        }
        if (source.getHeight() < source.getWidth()) {
            int flag = desWidth;
            desWidth = desHeight;
            desHeight = flag;
        }
        float scaleX = (((float) desWidth) * 1.0f) / ((float) source.getWidth());
        float scaleY = (((float) desHeight) * 1.0f) / ((float) source.getHeight());
        Matrix matrix = new Matrix();
        matrix.setScale(scaleX, scaleY);
        try {
            return Bitmap.createBitmap(source, 0, 0, source.getWidth(), source.getHeight(), matrix, false);
        } catch (Throwable e) {
            Log.e(TAG, "scale bitmap error = " + e);
            return source;
        }
    }

    public static Bitmap cropBitmap(Bitmap previewBitmap, Rect wordRect) {
        Bitmap bitmap = null;
        if (!new Rect(0, 0, previewBitmap.getWidth(), previewBitmap.getHeight()).contains(wordRect)) {
            return bitmap;
        }
        try {
            return Bitmap.createBitmap(previewBitmap, wordRect.left, wordRect.top, wordRect.width(), wordRect.height());
        } catch (Throwable e) {
            Log.e(TAG, "cropBitmap error " + e);
            return bitmap;
        }
    }
}

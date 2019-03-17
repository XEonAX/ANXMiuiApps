package com.xiaomi.scanner.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.ali.auth.third.core.model.Constants;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.debug.LogHelper;
import com.xiaomi.scanner.module.code.utils.Utils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.concurrent.TimeUnit;
import mtopsdk.common.util.SymbolExpUtil;

public class Util {
    public static final String AMAZON_ASSISTANT_PACKAGE = "com.amazon.aa";
    public static final String JPEG_POSTFIX = ".jpg";
    public static final String MIME_TYPE_JPEG = "image/jpeg";
    private static final Tag TAG = new Tag("Util");
    public static boolean hasNativageBar = false;
    public static boolean isNotchPhone = false;
    private static float sPixelDensity = 1.0f;
    public static int screenHeight = 0;
    public static int screenWidth = 0;

    public static void initialize(Context context) {
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metrics);
        sPixelDensity = metrics.density;
        Point p = new Point();
        wm.getDefaultDisplay().getRealSize(p);
        screenHeight = p.y;
        screenWidth = p.x;
        Point point = new Point();
        wm.getDefaultDisplay().getSize(point);
        hasNativageBar = p.y != point.y;
        isNotchPhone = Utils.isNotchPhone();
    }

    public static int dpToPixel(float dp) {
        return Math.round(sPixelDensity * dp);
    }

    public static Bitmap safeCreateBitmap(int width, int height, Config config) {
        Bitmap result = null;
        try {
            return Bitmap.createBitmap(width, height, config);
        } catch (OutOfMemoryError e) {
            Log.e(TAG, "safeCreateBitmap() failed OOM: ", e);
            return result;
        } catch (Exception e2) {
            Log.e(TAG, "safeCreateBitmap() failed: ", e2);
            return result;
        }
    }

    public static Bitmap convertYUVToBitmap(byte[] data, int format, int width, int height, boolean rotated) {
        Exception ex;
        if (data == null) {
            return null;
        }
        Bitmap bitmap;
        try {
            long time = System.currentTimeMillis();
            YuvImage image = new YuvImage(data, format, width, height, null);
            ByteArrayOutputStream stream = new ByteArrayOutputStream();
            image.compressToJpeg(new Rect(0, 0, width, height), 100, stream);
            bitmap = BitmapFactory.decodeByteArray(stream.toByteArray(), 0, stream.size());
            try {
                stream.close();
                if (rotated) {
                    Matrix matrix = new Matrix();
                    matrix.reset();
                    matrix.postRotate(90.0f);
                    Bitmap rotateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
                    bitmap.recycle();
                    bitmap = rotateBitmap;
                }
                Log.t(TAG, "util convertYUVToBitmap cost=" + (System.currentTimeMillis() - time));
                return bitmap;
            } catch (Exception e) {
                ex = e;
                Log.e(TAG, "convertYUVToBitmap Error:" + ex.getMessage());
                return bitmap;
            }
        } catch (Exception e2) {
            ex = e2;
            bitmap = null;
        }
    }

    private static boolean createDirectoryIfNeeded(String filePath) {
        File parentFile = new File(filePath).getParentFile();
        if (parentFile.exists()) {
            return parentFile.isDirectory();
        }
        return parentFile.mkdirs();
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0045 A:{SYNTHETIC, Splitter: B:19:0x0045} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0055 A:{SYNTHETIC, Splitter: B:25:0x0055} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long writeFile(String path, byte[] data) {
        Exception e;
        Throwable th;
        long j = -1;
        if (createDirectoryIfNeeded(path)) {
            FileOutputStream out = null;
            try {
                FileOutputStream out2 = new FileOutputStream(path);
                try {
                    out2.write(data);
                    j = (long) data.length;
                    if (out2 != null) {
                        try {
                            out2.close();
                        } catch (Exception e2) {
                            Log.e(TAG, "Failed to close file after write", e2);
                        }
                    }
                } catch (Exception e3) {
                    e2 = e3;
                    out = out2;
                    try {
                        Log.e(TAG, "Failed to write data", e2);
                        if (out != null) {
                        }
                        return j;
                    } catch (Throwable th2) {
                        th = th2;
                        if (out != null) {
                            try {
                                out.close();
                            } catch (Exception e22) {
                                Log.e(TAG, "Failed to close file after write", e22);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    out = out2;
                    if (out != null) {
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e22 = e4;
                Log.e(TAG, "Failed to write data", e22);
                if (out != null) {
                    try {
                        out.close();
                    } catch (Exception e222) {
                        Log.e(TAG, "Failed to close file after write", e222);
                    }
                }
                return j;
            }
        }
        Log.e(TAG, "Failed to create parent directory for file: " + path);
        return j;
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x011b A:{SYNTHETIC, Splitter: B:50:0x011b} */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0120 A:{SYNTHETIC, Splitter: B:53:0x0120} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x014a A:{SYNTHETIC, Splitter: B:65:0x014a} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x014f A:{SYNTHETIC, Splitter: B:68:0x014f} */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x014a A:{SYNTHETIC, Splitter: B:65:0x014a} */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x014f A:{SYNTHETIC, Splitter: B:68:0x014f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean saveBitmap(Bitmap bitmap, String path, boolean recycleBitmap) {
        Exception e;
        Throwable th;
        boolean result = false;
        if (bitmap == null) {
            Log.e(TAG, "saveBitmap: bitmap=null, path=" + path);
        } else if (path == null || !createDirectoryIfNeeded(path)) {
            Log.e(TAG, "saveBitmap: failed to create parent directory for file: " + path);
            if (recycleBitmap && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
        } else {
            result = true;
            FileOutputStream outputStream = null;
            FileOutputStream outputStreamDebug = null;
            try {
                FileOutputStream outputStream2 = new FileOutputStream(path);
                try {
                    bitmap.compress(CompressFormat.JPEG, 100, outputStream2);
                    outputStream2.flush();
                    if (LogHelper.instance().isDebugMode()) {
                        int index = path.lastIndexOf(SymbolExpUtil.SYMBOL_DOT);
                        if (index <= -1) {
                            index = path.length();
                        }
                        String debugPath = path.substring(0, index) + "_debug_" + System.currentTimeMillis() + JPEG_POSTFIX;
                        FileOutputStream outputStreamDebug2 = new FileOutputStream(debugPath);
                        try {
                            bitmap.compress(CompressFormat.JPEG, 100, outputStreamDebug2);
                            Log.t(TAG, "saveBitmap: backup path=" + debugPath);
                            outputStreamDebug2.flush();
                            outputStreamDebug = outputStreamDebug2;
                        } catch (Exception e2) {
                            e = e2;
                            outputStreamDebug = outputStreamDebug2;
                            outputStream = outputStream2;
                            try {
                                Log.e(TAG, "saveBitmap: exception " + e.getMessage());
                                result = false;
                                bitmap.recycle();
                                if (outputStream != null) {
                                }
                                if (outputStreamDebug != null) {
                                }
                                return result;
                            } catch (Throwable th2) {
                                th = th2;
                                bitmap.recycle();
                                if (outputStream != null) {
                                }
                                if (outputStreamDebug != null) {
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            outputStreamDebug = outputStreamDebug2;
                            outputStream = outputStream2;
                            bitmap.recycle();
                            if (outputStream != null) {
                            }
                            if (outputStreamDebug != null) {
                            }
                            throw th;
                        }
                    }
                    if (recycleBitmap && !bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                    if (outputStream2 != null) {
                        try {
                            outputStream2.close();
                        } catch (Exception e3) {
                            Log.e(TAG, e3.getMessage());
                        }
                    }
                    if (outputStreamDebug != null) {
                        try {
                            outputStreamDebug.close();
                            outputStream = outputStream2;
                        } catch (Exception e32) {
                            Log.e(TAG, e32.getMessage());
                            outputStream = outputStream2;
                        }
                    }
                } catch (Exception e4) {
                    e32 = e4;
                    outputStream = outputStream2;
                } catch (Throwable th4) {
                    th = th4;
                    outputStream = outputStream2;
                    if (recycleBitmap && !bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception e322) {
                            Log.e(TAG, e322.getMessage());
                        }
                    }
                    if (outputStreamDebug != null) {
                        try {
                            outputStreamDebug.close();
                        } catch (Exception e3222) {
                            Log.e(TAG, e3222.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e3222 = e5;
                Log.e(TAG, "saveBitmap: exception " + e3222.getMessage());
                result = false;
                if (recycleBitmap && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception e32222) {
                        Log.e(TAG, e32222.getMessage());
                    }
                }
                if (outputStreamDebug != null) {
                    try {
                        outputStreamDebug.close();
                    } catch (Exception e322222) {
                        Log.e(TAG, e322222.getMessage());
                    }
                }
                return result;
            }
        }
        return result;
    }

    public static Bitmap cropImage(Bitmap bmp, Rect source, Rect dest) {
        if (bmp == null || bmp.isRecycled()) {
            Log.w(TAG, "cropImage: invalid bitmap " + bmp);
            return null;
        } else if (source == null || dest == null) {
            Log.w(TAG, "cropImage: src=" + source + " dst=" + dest);
            return bmp;
        } else if (source.isEmpty() || dest.isEmpty()) {
            Log.w(TAG, "cropImage: dst=" + dest + " src=" + source);
            return null;
        } else {
            Bitmap result = safeCreateBitmap(dest.width(), dest.height(), Config.ARGB_8888);
            if (result == null) {
                Log.w(TAG, "cropImage: null result!");
                return null;
            }
            new Canvas(result).drawBitmap(bmp, source, dest, null);
            return result;
        }
    }

    public static float clamp(float x, float min, float max) {
        if (x > max) {
            return max;
        }
        return x < min ? min : x;
    }

    public static Uri addImageToMediaStore(ContentResolver resolver, String title, long date, int orientation, long jpegLength, String path, int width, int height, String mimeType) {
        Uri uri = null;
        try {
            return resolver.insert(Media.EXTERNAL_CONTENT_URI, getContentValuesForData(title, date, orientation, jpegLength, path, width, height, mimeType));
        } catch (Exception ex) {
            Log.e(TAG, "Failed to write MediaStore" + ex);
            return uri;
        }
    }

    private static ContentValues getContentValuesForData(String title, long date, int orientation, long jpegLength, String path, int width, int height, String mimeType) {
        long dateModifiedSeconds = TimeUnit.MILLISECONDS.toSeconds(new File(path).lastModified());
        ContentValues values = new ContentValues(10);
        values.put(Constants.TITLE, title);
        values.put("_display_name", title);
        values.put("datetaken", Long.valueOf(date));
        values.put("mime_type", mimeType);
        values.put("date_modified", Long.valueOf(dateModifiedSeconds));
        values.put("orientation", Integer.valueOf(orientation));
        values.put("_data", path);
        values.put("_size", Long.valueOf(jpegLength));
        values.put("width", Integer.valueOf(width));
        values.put("height", Integer.valueOf(height));
        return values;
    }

    public static boolean launchDefaultBrowser(Context context, String url) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
            intent.setPackage("com.android.browser");
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            Log.w(TAG, "launchDefaultBrowser exception", e);
            return false;
        }
    }
}

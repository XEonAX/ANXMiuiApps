package com.alibaba.imagesearch.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.fastjson.asm.Opcodes;
import com.taobao.ma.common.constants.MaConstants;
import com.xiaomi.scanner.util.Util;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class b {
    private static final String[] a = new String[]{"orientation", "_data"};

    private static class a {
        public String a;
        public String b;
        public String c;
        public String d;

        private a() {
            this.a = "";
            this.b = "";
            this.c = "";
        }

        public int a() {
            int i = 0;
            if (TextUtils.isEmpty(this.d)) {
                return i;
            }
            try {
                return Integer.parseInt(this.d);
            } catch (Exception e) {
                return i;
            }
        }
    }

    private static class b {
        public static int d = 90;
        public static int e = 90;
        public static int f = 50;
        public static int g = 30;
        public static int h = 30;
        public static String i = "wifi";
        public static String j = "4g";
        public static String k = "3g";
        public static String l = "2g";
        public static String m = "other";
        public static final Map<String, Integer> n = new HashMap();
        public int a;
        public int b;
        public int c;
        private String o;

        static {
            n.put(i, Integer.valueOf(d));
            n.put(j, Integer.valueOf(e));
            n.put(k, Integer.valueOf(f));
            n.put(l, Integer.valueOf(g));
            n.put(m, Integer.valueOf(h));
        }

        public b(String str) {
            this(str, a(str));
        }

        public b(String str, int i) {
            this(str, i, 200, 640);
        }

        public b(String str, int i, int i2, int i3) {
            this.o = k;
            this.a = f;
            this.b = 200;
            this.c = 640;
            this.o = str;
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        private static int a(String str) {
            Integer num = (Integer) n.get(str);
            return num == null ? f : num.intValue();
        }

        public String toString() {
            return "ImageProcessRule{netType='" + this.o + '\'' + ", quality=" + this.a + ", minSize=" + this.b + ", maxSize=" + this.c + '}';
        }
    }

    public static class c {
        public String a = "";
        public Bitmap b = null;
        public int c = -1;
        public int d = -1;
        public int e = -1;
        public int f = -1;

        c() {
        }

        public String toString() {
            return "LocalImage{path='" + this.a + '\'' + ", image=" + this.b + ", originalWidth=" + this.c + ", originalHeight=" + this.d + ", scaledWidth=" + this.e + ", scaledHeight=" + this.f + '}';
        }
    }

    private static class d {
        private static int b(Context context) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return 0;
            }
            String typeName = activeNetworkInfo.getTypeName();
            return typeName.equalsIgnoreCase("WIFI") ? 4 : typeName.equalsIgnoreCase("MOBILE") ? TextUtils.isEmpty(Proxy.getDefaultHost()) ? c(context) : 2 : 0;
        }

        private static int c(Context context) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return 3;
            }
            switch (connectivityManager.getActiveNetworkInfo().getSubtype()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    PLog.d("nettype = 2");
                    return 2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    PLog.d("nettype = 3");
                    return 3;
                case 13:
                    PLog.d("nettype = 5");
                    return 5;
                default:
                    PLog.d("default nettype = 3");
                    return 3;
            }
        }
    }

    private static int a(Options options, int i) {
        int i2 = options.outHeight;
        int i3 = options.outWidth;
        int i4;
        if (i3 > i2) {
            i4 = (int) (((float) i) * (((((float) i3) * 1.0f) / ((float) i2)) * 1.0f));
        } else {
            i4 = i;
            i = (int) (((float) i) * (((((float) i2) * 1.0f) / ((float) i3)) * 1.0f));
        }
        int i5 = 1;
        if (i2 > i || i3 > i4) {
            i2 /= 2;
            i3 /= 2;
            while (i2 / i5 > i && i3 / i5 > i4) {
                i5 *= 2;
            }
        }
        return i5;
    }

    private static Bitmap a(Bitmap bitmap, int i, int i2, int i3, int i4) {
        float f = 1.0f;
        if (bitmap == null) {
            return null;
        }
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width >= height) {
            if (width > i4) {
                f = (1.0f * ((float) i4)) / ((float) width);
            }
        } else if (height > i4) {
            f = (1.0f * ((float) i4)) / ((float) height);
        }
        Matrix matrix = new Matrix();
        matrix.postRotate((float) i);
        matrix.postScale(((float) i2) * f, f * ((float) i3));
        Bitmap createBitmap;
        try {
            createBitmap = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.right, rect.bottom, matrix, true);
            if (bitmap == null || bitmap.isRecycled() || bitmap == createBitmap) {
                return createBitmap;
            }
            bitmap.recycle();
            return createBitmap;
        } catch (OutOfMemoryError e) {
            createBitmap = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.right / 2, rect.bottom / 2, matrix, true);
            if (bitmap == null || bitmap.isRecycled() || bitmap == createBitmap) {
                return createBitmap;
            }
            bitmap.recycle();
            return createBitmap;
        } catch (Throwable th) {
            if (!(bitmap == null || bitmap.isRecycled() || bitmap == null)) {
                bitmap.recycle();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x006a A:{SYNTHETIC, Splitter: B:35:0x006a} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static a a(Context context, Uri uri) {
        Exception e;
        Throwable th;
        a aVar = new a();
        if (context == null || uri == null) {
            return aVar;
        }
        ContentResolver contentResolver = context.getContentResolver();
        aVar.b = uri.toString();
        Cursor query;
        try {
            query = contentResolver.query(uri, a, null, null, null);
            if (query == null) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                return aVar;
            }
            try {
                query.moveToFirst();
                aVar.c = query.getString(query.getColumnIndex("_data"));
                aVar.d = query.getString(query.getColumnIndex("orientation"));
                if (query != null) {
                    try {
                        query.close();
                    } catch (Exception e22) {
                        e22.printStackTrace();
                    }
                }
                return aVar;
            } catch (Exception e3) {
                e22 = e3;
                try {
                    e22.printStackTrace();
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Exception e222) {
                            e222.printStackTrace();
                        }
                    }
                    return aVar;
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (Exception e5) {
            e222 = e5;
            query = null;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
            }
            throw th;
        }
    }

    private static c a(Context context, Uri uri, int i) {
        a a = a(context, uri);
        if (TextUtils.isEmpty(a.c)) {
            return null;
        }
        c a2 = a(a.c, i, 1);
        int a3 = a.a();
        if (a3 == 0) {
            return a2;
        }
        a2.b = a(a2.b, a3, 1, 1, i);
        return a2;
    }

    private static c a(Context context, c cVar, int i) {
        int i2 = 1;
        int i3 = -1;
        PLog.imgHandleLogD("start handle LocalImage");
        if (cVar == null || cVar.b == null) {
            PLog.imgHandleLogE("handled LocalImage is null localImage=" + cVar);
        } else {
            int i4 = 0;
            switch (i) {
                case 2:
                    break;
                case 3:
                    i4 = Opcodes.GETFIELD;
                    i3 = 1;
                    break;
                case 4:
                    i3 = 1;
                    i2 = -1;
                    break;
                case 6:
                    i3 = 1;
                    i4 = 90;
                    break;
                case 8:
                    i3 = 1;
                    i4 = 270;
                    break;
                default:
                    i3 = 1;
                    break;
            }
            if (i4 == 90 || i4 == 270) {
                int i5 = cVar.c;
                cVar.c = cVar.d;
                cVar.d = i5;
            }
            Bitmap a = a(cVar.b, i4, i3, i2, b(context).c);
            cVar.b = a;
            cVar.e = a.getWidth();
            cVar.f = a.getHeight();
            cVar.a = a(context, a, CompressFormat.JPEG, b(context).a);
            PLog.imgHandleLogD("localImage scaled w = " + a.getWidth() + ", scaled h = " + a.getHeight() + " path = " + cVar.a);
        }
        return cVar;
    }

    public static c a(Context context, String str) {
        int i = 1;
        c cVar = null;
        b b = b(context);
        Uri parse = Uri.parse(str);
        CharSequence scheme = parse.getScheme();
        if (TextUtils.isEmpty(scheme)) {
            cVar = a(str, b.c, 1);
            i = b(str);
        } else if (TextUtils.equals(scheme, "file")) {
            cVar = a(parse.getPath(), b.c, 1);
            i = b(parse.getPath());
        } else if (TextUtils.equals(scheme, MaConstants.UT_PARAM_KEY_CONTENT)) {
            cVar = a(context, parse, b.c);
        }
        return a(context, cVar, i);
    }

    public static c a(Context context, byte[] bArr) {
        b b = b(context);
        PLog.imgHandleLogD("current ImageRule is " + b);
        return a(context, a(bArr, b.c, 1), 1);
    }

    private static c a(String str, int i, int i2) {
        c cVar = new c();
        if (TextUtils.isEmpty(str)) {
            PLog.e("filePath is empty");
            return cVar;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        cVar.c = options.outWidth;
        cVar.d = options.outHeight;
        options.inSampleSize = a(options, i) * i2;
        options.inJustDecodeBounds = false;
        try {
            cVar.b = BitmapFactory.decodeFile(str, options);
            if (cVar.b != null) {
                return cVar;
            }
            PLog.e("BitmapFactory.decodeFile return null");
            return cVar;
        } catch (OutOfMemoryError e) {
            return a(str, i, 2);
        }
    }

    private static c a(byte[] bArr, int i, int i2) {
        PLog.imgHandleLogD("decodeBitmapFromBytes scale = " + i2);
        c cVar = new c();
        if (bArr == null) {
            PLog.imgHandleLogE("decodeBitmapFromBytes bytes = null");
            return cVar;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        cVar.c = options.outWidth;
        cVar.d = options.outHeight;
        PLog.imgHandleLogD("inJustDecodeBounds localImage = " + cVar);
        options.inSampleSize = a(options, i) * i2;
        PLog.imgHandleLogD("calculateInSampleSize inSampleSize = " + options.inSampleSize);
        options.inJustDecodeBounds = false;
        try {
            cVar.b = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            PLog.imgHandleLogD("decodeByteArray localImage = " + cVar);
            return cVar;
        } catch (OutOfMemoryError e) {
            PLog.imgHandleLogE("OutOfMemoryError");
            return a(bArr, i, 2);
        }
    }

    private static String a(Context context, Bitmap bitmap, CompressFormat compressFormat, int i) {
        if (context == null) {
            return "";
        }
        File cacheDir = context.getCacheDir();
        if (!cacheDir.exists() || cacheDir.isDirectory()) {
            cacheDir.mkdirs();
        }
        File file = new File(cacheDir, "tmp" + System.currentTimeMillis() + Util.JPEG_POSTFIX);
        return (file == null || !a(bitmap, file, compressFormat, i)) ? "" : file.getPath();
    }

    public static boolean a(Context context) {
        if (context != null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0042 A:{SYNTHETIC, Splitter: B:34:0x0042} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x004e A:{SYNTHETIC, Splitter: B:40:0x004e} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(Bitmap bitmap, File file, CompressFormat compressFormat, int i) {
        IOException e;
        FileNotFoundException e2;
        Throwable th;
        boolean z = false;
        FileOutputStream fileOutputStream = null;
        if (bitmap != null) {
            FileOutputStream fileOutputStream2;
            try {
                if (!bitmap.isRecycled()) {
                    fileOutputStream2 = new FileOutputStream(file);
                    try {
                        bitmap.compress(compressFormat, i, fileOutputStream2);
                        fileOutputStream2.flush();
                        z = true;
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                    } catch (FileNotFoundException e4) {
                        e2 = e4;
                        try {
                            e2.printStackTrace();
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e32) {
                                    e32.printStackTrace();
                                }
                            }
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e322) {
                                    e322.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        e322 = e5;
                        fileOutputStream = fileOutputStream2;
                        try {
                            e322.printStackTrace();
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3222) {
                                    e3222.printStackTrace();
                                }
                            }
                            return z;
                        } catch (Throwable th3) {
                            th = th3;
                            if (fileOutputStream != null) {
                            }
                            throw th;
                        }
                    }
                    return z;
                }
            } catch (FileNotFoundException e6) {
                e2 = e6;
                fileOutputStream2 = fileOutputStream;
            } catch (IOException e7) {
                e3222 = e7;
                e3222.printStackTrace();
                if (fileOutputStream != null) {
                }
                return z;
            }
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException e32222) {
                e32222.printStackTrace();
            }
        }
        return z;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        File file = new File(str);
        return !file.exists() || file.delete();
    }

    private static int b(String str) {
        int i = 1;
        try {
            return new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (IOException e) {
            PLog.imgHandleLogE("extractOrientationFromFile IOException = " + e);
            return i;
        }
    }

    private static b b(Context context) {
        switch (d.b(context.getApplicationContext())) {
            case 2:
                return new b(b.l);
            case 3:
                return new b(b.k);
            case 4:
                return new b(b.i);
            case 5:
                return new b(b.j);
            default:
                return new b(b.m);
        }
    }
}

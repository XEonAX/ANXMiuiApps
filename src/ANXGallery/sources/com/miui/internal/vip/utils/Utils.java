package com.miui.internal.vip.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Environment;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import miui.accounts.ExtraAccountManager;
import miui.content.ExtraIntent;
import miui.graphics.BitmapFactory;
import miui.os.C0015Build;
import miui.security.DigestUtils;
import miui.util.AppConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Utils {
    public static final IntentFilter ACCOUNT_CHANGE_FILTER = new IntentFilter();
    static char[] HEX_ARRAY = "0123456789abcdef".toCharArray();
    static int LOG_LEVEL_DEBUG = 0;
    static int LOG_LEVEL_INFO = 1;
    static int LOG_LEVEL_VERBOSE = -1;
    static int LOG_LEVEL_WARN = 1;
    static final String TAG = "vip_sdk";
    private static final String URI_ROOT = "://";

    static {
        ACCOUNT_CHANGE_FILTER.addAction("android.accounts.LOGIN_ACCOUNTS_POST_CHANGED");
        ACCOUNT_CHANGE_FILTER.addAction(ExtraIntent.ACTION_XIAOMI_USER_INFO_CHANGED);
    }

    private Utils() {
    }

    public static void log(String log, Object... args) {
        log(LOG_LEVEL_DEBUG, log, args);
    }

    public static void logV(String log, Object... args) {
        log(LOG_LEVEL_VERBOSE, log, args);
    }

    public static void logI(String log, Object... args) {
        log(LOG_LEVEL_INFO, log, args);
    }

    public static void logW(String log, Object... args) {
        log(LOG_LEVEL_WARN, log, args);
    }

    static void log(int level, String log, Object... args) {
        if (level > LOG_LEVEL_DEBUG || isDebugLogEnabled()) {
            String formatLog = new StringBuilder();
            formatLog.append(String.format(log, args));
            formatLog.append(", thread: ");
            formatLog.append(Thread.currentThread().getName());
            formatLog = formatLog.toString();
            if (level == LOG_LEVEL_WARN) {
                Log.w(TAG, formatLog);
            } else if (level == LOG_LEVEL_INFO) {
                Log.i(TAG, formatLog);
            } else if (level == LOG_LEVEL_DEBUG) {
                Log.d(TAG, formatLog);
            } else {
                Log.v(TAG, formatLog);
            }
        }
    }

    public static boolean isDebugLogEnabled() {
        return C0015Build.IS_DEBUGGABLE;
    }

    public static boolean hasData(List<?> list) {
        return (list == null || list.isEmpty()) ? false : true;
    }

    public static boolean isInMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static String getPictureFilePath(Context ctx, String name) {
        return getFilePath(ctx, Environment.DIRECTORY_DOWNLOADS, name);
    }

    public static String getName(String path) {
        if (TextUtils.isEmpty(path)) {
            return "";
        }
        int startIndex = path.lastIndexOf(File.separator) + 1;
        if (startIndex == path.length()) {
            return "";
        }
        return path.substring(startIndex);
    }

    public static String getFilePath(Context ctx, String subDirName, String name) {
        try {
            return new File(ctx.getExternalFilesDir(subDirName), name).getAbsolutePath();
        } catch (Exception e) {
            logW("getFilePath %s failed, %s", subDirName, e);
            return null;
        }
    }

    private static Options getBitmapSize(String path) {
        Options opts = new Options();
        opts.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, opts);
        return opts;
    }

    public static boolean isBitmap(String path) {
        boolean z = true;
        try {
            Options opts = getBitmapSize(path);
            if (opts.outWidth <= 0 || opts.outHeight <= 0) {
                z = false;
            }
            return z;
        } catch (Exception e) {
            log("isBitmap return false, %s", e);
            return false;
        }
    }

    public static Bitmap decodeFile(String path, int targetWidth, int targetHeight, int sampleSize) {
        Options opts;
        boolean shouldScale = shouldScale(targetWidth, targetHeight);
        if (sampleSize > 1 || shouldScale) {
            opts = getBitmapSize(path);
            int ssize = sampleSize;
            if (shouldScale) {
                ssize = Math.max(targetWidth <= 0 ? 0 : opts.outWidth / targetWidth, targetHeight <= 0 ? 0 : opts.outHeight / targetHeight);
            }
            opts.inJustDecodeBounds = false;
            opts.inSampleSize = ssize;
        } else {
            opts = new Options();
            opts.inScaled = false;
        }
        try {
            return BitmapFactory.decodeFile(path, opts);
        } catch (OutOfMemoryError e) {
            logW("Failed to decode bitmap from %s", path);
            return null;
        }
    }

    public static Bitmap decodeResource(Context c, int resourceId, int targetWidth, int targetHeight) {
        Options opts = new Options();
        if (shouldScale(targetWidth, targetHeight)) {
            opts.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(c.getResources(), resourceId, opts);
            int sampleSize = Math.max(divCeiling(opts.outWidth, targetWidth), divCeiling(opts.outHeight, targetHeight));
            int density = c.getResources().getDisplayMetrics().densityDpi;
            opts.inJustDecodeBounds = false;
            opts.inSampleSize = sampleSize;
            opts.inDensity = density;
            opts.inScreenDensity = density;
            opts.inTargetDensity = density;
        } else {
            opts.inScaled = false;
        }
        try {
            return BitmapFactory.decodeResource(c.getResources(), resourceId, opts);
        } catch (OutOfMemoryError e) {
            log("Failed to decode resource %s, %s", Integer.valueOf(resourceId), e);
            return null;
        }
    }

    public static boolean isStringUri(String str) {
        return str.contains(URI_ROOT);
    }

    public static void startUri(Context ctx, String uri) {
        log("startUri, ctx = %s, uri = %s", ctx, uri);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(uri));
        startActivity(ctx, intent, false);
    }

    public static void startActivity(Context ctx, Intent intent, boolean forResult) {
        if (!(ctx instanceof Activity)) {
            intent.addFlags(268435456);
        }
        Activity act = ctx instanceof Activity ? (Activity) ctx : null;
        if (!forResult || act == null) {
            log("startActivity, intent = %s", intent);
            ctx.startActivity(intent);
            return;
        }
        try {
            log("startActivityForResult, intent = %s", intent);
            act.startActivityForResult(intent, Math.abs(intent.getAction().hashCode()));
        } catch (ActivityNotFoundException e) {
            logW("startActivity failed, %s", e);
            Toast.makeText(ctx, e.getMessage(), 0).show();
        }
    }

    public static void startActivity(Context ctx, String action, String packageName) {
        startActivity(ctx, action, packageName, false);
    }

    public static void startActivity(Context ctx, String action, String packageName, boolean forResult) {
        startActivity(ctx, action, packageName, null, forResult);
    }

    public static void startActivity(Context ctx, String action, String packageName, String extraJson) {
        startActivity(ctx, action, packageName, extraJson, false);
    }

    public static void startActivity(Context ctx, String action, String packageName, String extraJson, boolean forResult) {
        log("startActivity, ctx = %s, action = %s, packageName = %s, extraJson = %s, forResult = %s", ctx, action, packageName, extraJson, Boolean.valueOf(forResult));
        if (isStringUri(action)) {
            startUri(ctx, action);
            return;
        }
        Intent intent = new Intent(action);
        if (!TextUtils.isEmpty(packageName)) {
            intent.setPackage(packageName);
        }
        if (!TextUtils.isEmpty(extraJson)) {
            try {
                setIntentExtra(intent, new JSONObject(extraJson));
            } catch (JSONException e) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("can not set extra parameters, error = ");
                stringBuilder.append(e);
                stringBuilder.append(", extraJson = ");
                stringBuilder.append(extraJson);
                Log.e(str, stringBuilder.toString());
            }
        }
        startActivity(ctx, intent, forResult);
    }

    private static void setIntentExtra(Intent intent, JSONObject args) throws JSONException {
        JSONArray names = args.names();
        if (names != null) {
            int n = names.length();
            for (int i = 0; i < n; i++) {
                String key = names.optString(i);
                String value = args.optString(key);
                if (!(TextUtils.isEmpty(key) || TextUtils.isEmpty(value))) {
                    intent.putExtra(key, value);
                }
            }
        }
    }

    private static boolean shouldScale(int targetWidth, int targetHeight) {
        return targetWidth > 0 || targetHeight > 0;
    }

    private static int divCeiling(int dividend, int divisor) {
        if (dividend == 0 || divisor == 0) {
            return 0;
        }
        return (int) ((((float) dividend) / ((float) divisor)) + 0.5f);
    }

    public static <T> boolean hasData(T[] array) {
        return array != null && array.length > 0;
    }

    public static Bitmap createPhoto(Bitmap bitmap) {
        Bitmap output = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(output);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-1);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return output;
    }

    public static InputStream bitmapToStream(Bitmap bmp) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        bmp.compress(CompressFormat.PNG, 0, bos);
        return new ByteArrayInputStream(bos.toByteArray());
    }

    public static Context getContext() {
        return AppConstants.getCurrentApplication().getApplicationContext();
    }

    public static boolean hasAccount() {
        return ExtraAccountManager.getXiaomiAccount(getContext()) != null;
    }

    public static <T> ArrayList<T> toArrayList(T[]... arrayList) {
        if (arrayList == null) {
            return null;
        }
        ArrayList<T> ret = new ArrayList();
        for (T[] array : arrayList) {
            if (array != null && array.length > 0) {
                Collections.addAll(ret, array);
            }
        }
        return ret;
    }

    public static <T> boolean contains(T[] array, T obj) {
        if (!(array == null || obj == null)) {
            for (T item : array) {
                if (item.equals(obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String md5(String s) {
        return bytesToHex(DigestUtils.get(s.getBytes(), "MD5"));
    }

    public static String bytesToHex(byte[] bytes) {
        char[] hexChars = new char[(bytes.length * 2)];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = HEX_ARRAY[v >>> 4];
            hexChars[(j * 2) + 1] = HEX_ARRAY[v & 15];
        }
        return new String(hexChars);
    }

    public static PackageInfo getPackageInfo(String packageName) {
        try {
            return getContext().getPackageManager().getPackageInfo(packageName, 0);
        } catch (Exception e) {
            logI(TAG, "failed to get package %s for %s", packageName, e);
            return null;
        }
    }
}

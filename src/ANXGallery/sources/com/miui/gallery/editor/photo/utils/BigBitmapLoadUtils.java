package com.miui.gallery.editor.photo.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import java.util.HashMap;

public class BigBitmapLoadUtils {
    public static int getMaxMemory(Context context) {
        int maxMemory = ((ActivityManager) context.getSystemService("activity")).getLargeMemoryClass();
        Log.d("BigBitmapLoadUtils", "max memory:%dM", Integer.valueOf(maxMemory));
        return maxMemory;
    }

    public static int calculateInSampleSize(Context context, int width, int height) {
        int inSampleSize = 1;
        while (((getMaxMemory(context) * 1024) * 1024) / 3 < (((width * height) * 4) / inSampleSize) / inSampleSize) {
            inSampleSize *= 2;
        }
        if (inSampleSize != 1) {
            Log.i("BigBitmapLoadUtils", "decoding original bitmap,inSampleSize:%d", Integer.valueOf(inSampleSize));
            HashMap<String, String> params = new HashMap();
            params.put("inSampleSize", String.valueOf(inSampleSize));
            params.put("size", String.format("%dk*%dk", new Object[]{Integer.valueOf(width / 1000), Integer.valueOf(height / 1000)}));
            params.put("model", Build.MODEL);
            BaseSamplingStatHelper.recordCountEvent("photo_editor", "decode_resize", params);
        }
        return inSampleSize;
    }
}

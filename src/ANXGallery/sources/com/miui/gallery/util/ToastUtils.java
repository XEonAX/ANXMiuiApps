package com.miui.gallery.util;

import android.content.Context;
import android.widget.Toast;
import com.miui.gallery.threadpool.ThreadManager;

public class ToastUtils {
    private static boolean sIsLastCancelable;
    private static Toast sLastToast = null;
    private static Object sSyncObj = new Object();

    public static void makeText(Context context, CharSequence msg) {
        makeText(context, msg, true);
    }

    public static void makeText(Context context, CharSequence msg, boolean isCancelable) {
        makeText(context, msg, 0, isCancelable);
    }

    public static void makeTextLong(Context context, CharSequence msg) {
        makeText(context, msg, true);
    }

    public static void makeText(Context context, int msg) {
        makeText(context, msg, 0, true);
    }

    public static void makeTextLong(Context context, int msg) {
        makeText(context, msg, 1, true);
    }

    public static void makeText(Context context, int msg, int len) {
        makeText(context, context.getString(msg), len, true);
    }

    public static void makeText(Context context, int msg, int len, boolean isCancelable) {
        makeText(context, context.getString(msg), len, isCancelable);
    }

    public static void makeText(Context context, CharSequence msg, int len) {
        makeText(context, msg, len, true);
    }

    public static void makeText(final Context context, final CharSequence msg, final int len, final boolean isCancelable) {
        ThreadManager.getMainHandler().post(new Runnable() {
            public void run() {
                synchronized (ToastUtils.sSyncObj) {
                    if (ToastUtils.sLastToast != null && ToastUtils.sIsLastCancelable) {
                        ToastUtils.sLastToast.cancel();
                    }
                    ToastUtils.sLastToast = Toast.makeText(context.getApplicationContext(), msg, len);
                    ToastUtils.sIsLastCancelable = isCancelable;
                    ToastUtils.sLastToast.show();
                }
            }
        });
    }
}

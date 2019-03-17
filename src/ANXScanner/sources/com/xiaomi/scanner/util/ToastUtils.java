package com.xiaomi.scanner.util;

import android.widget.Toast;
import com.xiaomi.scanner.app.ScannerApp;

public class ToastUtils {
    private static Toast toast;

    public static void showCenterToast(int id) {
        showCenterToast(ScannerApp.getAndroidContext().getResources().getString(id));
    }

    public static void showCenterToast(final String s) {
        ScannerThreadPool.runOnUiThread(new Runnable() {
            public void run() {
                ToastUtils.showToast(s, true);
            }
        });
    }

    private static void showToast(String s, boolean center) {
        hideToast();
        toast = Toast.makeText(ScannerApp.getAndroidContext(), s, 0);
        if (center) {
            toast.setGravity(17, 0, 0);
        }
        toast.show();
    }

    private static void hideToast() {
        if (toast != null) {
            toast.cancel();
            toast = null;
        }
    }

    public static void showBottomToast(int id) {
        showToast(ScannerApp.getAndroidContext().getResources().getString(id), false);
    }
}

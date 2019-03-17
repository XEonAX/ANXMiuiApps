package com.alibaba.imagesearch.utils;

import android.util.Log;

public class PLog {
    public static final String LOG_TAG = "PailitaoSDK";

    public static void MaLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-MA", str);
        }
    }

    public static void MaLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-MA", str);
        }
    }

    public static void PerformanceLog(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-Performance", str);
        }
    }

    public static void SRPLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-SRP", str);
        }
    }

    public static void SRPLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-SRP", str);
        }
    }

    public static void d(String str) {
        if (isDebuggable() && str != null) {
            Log.d(LOG_TAG, str);
        }
    }

    public static void d(String str, Throwable th) {
        if (isDebuggable() && str != null && th != null) {
            Log.d(LOG_TAG, str, th);
        }
    }

    public static void dnsLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-DNS", str);
        }
    }

    public static void dnsLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-DNS", str);
        }
    }

    public static void e(String str) {
        if (str != null) {
            Log.e(LOG_TAG, str);
        }
    }

    public static void e(String str, Throwable th) {
        if (str != null && th != null) {
            Log.e(LOG_TAG, str, th);
        }
    }

    public static void i(String str) {
        if (isDebuggable() && str != null) {
            Log.i(LOG_TAG, str);
        }
    }

    public static void imgHandleLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-IMGHANDLE", str);
        }
    }

    public static void imgHandleLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-IMGHANDLE", str);
        }
    }

    public static void initLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-INIT", str);
        }
    }

    public static void initLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-INIT", str);
        }
    }

    public static boolean isDebuggable() {
        return c.c().logEnabled;
    }

    public static void searchLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-SearchIMG", str);
        }
    }

    public static void searchLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-SearchIMG", str);
        }
    }

    public static void similarLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-SIMILAR", str);
        }
    }

    public static void similarLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-SIMILAR", str);
        }
    }

    public static void uploadLogD(String str) {
        if (isDebuggable() && str != null) {
            Log.d("PailitaoSDK-UPLOAD", str);
        }
    }

    public static void uploadLogE(String str) {
        if (str != null) {
            Log.e("PailitaoSDK-UPLOAD", str);
        }
    }
}

package com.alibaba.baichuan.trade.common.utils;

import android.content.Context;

public class ResourceUtils {
    public static final String TAG = "ResourceUtils";

    public static int getIdentifier(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str2, str, context.getPackageName());
    }

    public static int getRLayout(Context context, String str) {
        return getIdentifier(context, "layout", str);
    }

    public static String getString(Context context, String str) {
        return context.getResources().getString(getIdentifier(context, "string", str));
    }
}

package com.alibaba.baichuan.trade.common.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.concurrent.atomic.AtomicInteger;
import mtopsdk.common.util.SymbolExpUtil;

public class AlibcTradeCommonUtil {
    private static final AtomicInteger a = new AtomicInteger(59994);

    public static int allocateRequestCode(String str) {
        int andIncrement = a.getAndIncrement();
        AlibcLogger.i("kernel", andIncrement + " is allocated for onActivityResult request code for " + str);
        return andIncrement;
    }

    public static String getVersion(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str = packageInfo.versionName + SymbolExpUtil.SYMBOL_DOT + packageInfo.versionCode;
            if (str != null && str.length() > 0) {
                return str;
            }
            AlarmUtils.alarm("AlibcTradeCommonUtil", "getVersion", "获取版本号失败");
            return "";
        } catch (Exception e) {
            AlarmUtils.alarm("AlibcTradeCommonUtil", "getVersion", e.getMessage());
            AlibcLogger.e("AlibcTradeCommonUtil", e.getMessage());
            e.printStackTrace();
            return "";
        }
    }
}

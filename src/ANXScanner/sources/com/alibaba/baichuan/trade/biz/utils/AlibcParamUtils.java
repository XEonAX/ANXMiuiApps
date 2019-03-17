package com.alibaba.baichuan.trade.biz.utils;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

public class AlibcParamUtils {
    public static boolean checkChannel(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z'))) {
                return false;
            }
        }
        return true;
    }

    public static String getChannel(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        String str3 = str + str2;
        if (checkChannel(str3)) {
            return str3;
        }
        AlibcLogger.e("initChannel", "Channel chars must in [0-9][a-z][A-Z], now : " + str3);
        return "0";
    }
}

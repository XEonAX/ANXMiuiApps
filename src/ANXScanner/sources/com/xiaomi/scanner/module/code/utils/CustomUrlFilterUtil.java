package com.xiaomi.scanner.module.code.utils;

import android.text.TextUtils;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.util.ReflectUtil;

public class CustomUrlFilterUtil {
    private static final String PHONE_CHARS = "0123456789+. -#*()";
    private static final String SEND_MESSAGE_KEY = "smsto:";
    private static final Tag TAG = new Tag("CustomUrl");

    public static String filter(String result) {
        if (TextUtils.isEmpty(result)) {
            return null;
        }
        if (result.startsWith(SEND_MESSAGE_KEY) && TextUtils.isEmpty(getEffectiveNumber(result.substring(SEND_MESSAGE_KEY.length())))) {
            return null;
        }
        return result;
    }

    private static String getEffectiveNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int len = str.length();
        for (int i = 0; i < len; i++) {
            if (PHONE_CHARS.indexOf(str.charAt(i)) == -1) {
                return null;
            }
        }
        try {
            Object object = ReflectUtil.callStaticObjectMethod(Class.forName("miui.telephony.PhoneNumberUtils$PhoneNumber"), "parse", new Class[]{CharSequence.class}, str);
            String number = ReflectUtil.callObjectMethod(object, "getEffectiveNumber").toString();
            ReflectUtil.callObjectMethod(object, "recycle");
            return number;
        } catch (Exception e) {
            Log.e(TAG, "call method error", e);
            return null;
        }
    }
}

package com.alibaba.mtl.log.d;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.Random;

/* compiled from: PhoneInfoUtils */
public class m {
    private static final Random a = new Random();

    public static final String getUniqueID() {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nanoTime = (int) System.nanoTime();
        int nextInt = a.nextInt();
        int nextInt2 = a.nextInt();
        Object bytes = f.getBytes(currentTimeMillis);
        Object bytes2 = f.getBytes(nanoTime);
        Object bytes3 = f.getBytes(nextInt);
        Object bytes4 = f.getBytes(nextInt2);
        Object obj = new byte[16];
        System.arraycopy(bytes, 0, obj, 0, 4);
        System.arraycopy(bytes2, 0, obj, 4, 4);
        System.arraycopy(bytes3, 0, obj, 8, 4);
        System.arraycopy(bytes4, 0, obj, 12, 4);
        return c.encodeToString(obj, 2);
    }

    /* JADX WARNING: Missing block: B:6:0x002c, code:
            if (android.text.TextUtils.isEmpty(r0) == false) goto L_0x002e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String getImei(Context context) {
        String str;
        if (context != null) {
            try {
                Object string = context.getSharedPreferences("UTCommon", 0).getString("_ie", "");
                if (!TextUtils.isEmpty(string)) {
                    str = new String(c.decode(string.getBytes(), 2), "UTF-8");
                }
            } catch (Exception e) {
            }
        }
        if (TextUtils.isEmpty(null)) {
            str = getUniqueID();
        } else {
            str = null;
        }
        if (context != null) {
            try {
                Editor edit = context.getSharedPreferences("UTCommon", 0).edit();
                edit.putString("_ie", new String(c.encode(str.getBytes("UTF-8"), 2)));
                edit.commit();
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        return str;
    }

    /* JADX WARNING: Missing block: B:6:0x002c, code:
            if (android.text.TextUtils.isEmpty(r0) == false) goto L_0x002e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String getImsi(Context context) {
        String str;
        if (context != null) {
            try {
                Object string = context.getSharedPreferences("UTCommon", 0).getString("_is", "");
                if (!TextUtils.isEmpty(string)) {
                    str = new String(c.decode(string.getBytes(), 2), "UTF-8");
                }
            } catch (Exception e) {
            }
        }
        if (TextUtils.isEmpty(null)) {
            str = getUniqueID();
        } else {
            str = null;
        }
        if (context != null) {
            try {
                Editor edit = context.getSharedPreferences("UTCommon", 0).edit();
                edit.putString("_is", new String(c.encode(str.getBytes("UTF-8"), 2)));
                edit.commit();
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        return str;
    }
}

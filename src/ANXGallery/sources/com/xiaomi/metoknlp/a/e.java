package com.xiaomi.metoknlp.a;

import com.xiaomi.metoknlp.MetokApplication;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: Utils */
public final class e {
    private static String ag;
    private static String ah = null;
    private static String ai = null;

    private static String o(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        if (str.startsWith(",") || str.endsWith(",")) {
            str = str.replace(",", "");
        }
        if (!str.startsWith("0")) {
            return str;
        }
        try {
            if (Long.parseLong(str) == 0) {
                return null;
            }
            return str;
        } catch (Exception e) {
            return null;
        }
    }

    public static String getImei() {
        if (ag != null) {
            return ag;
        }
        String o = o(d.getImei());
        if (o == null) {
            return o(c.get("ro.ril.miui.imei", ""));
        }
        ag = o;
        return ag;
    }

    public static String getDeviceModel() {
        if (ah != null && !ah.isEmpty()) {
            return ah;
        }
        ah = c.get("ro.product.model", "");
        ah = ah.replaceAll(" ", "");
        return ah;
    }

    public static String V() {
        if (ai != null && !ai.isEmpty()) {
            return ai;
        }
        ai = c.get("ro.build.version.incremental", "");
        return ai;
    }

    public static String W() {
        if (!a.q()) {
            return a.r();
        }
        if (!c.get("ro.product.locale.region", "CN").equals("CN")) {
            return "global";
        }
        if (a.s()) {
            return "alpha";
        }
        if (a.t()) {
            return "dev";
        }
        if (a.u()) {
            return "stable";
        }
        return "alpha";
    }

    public static int getMcc() {
        int i = -1;
        String networkOperator = d.getNetworkOperator();
        if (networkOperator == null) {
            return i;
        }
        int length = networkOperator.length();
        if (networkOperator.isEmpty() || length <= 1) {
            return i;
        }
        try {
            return Integer.parseInt(networkOperator.substring(0, 3));
        } catch (Exception e) {
            return i;
        }
    }

    public static int getMnc() {
        int i = -1;
        String networkOperator = d.getNetworkOperator();
        if (networkOperator == null) {
            return i;
        }
        int length = networkOperator.length();
        if (networkOperator.isEmpty() || length <= 1) {
            return i;
        }
        try {
            return Integer.parseInt(networkOperator.substring(3));
        } catch (Exception e) {
            return i;
        }
    }

    public static String p(String str) {
        int i = 0;
        char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            byte[] bytes = str.getBytes();
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bytes);
            byte[] digest = instance.digest();
            int length = digest.length;
            char[] cArr2 = new char[(length * 2)];
            int i2 = 0;
            while (i < length) {
                byte b = digest[i];
                int i3 = i2 + 1;
                cArr2[i2] = cArr[(b >>> 4) & 15];
                i2 = i3 + 1;
                cArr2[i3] = cArr[b & 15];
                i++;
            }
            return new String(cArr2);
        } catch (Exception e) {
            return null;
        }
    }

    public static String X() {
        String str = "";
        try {
            return MetokApplication.get().getPackageManager().getPackageInfo(MetokApplication.get().getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String Y() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    public static boolean a(int i) {
        if (i == 1) {
            return true;
        }
        return false;
    }
}

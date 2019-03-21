package com.xiaomi.metoknlp;

import com.xiaomi.metoknlp.a.e;
import com.xiaomi.metoknlp.a.f;
import java.util.HashMap;
import java.util.Map;

/* compiled from: CloudClient */
public final class b {
    private static String G = null;

    public static String a(String str, String str2) {
        String str3 = null;
        String Z = f.Z();
        String w = w();
        if (w != null) {
            Z = new StringBuffer(Z).append("/base/profile").append("/").append("metoknlpsdk").append("/").append(str).append("/").append(w).append("__").append(str2).toString();
            Map x = x();
            try {
                str3 = com.xiaomi.metoknlp.a.b.a(Z, x);
            } catch (Exception e) {
            }
            x.clear();
        }
        return str3;
    }

    private static String w() {
        String deviceModel = e.getDeviceModel();
        String V = e.V();
        String X = e.X();
        int mcc = e.getMcc();
        int mnc = e.getMnc();
        if (deviceModel == null || deviceModel.isEmpty() || V == null || V.isEmpty()) {
            return null;
        }
        if (mcc < 0 || mnc < 0) {
            mcc = 999;
            mnc = 99;
        }
        return String.format("%s__%s__%d__%d__%s", new Object[]{deviceModel, V, Integer.valueOf(mcc), Integer.valueOf(mnc), X});
    }

    private static Map x() {
        String w = w();
        Map hashMap = new HashMap();
        if (G == null) {
            String imei = e.getImei();
            if (imei == null || imei.isEmpty()) {
                return null;
            }
            imei = e.p(imei);
            if (imei != null) {
                G = imei;
            }
            if (G == null) {
                return null;
            }
        }
        hashMap.put("CCPVER", G);
        hashMap.put("CCPINF", w);
        return hashMap;
    }
}

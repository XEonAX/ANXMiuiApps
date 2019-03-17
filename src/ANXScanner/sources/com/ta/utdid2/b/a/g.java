package com.ta.utdid2.b.a;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.Random;

/* compiled from: PhoneInfoUtils */
public class g {
    public static final String c() {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nanoTime = (int) System.nanoTime();
        int nextInt = new Random().nextInt();
        int nextInt2 = new Random().nextInt();
        Object bytes = e.getBytes(currentTimeMillis);
        Object bytes2 = e.getBytes(nanoTime);
        Object bytes3 = e.getBytes(nextInt);
        Object bytes4 = e.getBytes(nextInt2);
        Object obj = new byte[16];
        System.arraycopy(bytes, 0, obj, 0, 4);
        System.arraycopy(bytes2, 0, obj, 4, 4);
        System.arraycopy(bytes3, 0, obj, 8, 4);
        System.arraycopy(bytes4, 0, obj, 12, 4);
        return b.encodeToString(obj, 2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0017  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String a(Context context) {
        String deviceId;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    deviceId = telephonyManager.getDeviceId();
                    if (i.a(deviceId)) {
                        return deviceId;
                    }
                    return c();
                }
            } catch (Exception e) {
                deviceId = null;
            }
        }
        deviceId = null;
        if (i.a(deviceId)) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0017  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String b(Context context) {
        String subscriberId;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    subscriberId = telephonyManager.getSubscriberId();
                    if (i.a(subscriberId)) {
                        return subscriberId;
                    }
                    return c();
                }
            } catch (Exception e) {
                subscriberId = null;
            }
        }
        subscriberId = null;
        if (i.a(subscriberId)) {
        }
    }
}

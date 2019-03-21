package com.miui.gallery.data;

import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;

class CityDatabaseUtils {
    private static String TAG = "CityDatabaseUtils";

    public static class PolygonHelper {
        /* JADX WARNING: Removed duplicated region for block: B:26:0x003d  */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0042  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x003d  */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0042  */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x0031  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0036  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static <T> T parseFromByteArray(byte[] bytes) {
            Throwable e;
            Throwable th;
            T object = null;
            if (bytes == null || bytes.length == 0) {
                Log.e(CityDatabaseUtils.TAG, "cannot parse polygon from a byte array, the byte array is null or empty");
            } else {
                ByteArrayInputStream byteArrayInputStream = null;
                ObjectInputStream in = null;
                try {
                    ObjectInputStream in2;
                    ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bytes);
                    try {
                        in2 = new ObjectInputStream(byteArrayInputStream2);
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayInputStream = byteArrayInputStream2;
                        if (byteArrayInputStream != null) {
                        }
                        if (in != null) {
                        }
                        throw th;
                    }
                    try {
                        object = in2.readObject();
                        if (byteArrayInputStream2 != null) {
                            BaseMiscUtil.closeSilently(byteArrayInputStream2);
                        }
                        if (in2 != null) {
                            BaseMiscUtil.closeSilently(in2);
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        in = in2;
                        byteArrayInputStream = byteArrayInputStream2;
                        if (byteArrayInputStream != null) {
                        }
                        if (in != null) {
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    e = th4;
                    e.printStackTrace();
                    if (byteArrayInputStream != null) {
                    }
                    if (in != null) {
                    }
                    return object;
                }
            }
            return object;
        }
    }
}

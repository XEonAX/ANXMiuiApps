package miui.module.appstore;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import miui.security.DigestUtils;

public class MD5Utils {
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0039 A:{SYNTHETIC, Splitter: B:20:0x0039} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0045 A:{SYNTHETIC, Splitter: B:26:0x0045} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static String MD5Sum(File file) {
        Exception e;
        Throwable th;
        StringBuilder sb = new StringBuilder();
        InputStream is = null;
        try {
            InputStream is2 = new FileInputStream(file);
            try {
                for (byte b : DigestUtils.get(is2, "MD5")) {
                    sb.append(byte2Hex(b));
                }
                if (is2 != null) {
                    try {
                        is2.close();
                        is = is2;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        is = is2;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                is = is2;
                try {
                    e.printStackTrace();
                    if (is != null) {
                    }
                    return sb.toString();
                } catch (Throwable th2) {
                    th = th2;
                    if (is != null) {
                        try {
                            is.close();
                        } catch (IOException e22) {
                            e22.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                is = is2;
                if (is != null) {
                }
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
            e.printStackTrace();
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e222) {
                    e222.printStackTrace();
                }
            }
            return sb.toString();
        }
        return sb.toString();
    }

    public static boolean checkMD5(File file, String srcMD5) {
        if (file == null || !file.exists() || srcMD5 == null || !MD5Sum(file).equals(srcMD5.toLowerCase())) {
            return false;
        }
        return true;
    }

    private static String byte2Hex(byte b) {
        int value = (b & BaiduSceneResult.BANK_CARD) + (b < (byte) 0 ? 128 : 0);
        return (value < 16 ? "0" : "") + Integer.toHexString(value).toLowerCase();
    }
}

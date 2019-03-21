package miui.cloud;

import java.io.File;

public class MiCloudCompat {
    public static final String GALLERY_BASE_URL = (USE_PREVIEW ? "http://galleryapi.micloud.preview.n.xiaomi.net" : "http://galleryapi.micloud.xiaomi.net");
    public static final String URL_ACOUNT_API_BASE_SECURE = (USE_PREVIEW ? "http://api.account.preview.n.xiaomi.net/pass" : "https://api.account.xiaomi.com/pass");
    public static final boolean USE_PREVIEW = new File("/data/system/xiaomi_account_preview").exists();

    public static String getQuantityStringWithUnit(long value) {
        String result = "";
        float v = (float) value;
        if (v > 1.07374184E8f) {
            return String.format("%1$.2fGB", new Object[]{Float.valueOf(((v / 1024.0f) / 1024.0f) / 1024.0f)});
        } else if (v > 104857.6f) {
            return String.format("%1$.2fMB", new Object[]{Float.valueOf((v / 1024.0f) / 1024.0f)});
        } else if (v > 0.0f) {
            return "0.1MB";
        } else {
            return "0MB";
        }
    }
}

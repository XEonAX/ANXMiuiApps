package com.miui.gallery.request;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StorageUtils;
import java.io.File;

public class HostManager {
    private static final String MICLOUD_GALLERY_WEB_URL_BASE = (new File(URL_SWITCH_FILE).exists() ? "https://daily.i.mi.com/mobile/gallery" : "https://i.mi.com/mobile/gallery");
    private static final String URL_SWITCH_FILE = StorageUtils.getPathInPrimaryStorage("MIUI/Gallery/cloud/url_daily");

    public static String getTrashBinUrl() {
        return MICLOUD_GALLERY_WEB_URL_BASE + "/trash";
    }

    public static void clearCookies() {
        try {
            if (CookieManager.getInstance().hasCookies()) {
                CookieManager.getInstance().removeAllCookie();
            }
        } catch (Throwable e) {
            Log.e("HostManager", e);
        }
    }

    public static boolean isInternalUrl(String url) {
        if (TextUtils.isEmpty(url)) {
            return false;
        }
        Uri uri = Uri.parse(url);
        if (uri.isOpaque() || uri.isRelative()) {
            return true;
        }
        String host = uri.getHost();
        if (host == null) {
            return false;
        }
        if (host.endsWith("miui.com") || host.endsWith("mi.com") || host.endsWith("xiaomi.com") || host.endsWith("xiaomi.net")) {
            return true;
        }
        return false;
    }

    public static boolean isGalleryUrl(String url) {
        if (isInternalUrl(url)) {
            String path = Uri.parse(url).getPath();
            if (!TextUtils.isEmpty(path)) {
                return path.contains("/mobile/gallery");
            }
        }
        return false;
    }
}

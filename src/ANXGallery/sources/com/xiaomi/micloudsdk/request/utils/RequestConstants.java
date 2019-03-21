package com.xiaomi.micloudsdk.request.utils;

import java.io.File;

public class RequestConstants {
    public static final boolean USE_MEMBER_DAILY = new File("/data/system/micloud_member_daily").exists();
    public static final boolean USE_PREVIEW = new File("/data/system/xiaomi_account_preview").exists();

    public static class URL {
        private static final String CURRENT_VERSION = (URL_MICLOUD_STATUS_BASE + "/mic/status/v2");
        public static final String URL_GALLERY_BASE = (RequestConstants.USE_PREVIEW ? "http://micloud.preview.n.xiaomi.net" : "http://galleryapi.micloud.xiaomi.net");
        public static final String URL_MICLOUD_MEMBER_STATUS_QUERY = (CURRENT_VERSION + "/user/level");
        private static final String URL_MICLOUD_STATUS_BASE = (RequestConstants.USE_PREVIEW ? "http://statusapi.micloud.preview.n.xiaomi.net" : "http://statusapi.micloud.xiaomi.net");
        public static final String URL_MICLOUD_STATUS_QUERY = (CURRENT_VERSION + "/user/overview");
        public static final String URL_RELOCATION_BASE;
        public static final String URL_RICH_MEDIA_BASE = (RequestConstants.USE_PREVIEW ? "http://api.micloud.preview.n.xiaomi.net" : "http://fileapi.micloud.xiaomi.net");

        static {
            String str;
            if (RequestConstants.USE_PREVIEW) {
                str = "http://relocationapi.micloud.preview.n.xiaomi.net";
            } else {
                str = "http://relocationapi.micloud.xiaomi.net";
            }
            URL_RELOCATION_BASE = str;
        }
    }
}

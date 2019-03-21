package com.miui.gallery.util;

import android.content.Context;
import com.miui.os.Rom;
import com.xiaomi.micloudsdk.provider.GdprUtils;

public class PrivacyAgreementUtils {
    private static final boolean PRIVACY_ENABLE;

    static class CloudAgreementHelper {
        static boolean isCloudServiceAgreementEnable(Context context) {
            try {
                return GdprUtils.isPermissionGranted(context);
            } catch (Exception e) {
                e.printStackTrace();
                return true;
            }
        }
    }

    static {
        boolean z = Rom.IS_MIUI && Rom.IS_INTERNATIONAL;
        PRIVACY_ENABLE = z;
    }

    public static boolean isGalleryAgreementEnable(Context context) {
        if (PRIVACY_ENABLE) {
            return false;
        }
        return true;
    }

    public static boolean isCloudServiceAgreementEnable(Context context) {
        if (PRIVACY_ENABLE) {
            return CloudAgreementHelper.isCloudServiceAgreementEnable(context);
        }
        return true;
    }
}

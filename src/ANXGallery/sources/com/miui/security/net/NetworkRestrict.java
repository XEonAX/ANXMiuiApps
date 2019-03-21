package com.miui.security.net;

import android.content.Context;
import com.miui.core.SdkHelper;
import miui.provider.ExtraNetwork;

public class NetworkRestrict {
    public static boolean isMobileRestrict(Context context, String pkgName) {
        return SdkHelper.IS_MIUI && ExtraNetwork.isMobileRestrict(context, pkgName);
    }

    public static boolean isWifiRestrict(Context context, String pkgName) {
        return SdkHelper.IS_MIUI && ExtraNetwork.isWifiRestrict(context, pkgName);
    }
}

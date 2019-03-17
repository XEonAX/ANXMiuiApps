package mtopsdk.common.util;

import java.util.Map;
import mtopsdk.common.a.a;

public class SwitchConfigUtil {
    public static final String API_LOCK_INTERVAL_KEY = "apiLockInterval";
    public static final String CONFIG_GROUP_MTOPSDK_ANDROID_SWITCH = "mtopsdk_android_switch";
    public static final String CONFIG_GROUP_MTOPSDK_UPLOAD_SWITCH = "mtopsdk_upload_switch";
    public static final String ENABLE_SPDY_KEY = "enableSpdy";
    public static final String ENABLE_SSL_KEY = "enableSsl";
    public static final String ENABLE_UNIT_KEY = "enableUnit";
    public static final String INDIVIDUAL_API_LOCK_INTERVAL_KEY = "individualApiLockInterval";
    private static final String TAG = "mtopsdk.SwitchConfigUtil";
    private static a listener = null;

    public static void setMtopConfigListener(a aVar) {
        if (aVar != null) {
            listener = aVar;
        }
    }

    public static String getSwitchConfig(String str, String str2, String str3) {
        if (listener != null) {
            return listener.a();
        }
        TBSdkLog.w(TAG, "[getSwitchConfig] MtopConfigListener is null");
        return str3;
    }

    public static Map<String, String> getSwitchConfigByGroupName(String str) {
        if (listener != null) {
            return listener.b();
        }
        TBSdkLog.w(TAG, "[getSwitchConfigByGroupName] MtopConfigListener is null");
        return null;
    }
}

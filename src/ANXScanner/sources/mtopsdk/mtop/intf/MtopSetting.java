package mtopsdk.mtop.intf;

import mtopsdk.common.a.a;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.SwitchConfigUtil;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.features.MtopFeatureManager;
import mtopsdk.mtop.features.MtopFeatureManager.MtopFeatureEnum;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.mtop.global.SwitchConfig;
import mtopsdk.mtop.util.MtopProxyConstant;

public final class MtopSetting {
    private static final String TAG = "mtopsdk.MtopSetting";
    private static SDKConfig sdkConfig = SDKConfig.getInstance();

    private MtopSetting() {
    }

    public static void setAppKeyIndex(int i, int i2) {
        sdkConfig.setGlobalOnlineAppKeyIndex(i);
        sdkConfig.setGlobalDailyAppKeyIndex(i2);
    }

    public static void setAuthCode(String str) {
        sdkConfig.setGlobalAuthCode(str);
    }

    public static void setAppVersion(String str) {
        sdkConfig.setGlobalAppVersion(str);
    }

    public static void setMtopDomain(String str, String str2, String str3) {
        if (StringUtils.isNotBlank(str)) {
            MtopProxyConstant.defaultEnvBaseUrls[0] = str + "/";
        }
        if (StringUtils.isNotBlank(str2)) {
            MtopProxyConstant.defaultEnvBaseUrls[1] = str2 + "/";
        }
        if (StringUtils.isNotBlank(str3)) {
            MtopProxyConstant.defaultEnvBaseUrls[2] = str3 + "/";
        }
    }

    public static void setMtopFeatureFlag(MtopFeatureEnum mtopFeatureEnum, boolean z) {
        MtopFeatureManager.setMtopFeatureFlag(mtopFeatureEnum, z);
    }

    public static void setMtopConfigListener(a aVar) {
        SwitchConfig.getInstance().setMtopConfigListener(aVar);
        SwitchConfigUtil.setMtopConfigListener(aVar);
        TBSdkLog.d(TAG, "[setMtopConfigListener] set setMtopConfigListener succeed.");
    }

    public static void setISecurityBodyDataEx$22281d6e(a aVar) {
        sdkConfig.setGlobalSecurityBodyDataEx$7df5f4c5(aVar);
    }
}

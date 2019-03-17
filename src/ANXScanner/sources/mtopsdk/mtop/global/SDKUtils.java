package mtopsdk.mtop.global;

import com.ali.auth.third.login.LoginConstants;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.xstate.XState;

public class SDKUtils {
    private static final String TAG = "mtopsdk.SDKUtils";
    private static SDKConfig sdkConfig = SDKConfig.getInstance();

    public static long getCorrectionTime() {
        return getTimeOffset() + (System.currentTimeMillis() / 1000);
    }

    public static long getCorrectionTimeMillis() {
        return getCorrectionTime() * 1000;
    }

    public static long getTimeOffset() {
        String timeOffset = XState.getTimeOffset();
        long j = 0;
        if (StringUtils.isNotBlank(timeOffset)) {
            try {
                return Long.parseLong(timeOffset);
            } catch (NumberFormatException e) {
                TBSdkLog.e(TAG, "[getTimeOffset]parse t_offset failed");
                return j;
            }
        }
        XState.setValue("t_offset", "0");
        return j;
    }

    @Deprecated
    public static void registerSessionInfo(String str, @Deprecated String str2, String str3) {
        registerSessionInfo(str, str3);
    }

    public static void registerSessionInfo(String str, String str2) {
        XState.setValue(LoginConstants.SID, str);
        XState.setValue("uid", str2);
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            StringBuilder stringBuilder = new StringBuilder("[registerSessionInfo]register sessionInfo succeed");
            stringBuilder.append(",sid=").append(str);
            stringBuilder.append(",uid=").append(str2);
            TBSdkLog.i(TAG, stringBuilder.toString());
        }
    }

    public static void registerLat(String str) {
        XState.setValue("lat", str);
    }

    public static void registerLng(String str) {
        XState.setValue("lng", str);
    }

    public static void registerDeviceId(String str) {
        if (str != null) {
            sdkConfig.setGlobalDeviceId(str);
        }
    }

    public static void registerTtid(String str) {
        if (str != null) {
            sdkConfig.setGlobalTtid(str);
        }
    }

    public static void registerUtdid(String str) {
        if (str != null) {
            sdkConfig.setGlobalUtdid(str);
        }
    }

    public static void logOut() {
        XState.removeKey(LoginConstants.SID);
        XState.removeKey("uid");
        TBSdkLog.i(TAG, "[logOut] remove sessionInfo succeed.");
    }
}

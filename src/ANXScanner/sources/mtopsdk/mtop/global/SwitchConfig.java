package mtopsdk.mtop.global;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import mtopsdk.common.a.a;
import mtopsdk.common.util.LocalConfig;
import mtopsdk.common.util.RemoteConfig;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;

public class SwitchConfig {
    private static final String TAG = "mtopsdk.SwitchConfig";
    private static long apiLockInterval = 10;
    private static final SwitchConfig config = new SwitchConfig();
    private static Map<String, String> individualApiLockIntervalMap = new ConcurrentHashMap();
    private static final LocalConfig localConfig = LocalConfig.getInstance();
    private static a mtopConfigListener = null;
    private static final RemoteConfig remoteConfig = RemoteConfig.getInstance();

    private SwitchConfig() {
    }

    public static SwitchConfig getInstance() {
        return config;
    }

    public void initConfig(Context context) {
        if (mtopConfigListener != null) {
            a aVar = mtopConfigListener;
        }
    }

    public void setMtopConfigListener(a aVar) {
        mtopConfigListener = aVar;
    }

    public static a getMtopConfigListener() {
        return mtopConfigListener;
    }

    public boolean isGlobalSpdySwitchOpen() {
        return localConfig.enableSpdy && remoteConfig.enableSpdy;
    }

    public SwitchConfig setGlobalSpdySwitchOpen(boolean z) {
        localConfig.enableSpdy = z;
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setGlobalSpdySwitchOpen]set local spdySwitchOpen=" + z);
        }
        return this;
    }

    public boolean isGlobalSpdySslSwitchOpen() {
        return localConfig.enableSsl && remoteConfig.enableSsl;
    }

    public SwitchConfig setGlobalSpdySslSwitchOpen(boolean z) {
        localConfig.enableSsl = z;
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setGlobalSpdySslSwitchOpen]set local spdySslSwitchOpen=" + z);
        }
        return this;
    }

    public long getGlobalApiLockInterval() {
        long j = remoteConfig.apiLockInterval;
        apiLockInterval = j;
        return j;
    }

    public boolean isGlobalUnitSwitchOpen() {
        return localConfig.enableUnit && remoteConfig.enableUnit;
    }

    public SwitchConfig setGlobalUnitSwitchOpen(boolean z) {
        localConfig.enableUnit = z;
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setGlobalUnitSwitchOpen]set local unitSwitchOpen=" + z);
        }
        return this;
    }

    public Map<String, String> getIndividualApiLockIntervalMap() {
        return individualApiLockIntervalMap;
    }

    public long getIndividualApiLockInterval(String str) {
        if (StringUtils.isBlank(str)) {
            return 0;
        }
        String str2 = (String) individualApiLockIntervalMap.get(str);
        if (StringUtils.isBlank(str2)) {
            return 0;
        }
        long parseLong;
        try {
            parseLong = Long.parseLong(str2);
        } catch (Exception e) {
            TBSdkLog.e(TAG, "[getIndividualApiLockInterval]parse individual apiLock interval error.apiKey=" + str + " ---" + e.toString());
            parseLong = 0;
        }
        return parseLong;
    }
}

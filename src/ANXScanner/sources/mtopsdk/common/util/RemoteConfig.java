package mtopsdk.common.util;

import java.util.Map;
import mtopsdk.common.util.TBSdkLog.LogEnable;

public class RemoteConfig {
    private static final String TAG = "mtopsdk.RemoteConfig";
    public long apiLockInterval;
    private Map<String, String> configItemsMap;
    public boolean enableSpdy;
    public boolean enableSsl;
    public boolean enableUnit;
    public String individualApiLockInterval;

    static class RemoteConfigInstanceHolder {
        private static RemoteConfig instance = new RemoteConfig();

        private RemoteConfigInstanceHolder() {
        }
    }

    public static RemoteConfig getInstance() {
        return RemoteConfigInstanceHolder.instance;
    }

    private RemoteConfig() {
        this.configItemsMap = null;
        this.enableSpdy = true;
        this.enableUnit = true;
        this.enableSsl = true;
        this.apiLockInterval = 10;
        this.individualApiLockInterval = "";
    }

    public void updateRemoteConfig() {
        this.configItemsMap = SwitchConfigUtil.getSwitchConfigByGroupName(SwitchConfigUtil.CONFIG_GROUP_MTOPSDK_ANDROID_SWITCH);
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[updateRemoteConfig] configItemsMap=" + this.configItemsMap);
        }
        if (this.configItemsMap != null) {
            setEnableSpdy();
            setEnableUnit();
            setEnableSsl();
            setApiLockInterval();
            setOtherConfigItemKey();
        }
    }

    private void setEnableSpdy() {
        String configItemByKey = getConfigItemByKey(SwitchConfigUtil.ENABLE_SPDY_KEY, "true");
        if ("true".equals(configItemByKey)) {
            this.enableSpdy = true;
        } else {
            this.enableSpdy = false;
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setEnableSpdy]remote spdySwitchConfig=" + configItemByKey + ",enableSpdy=" + this.enableSpdy);
        }
    }

    private void setEnableUnit() {
        String configItemByKey = getConfigItemByKey(SwitchConfigUtil.ENABLE_UNIT_KEY, "true");
        if ("true".equalsIgnoreCase(configItemByKey)) {
            this.enableUnit = true;
        } else {
            this.enableUnit = false;
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setEnableUnit]remote unitSwitchConfig=" + configItemByKey + ",enableUnit=" + this.enableUnit);
        }
    }

    private void setEnableSsl() {
        String configItemByKey = getConfigItemByKey(SwitchConfigUtil.ENABLE_SSL_KEY, "true");
        if ("true".equals(configItemByKey)) {
            this.enableSsl = true;
        } else {
            this.enableSsl = false;
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setEnableSsl]remote spdySslSwitchConfig=" + configItemByKey + ",enableSsl=" + this.enableSsl);
        }
    }

    private void setApiLockInterval() {
        String configItemByKey = getConfigItemByKey(SwitchConfigUtil.API_LOCK_INTERVAL_KEY, null);
        if (StringUtils.isNotBlank(configItemByKey)) {
            try {
                this.apiLockInterval = Long.parseLong(configItemByKey);
            } catch (Exception e) {
                TBSdkLog.e(TAG, "[setApiLockInterval]parse apiLockIntervalConfig error,apiLockIntervalConfig=" + configItemByKey);
            }
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setApiLockInterval]remote apiLockIntervalConfig=" + configItemByKey + ",apiLockInterval=" + this.apiLockInterval);
        }
    }

    public void updateUploadRemoteConfig() {
        Map switchConfigByGroupName = SwitchConfigUtil.getSwitchConfigByGroupName(SwitchConfigUtil.CONFIG_GROUP_MTOPSDK_UPLOAD_SWITCH);
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[updateUploadRemoteConfig] uploadConfigItemsMap=" + switchConfigByGroupName);
        }
        if (switchConfigByGroupName == null) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:9:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:10:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private String getConfigItemByKey(String str, String str2) {
        String str3;
        try {
            if (this.configItemsMap != null) {
                str3 = (String) this.configItemsMap.get(str);
                if (str3 != null) {
                    return str2;
                }
                return str3;
            }
        } catch (Throwable e) {
            TBSdkLog.w(TAG, "[getSwitchConfig] get config item error; key=" + str, e);
        }
        str3 = null;
        if (str3 != null) {
        }
    }

    private void setOtherConfigItemKey() {
        this.individualApiLockInterval = getConfigItemByKey(SwitchConfigUtil.INDIVIDUAL_API_LOCK_INTERVAL_KEY, "");
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            StringBuilder stringBuilder = new StringBuilder("[setOtherConfigItemKey]");
            stringBuilder.append(", individualApiLockInterval =").append(this.individualApiLockInterval);
            TBSdkLog.i(TAG, stringBuilder.toString());
        }
    }
}

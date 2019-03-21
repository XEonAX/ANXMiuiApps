package com.xiaomi.mipush.sdk;

import com.xiaomi.xmpush.thrift.ConfigKey;
import java.util.HashMap;

public class AssemblePushInfoHelper {
    private static HashMap<AssemblePush, ManageClassInfo> mHashMaps = new HashMap();

    static class ManageClassInfo {
        public String className;
        public String methodName;

        public ManageClassInfo(String className, String methodName) {
            this.className = className;
            this.methodName = methodName;
        }
    }

    static {
        add(AssemblePush.ASSEMBLE_PUSH_HUAWEI, new ManageClassInfo("com.xiaomi.assemble.control.HmsPushManager", "newInstance"));
        add(AssemblePush.ASSEMBLE_PUSH_FCM, new ManageClassInfo("com.xiaomi.assemble.control.FCMPushManager", "newInstance"));
        add(AssemblePush.ASSEMBLE_PUSH_COS, new ManageClassInfo("com.xiaomi.assemble.control.COSPushManager", "newInstance"));
    }

    private static void add(AssemblePush type, ManageClassInfo info) {
        if (info != null) {
            mHashMaps.put(type, info);
        }
    }

    public static ManageClassInfo getManageClassInfoByType(AssemblePush type) {
        return (ManageClassInfo) mHashMaps.get(type);
    }

    public static ConfigKey getConfigKeyByType(AssemblePush type) {
        return ConfigKey.AggregatePushSwitch;
    }

    public static RetryType getRetryType(AssemblePush type) {
        switch (type) {
            case ASSEMBLE_PUSH_HUAWEI:
                return RetryType.UPLOAD_HUAWEI_TOKEN;
            case ASSEMBLE_PUSH_FCM:
                return RetryType.UPLOAD_FCM_TOKEN;
            case ASSEMBLE_PUSH_COS:
                return RetryType.UPLOAD_COS_TOKEN;
            default:
                return null;
        }
    }
}

package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.push.service.PushConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class ManifestChecker {

    public static class IllegalManifestException extends RuntimeException {
        private static final long serialVersionUID = 1;

        public IllegalManifestException(String message) {
            super(message);
        }
    }

    public static class ServiceCheckInfo {
        public boolean enabled;
        public boolean exported;
        public String permission;
        public String serviceName;

        public ServiceCheckInfo(String serviceName, boolean enabled, boolean exported, String permission) {
            this.serviceName = serviceName;
            this.enabled = enabled;
            this.exported = exported;
            this.permission = permission;
        }
    }

    public static void asynCheckManifest(final Context context) {
        new Thread(new Runnable() {
            public void run() {
                try {
                    PackageInfo pkgInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4612);
                    ManifestChecker.checkReceivers(context);
                    ManifestChecker.checkServices(context, pkgInfo);
                    ManifestChecker.checkPermissions(context, pkgInfo);
                } catch (Throwable e) {
                    Log.e("ManifestChecker", "", e);
                }
            }
        }).start();
    }

    private static void checkPermissions(Context context, PackageInfo pkgInfo) {
        Set<String> requiredPermsSet = new HashSet();
        requiredPermsSet.addAll(Arrays.asList(new String[]{"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", context.getPackageName() + ".permission.MIPUSH_RECEIVE", "android.permission.ACCESS_WIFI_STATE", "android.permission.READ_PHONE_STATE", "android.permission.GET_TASKS", "android.permission.VIBRATE"}));
        boolean isDefined = false;
        if (pkgInfo.permissions != null) {
            for (PermissionInfo pinfo : pkgInfo.permissions) {
                if (selfDefinedPerm.equals(pinfo.name)) {
                    isDefined = true;
                    break;
                }
            }
        }
        if (isDefined) {
            if (pkgInfo.requestedPermissions != null) {
                for (String permName : pkgInfo.requestedPermissions) {
                    if (!TextUtils.isEmpty(permName) && requiredPermsSet.contains(permName)) {
                        requiredPermsSet.remove(permName);
                        if (requiredPermsSet.isEmpty()) {
                            break;
                        }
                    }
                }
            }
            if (!requiredPermsSet.isEmpty()) {
                throw new IllegalManifestException(String.format("<uses-permission android:name=\"%1$s\"/> is missing in AndroidManifest.", new Object[]{requiredPermsSet.iterator().next()}));
            }
            return;
        }
        throw new IllegalManifestException(String.format("<permission android:name=\"%1$s\" .../> is undefined in AndroidManifest.", new Object[]{selfDefinedPerm}));
    }

    /* JADX WARNING: Missing block: B:3:0x0051, code:
            if (containAnyService(r14, new java.lang.String[]{"com.xiaomi.push.service.XMJobService", "com.xiaomi.push.service.XMPushService"}) != false) goto L_0x0053;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void checkServices(Context context, PackageInfo pkgInfo) {
        Map<String, String> configServiceProcessMap = new HashMap();
        Map<String, ServiceCheckInfo> requiredServicesMap = new HashMap();
        requiredServicesMap.put(PushMessageHandler.class.getCanonicalName(), new ServiceCheckInfo(PushMessageHandler.class.getCanonicalName(), true, true, ""));
        requiredServicesMap.put(MessageHandleService.class.getCanonicalName(), new ServiceCheckInfo(MessageHandleService.class.getCanonicalName(), true, false, ""));
        if (MiPushClient.shouldUseMIUIPush(context)) {
        }
        requiredServicesMap.put("com.xiaomi.push.service.XMJobService", new ServiceCheckInfo("com.xiaomi.push.service.XMJobService", true, false, "android.permission.BIND_JOB_SERVICE"));
        requiredServicesMap.put("com.xiaomi.push.service.XMPushService", new ServiceCheckInfo("com.xiaomi.push.service.XMPushService", true, false, ""));
        if (MiPushClient.getOpenFCMPush()) {
            requiredServicesMap.put("com.xiaomi.assemble.control.MiFireBaseInstanceIdService", new ServiceCheckInfo("com.xiaomi.assemble.control.MiFireBaseInstanceIdService", true, false, ""));
            requiredServicesMap.put("com.xiaomi.assemble.control.MiFirebaseMessagingService", new ServiceCheckInfo("com.xiaomi.assemble.control.MiFirebaseMessagingService", true, false, ""));
        }
        if (MiPushClient.getOpenOPPOPush()) {
            requiredServicesMap.put("com.xiaomi.assemble.control.COSPushMessageService", new ServiceCheckInfo("com.xiaomi.assemble.control.COSPushMessageService", true, true, "com.coloros.mcs.permission.SEND_MCS_MESSAGE"));
        }
        if (pkgInfo.services != null) {
            for (ServiceInfo info : pkgInfo.services) {
                if (!TextUtils.isEmpty(info.name) && requiredServicesMap.containsKey(info.name)) {
                    ServiceCheckInfo checkInfo = (ServiceCheckInfo) requiredServicesMap.remove(info.name);
                    boolean enabled = checkInfo.enabled;
                    boolean exported = checkInfo.exported;
                    String permission = checkInfo.permission;
                    if (enabled != info.enabled) {
                        throw new IllegalManifestException(String.format("<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b.", new Object[]{info.name, Boolean.valueOf(enabled)}));
                    } else if (exported != info.exported) {
                        throw new IllegalManifestException(String.format("<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b.", new Object[]{info.name, Boolean.valueOf(exported)}));
                    } else if (TextUtils.isEmpty(permission) || TextUtils.equals(permission, info.permission)) {
                        configServiceProcessMap.put(info.name, info.processName);
                        if (requiredServicesMap.isEmpty()) {
                            break;
                        }
                    } else {
                        throw new IllegalManifestException(String.format("<service android:name=\"%1$s\" .../> in AndroidManifest had the wrong permission attribute, which should be android:permission=\"%2$s\".", new Object[]{info.name, permission}));
                    }
                }
            }
        }
        if (!requiredServicesMap.isEmpty()) {
            throw new IllegalManifestException(String.format("<service android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest.", new Object[]{requiredServicesMap.keySet().iterator().next()}));
        } else if (!TextUtils.equals((CharSequence) configServiceProcessMap.get(PushMessageHandler.class.getCanonicalName()), (CharSequence) configServiceProcessMap.get(MessageHandleService.class.getCanonicalName()))) {
            throw new IllegalManifestException(String.format("\"%1$s\" and \"%2$s\" must be running in the same process.", new Object[]{PushMessageHandler.class.getCanonicalName(), MessageHandleService.class.getCanonicalName()}));
        } else if (configServiceProcessMap.containsKey("com.xiaomi.push.service.XMJobService") && configServiceProcessMap.containsKey("com.xiaomi.push.service.XMPushService") && !TextUtils.equals((CharSequence) configServiceProcessMap.get("com.xiaomi.push.service.XMJobService"), (CharSequence) configServiceProcessMap.get("com.xiaomi.push.service.XMPushService"))) {
            throw new IllegalManifestException(String.format("\"%1$s\" and \"%2$s\" must be running in the same process.", new Object[]{"com.xiaomi.push.service.XMJobService", "com.xiaomi.push.service.XMPushService"}));
        }
    }

    private static boolean containAnyService(PackageInfo pkgInfo, String[] serviceNames) {
        for (ServiceInfo info : pkgInfo.services) {
            if (containString(serviceNames, info.name)) {
                return true;
            }
        }
        return false;
    }

    private static boolean containString(String[] array, String str) {
        if (array == null || str == null) {
            return false;
        }
        for (String item : array) {
            if (TextUtils.equals(item, str)) {
                return true;
            }
        }
        return false;
    }

    private static ActivityInfo findReceiverInfo(PackageManager manager, Intent intent, Class<?> cls) {
        for (ResolveInfo r : manager.queryBroadcastReceivers(intent, 16384)) {
            ActivityInfo info = r.activityInfo;
            if (info != null && cls.getCanonicalName().equals(info.name)) {
                return info;
            }
        }
        return null;
    }

    private static void checkReceiverInfo(ActivityInfo info, Boolean[] properties) {
        if (properties[0].booleanValue() != info.enabled) {
            throw new IllegalManifestException(String.format("<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong enabled attribute, which should be android:enabled=%2$b.", new Object[]{info.name, properties[0]}));
        } else if (properties[1].booleanValue() != info.exported) {
            throw new IllegalManifestException(String.format("<receiver android:name=\"%1$s\" .../> in AndroidManifest had the wrong exported attribute, which should be android:exported=%2$b.", new Object[]{info.name, properties[1]}));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x0051 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x007e A:{SYNTHETIC, EDGE_INSN: B:39:0x007e->B:23:0x007e ?: BREAK  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void checkReceivers(Context context) {
        ActivityInfo info;
        PackageManager pkgManager = context.getPackageManager();
        String pkgname = context.getPackageName();
        Intent intent = new Intent(PushConstants.ACTION_PING_TIMER);
        intent.setPackage(pkgname);
        try {
            info = findReceiverInfo(pkgManager, intent, Class.forName("com.xiaomi.push.service.receivers.PingReceiver"));
            if (MiPushClient.shouldUseMIUIPush(context)) {
                if (info != null) {
                    checkReceiverInfo(info, new Boolean[]{Boolean.valueOf(true), Boolean.valueOf(false)});
                }
            } else if (info == null) {
                throw new IllegalManifestException(String.format("<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest.", new Object[]{"com.xiaomi.push.service.receivers.PingReceiver"}));
            } else {
                checkReceiverInfo(info, new Boolean[]{Boolean.valueOf(true), Boolean.valueOf(false)});
            }
        } catch (Throwable ex) {
            MyLog.e(ex);
        }
        intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        intent.setPackage(pkgname);
        boolean isFound = false;
        for (ResolveInfo r : pkgManager.queryBroadcastReceivers(intent, 16384)) {
            info = r.activityInfo;
            if (info != null) {
                try {
                    if (!TextUtils.isEmpty(info.name) && PushMessageReceiver.class.isAssignableFrom(Class.forName(info.name)) && info.enabled) {
                        isFound = true;
                        if (!isFound) {
                            break;
                        }
                    }
                } catch (Throwable e) {
                    MyLog.e(e);
                }
            }
            isFound = false;
            if (!isFound) {
            }
        }
        if (!isFound) {
            throw new IllegalManifestException("Receiver: none of the subclasses of PushMessageReceiver is enabled or defined.");
        } else if (MiPushClient.getOpenHmsPush()) {
            checkHmsReceiver(context, "com.huawei.android.push.intent.RECEIVE", "com.xiaomi.assemble.control.HmsPushReceiver");
            checkHmsReceiver(context, "com.huawei.intent.action.PUSH", "com.huawei.hms.support.api.push.PushEventReceiver");
        }
    }

    private static void checkHmsReceiver(Context context, String action, String className) {
        PackageManager pkgManager = context.getPackageManager();
        String pkgName = context.getPackageName();
        Intent intent = new Intent(action);
        intent.setPackage(pkgName);
        boolean isHave = false;
        for (ResolveInfo r : pkgManager.queryBroadcastReceivers(intent, 16384)) {
            ActivityInfo info = r.activityInfo;
            if (info == null || TextUtils.isEmpty(info.name) || !info.name.equals(className)) {
                isHave = false;
                continue;
            } else {
                isHave = true;
                continue;
            }
            if (isHave) {
                break;
            }
        }
        if (!isHave) {
            throw new IllegalManifestException(String.format("<receiver android:name=\"%1$s\" .../> is missing or disabled in AndroidManifest.", new Object[]{className}));
        }
    }
}

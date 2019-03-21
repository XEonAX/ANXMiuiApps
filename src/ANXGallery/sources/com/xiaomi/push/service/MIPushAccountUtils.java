package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.android.MIUIUtils;
import com.xiaomi.channel.commonutils.android.Region;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.BuildSettings;
import com.xiaomi.channel.commonutils.network.HttpResponse;
import com.xiaomi.channel.commonutils.network.Network;
import com.xiaomi.channel.commonutils.string.XMStringUtils;
import com.xiaomi.smack.ConnectionConfiguration;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class MIPushAccountUtils {
    private static PushAccountChangeListener accountChangeListener;
    private static MIPushAccount sAccount;

    public interface PushAccountChangeListener {
        void onChange();
    }

    public static synchronized MIPushAccount getMIPushAccount(Context context) {
        MIPushAccount mIPushAccount = null;
        synchronized (MIPushAccountUtils.class) {
            if (sAccount != null) {
                mIPushAccount = sAccount;
            } else {
                SharedPreferences sp = context.getSharedPreferences("mipush_account", 0);
                String uuid = sp.getString(nexExportFormat.TAG_FORMAT_UUID, null);
                String token = sp.getString("token", null);
                String security = sp.getString("security", null);
                String appId = sp.getString("app_id", null);
                String appToken = sp.getString("app_token", null);
                String packageName = sp.getString("package_name", null);
                String deviceId = sp.getString("device_id", null);
                int envType = sp.getInt("env_type", 1);
                if (!TextUtils.isEmpty(deviceId) && deviceId.startsWith("a-")) {
                    deviceId = DeviceInfo.getSimpleDeviceId(context);
                    sp.edit().putString("device_id", deviceId).commit();
                }
                if (!(TextUtils.isEmpty(uuid) || TextUtils.isEmpty(token) || TextUtils.isEmpty(security))) {
                    String currentDeviceId = DeviceInfo.getSimpleDeviceId(context);
                    if ("com.xiaomi.xmsf".equals(context.getPackageName()) || TextUtils.isEmpty(currentDeviceId) || TextUtils.isEmpty(deviceId) || deviceId.equals(currentDeviceId)) {
                        sAccount = new MIPushAccount(uuid, token, security, appId, appToken, packageName, envType);
                        mIPushAccount = sAccount;
                    } else {
                        MyLog.e("erase the old account.");
                        clearAccount(context);
                    }
                }
            }
        }
        return mIPushAccount;
    }

    public static synchronized MIPushAccount register(Context context, String packageName, String appId, String appToken) throws IOException, JSONException {
        MIPushAccount account;
        synchronized (MIPushAccountUtils.class) {
            String finalAppId;
            String finalAppToken;
            String finalPackageName;
            Map<String, String> params = new TreeMap();
            params.put("devid", DeviceInfo.getDeviceId(context, false));
            params.put("devid1", DeviceInfo.getDeviceId1(context));
            String res = null;
            if (!(sAccount == null || TextUtils.isEmpty(sAccount.account))) {
                params.put(nexExportFormat.TAG_FORMAT_UUID, sAccount.account);
                int index = sAccount.account.lastIndexOf("/");
                if (index != -1) {
                    res = sAccount.account.substring(index + 1);
                }
            }
            String vdevid = DeviceInfo.getVirtDevId(context);
            if (vdevid != null) {
                params.put("vdevid", vdevid);
            }
            String gaid = DeviceInfo.getGaid(context);
            if (!TextUtils.isEmpty(gaid)) {
                params.put("gaid", gaid);
            }
            if (isMIUIPush(context)) {
                finalAppId = "1000271";
            } else {
                finalAppId = appId;
            }
            if (isMIUIPush(context)) {
                finalAppToken = "420100086271";
            } else {
                finalAppToken = appToken;
            }
            if (isMIUIPush(context)) {
                finalPackageName = "com.xiaomi.xmsf";
            } else {
                finalPackageName = packageName;
            }
            params.put("appid", finalAppId);
            params.put("apptoken", finalAppToken);
            PackageInfo info = null;
            try {
                info = context.getPackageManager().getPackageInfo(finalPackageName, 16384);
            } catch (Throwable e) {
                MyLog.e(e);
            }
            params.put("appversion", info != null ? String.valueOf(info.versionCode) : "0");
            params.put("sdkversion", Integer.toString(30611));
            params.put("packagename", finalPackageName);
            params.put("model", Build.MODEL);
            params.put("board", Build.BOARD);
            if (!MIUIUtils.isGDPREnable()) {
                String imeiMd5 = "";
                String imei = DeviceInfo.blockingGetIMEI(context);
                if (!TextUtils.isEmpty(imei)) {
                    imeiMd5 = imeiMd5 + XMStringUtils.getMd5Digest(imei);
                }
                String subImeisMd5 = DeviceInfo.blockingGetSubIMEISMd5(context);
                if (!(TextUtils.isEmpty(imeiMd5) || TextUtils.isEmpty(subImeisMd5))) {
                    imeiMd5 = imeiMd5 + "," + subImeisMd5;
                }
                if (!TextUtils.isEmpty(imeiMd5)) {
                    params.put("imei_md5", imeiMd5);
                }
            }
            params.put("os", VERSION.RELEASE + "-" + VERSION.INCREMENTAL);
            int spaceId = DeviceInfo.getSpaceId();
            if (spaceId >= 0) {
                params.put("space_id", Integer.toString(spaceId));
            }
            String macAddress = DeviceInfo.getMacAddress(context);
            if (!TextUtils.isEmpty(macAddress)) {
                params.put("mac_address", XMStringUtils.getMd5Digest(macAddress));
            }
            params.put("android_id", DeviceInfo.getAndroidId(context));
            params.put("brand", Build.BRAND + "");
            HttpResponse httpResponse = Network.doHttpPost(context, getAccountURL(context), params);
            String result = "";
            if (httpResponse != null) {
                result = httpResponse.getResponseString();
            }
            if (!TextUtils.isEmpty(result)) {
                JSONObject jSONObject = new JSONObject(result);
                if (jSONObject.getInt("code") == 0) {
                    JSONObject data = jSONObject.getJSONObject("data");
                    String ssecurity = data.getString("ssecurity");
                    String token = data.getString("token");
                    String userId = data.getString("userId");
                    if (TextUtils.isEmpty(res)) {
                        res = "an" + XMStringUtils.generateRandomString(6);
                    }
                    account = new MIPushAccount(userId + "@xiaomi.com/" + res, token, ssecurity, finalAppId, finalAppToken, finalPackageName, BuildSettings.getEnvType());
                    persist(context, account);
                    DeviceInfo.updateVirtDevId(context, data.optString("vdevid"));
                    sAccount = account;
                } else {
                    MIPushClientManager.notifyRegisterError(context, jSONObject.getInt("code"), jSONObject.optString("description"));
                    MyLog.w(result);
                }
            }
            account = null;
        }
        return account;
    }

    public static String getAccountURL(Context context) {
        String appRegion = AppRegionStorage.getInstance(context).getRegion();
        String path = "/pass/v2/register";
        if (BuildSettings.IsOneBoxBuild()) {
            return "http://" + ConnectionConfiguration.XMPP_SERVER_HOST_ONEBOX + ":9085" + path;
        }
        if (Region.Global.name().equals(appRegion)) {
            return "https://register.xmpush.global.xiaomi.com" + path;
        }
        if (Region.Europe.name().equals(appRegion)) {
            return "https://fr.register.xmpush.global.xiaomi.com" + path;
        }
        if (Region.Russia.name().equals(appRegion)) {
            return "https://ru.register.xmpush.global.xiaomi.com" + path;
        }
        if (Region.India.name().equals(appRegion)) {
            return "https://idmb.register.xmpush.global.xiaomi.com" + path;
        }
        return "https://" + (BuildSettings.IsSandBoxBuild() ? "sandbox.xmpush.xiaomi.com" : "register.xmpush.xiaomi.com") + path;
    }

    private static boolean isMIUIPush(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }

    public static void persist(Context context, MIPushAccount pushAccount) {
        Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putString(nexExportFormat.TAG_FORMAT_UUID, pushAccount.account);
        edit.putString("security", pushAccount.security);
        edit.putString("token", pushAccount.token);
        edit.putString("app_id", pushAccount.appId);
        edit.putString("package_name", pushAccount.packageName);
        edit.putString("app_token", pushAccount.appToken);
        edit.putString("device_id", DeviceInfo.getSimpleDeviceId(context));
        edit.putInt("env_type", pushAccount.envType);
        edit.commit();
        notifyAccountChange();
    }

    public static void clearAccount(Context context) {
        context.getSharedPreferences("mipush_account", 0).edit().clear().commit();
        sAccount = null;
        notifyAccountChange();
    }

    public static void setAccountChangeListener(PushAccountChangeListener listener) {
        accountChangeListener = listener;
    }

    public static void notifyAccountChange() {
        if (accountChangeListener != null) {
            accountChangeListener.onChange();
        }
    }
}

package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.AppInfoUtils;
import com.xiaomi.channel.commonutils.android.DeviceInfo;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class AppInfoHolder {
    private static volatile AppInfoHolder sInstance;
    String appRegRequestId;
    private Context mContext;
    private Map<String, ClientInfoData> mHybridAppInfoCache;
    private ClientInfoData mInfoData;

    public static class ClientInfoData {
        public String appID;
        public String appRegion;
        public String appToken;
        public String deviceId;
        public int envType = 1;
        public boolean isPaused = false;
        public boolean isValid = true;
        private Context mContext;
        public String regID;
        public String regResource;
        public String regSecret;
        public String versionName;

        public ClientInfoData(Context context) {
            this.mContext = context;
        }

        public void setIdAndToken(String appId, String appToken, String regResource) {
            this.appID = appId;
            this.appToken = appToken;
            this.regResource = regResource;
            Editor editor = AppInfoHolder.getSharedPreferences(this.mContext).edit();
            editor.putString("appId", this.appID);
            editor.putString("appToken", appToken);
            editor.putString("regResource", regResource);
            editor.commit();
        }

        public void setRegIdAndSecret(String regID, String regSecret, String appRegion) {
            this.regID = regID;
            this.regSecret = regSecret;
            this.deviceId = DeviceInfo.getSimpleDeviceId(this.mContext);
            this.versionName = getVersionName();
            this.isValid = true;
            this.appRegion = appRegion;
            Editor editor = AppInfoHolder.getSharedPreferences(this.mContext).edit();
            editor.putString("regId", regID);
            editor.putString("regSec", regSecret);
            editor.putString("devId", this.deviceId);
            editor.putString("vName", getVersionName());
            editor.putBoolean("valid", true);
            editor.putString("appRegion", appRegion);
            editor.commit();
        }

        public void setHybridRegIdAndSecret(String regID, String regSecret) {
            this.regID = regID;
            this.regSecret = regSecret;
            this.deviceId = DeviceInfo.getSimpleDeviceId(this.mContext);
            this.versionName = getVersionName();
            this.isValid = true;
        }

        public boolean isVaild(String appId, String appToken) {
            return TextUtils.equals(this.appID, appId) && TextUtils.equals(this.appToken, appToken) && !TextUtils.isEmpty(this.regID) && !TextUtils.isEmpty(this.regSecret) && TextUtils.equals(this.deviceId, DeviceInfo.getSimpleDeviceId(this.mContext));
        }

        public boolean isVaild() {
            return isVaild(this.appID, this.appToken);
        }

        private String getVersionName() {
            return AppInfoUtils.getVersionName(this.mContext, this.mContext.getPackageName());
        }

        public void clear() {
            AppInfoHolder.getSharedPreferences(this.mContext).edit().clear().commit();
            this.appID = null;
            this.appToken = null;
            this.regID = null;
            this.regSecret = null;
            this.deviceId = null;
            this.versionName = null;
            this.isValid = false;
            this.isPaused = false;
            this.appRegion = null;
            this.envType = 1;
        }

        public void setPaused(boolean paused) {
            this.isPaused = paused;
        }

        public void setEnvType(int type) {
            this.envType = type;
        }

        public void invalidate() {
            this.isValid = false;
            AppInfoHolder.getSharedPreferences(this.mContext).edit().putBoolean("valid", this.isValid).commit();
        }

        public static String toString(ClientInfoData clientInfoData) {
            try {
                JSONObject json = new JSONObject();
                json.put("appId", clientInfoData.appID);
                json.put("appToken", clientInfoData.appToken);
                json.put("regId", clientInfoData.regID);
                json.put("regSec", clientInfoData.regSecret);
                json.put("devId", clientInfoData.deviceId);
                json.put("vName", clientInfoData.versionName);
                json.put("valid", clientInfoData.isValid);
                json.put("paused", clientInfoData.isPaused);
                json.put("envType", clientInfoData.envType);
                json.put("regResource", clientInfoData.regResource);
                return json.toString();
            } catch (Throwable e) {
                MyLog.e(e);
                return null;
            }
        }
    }

    public static AppInfoHolder getInstance(Context context) {
        if (sInstance == null) {
            synchronized (AppInfoHolder.class) {
                if (sInstance == null) {
                    sInstance = new AppInfoHolder(context);
                }
            }
        }
        return sInstance;
    }

    private AppInfoHolder(Context context) {
        this.mContext = context;
        init();
    }

    private void init() {
        this.mInfoData = new ClientInfoData(this.mContext);
        this.mHybridAppInfoCache = new HashMap();
        SharedPreferences sp = getSharedPreferences(this.mContext);
        this.mInfoData.appID = sp.getString("appId", null);
        this.mInfoData.appToken = sp.getString("appToken", null);
        this.mInfoData.regID = sp.getString("regId", null);
        this.mInfoData.regSecret = sp.getString("regSec", null);
        this.mInfoData.deviceId = sp.getString("devId", null);
        if (!TextUtils.isEmpty(this.mInfoData.deviceId) && this.mInfoData.deviceId.startsWith("a-")) {
            this.mInfoData.deviceId = DeviceInfo.getSimpleDeviceId(this.mContext);
            sp.edit().putString("devId", this.mInfoData.deviceId).commit();
        }
        this.mInfoData.versionName = sp.getString("vName", null);
        this.mInfoData.isValid = sp.getBoolean("valid", true);
        this.mInfoData.isPaused = sp.getBoolean("paused", false);
        this.mInfoData.envType = sp.getInt("envType", 1);
        this.mInfoData.regResource = sp.getString("regResource", null);
        this.mInfoData.appRegion = sp.getString("appRegion", null);
    }

    public boolean checkVersionNameChanged() {
        return !TextUtils.equals(AppInfoUtils.getVersionName(this.mContext, this.mContext.getPackageName()), this.mInfoData.versionName);
    }

    public void updateVersionName(String version) {
        Editor editor = getSharedPreferences(this.mContext).edit();
        editor.putString("vName", version);
        editor.commit();
        this.mInfoData.versionName = version;
    }

    public boolean checkAppInfo() {
        if (this.mInfoData.isVaild()) {
            return true;
        }
        MyLog.w("Don't send message before initialization succeeded!");
        return false;
    }

    public String getAppID() {
        return this.mInfoData.appID;
    }

    public String getAppToken() {
        return this.mInfoData.appToken;
    }

    public String getRegID() {
        return this.mInfoData.regID;
    }

    public String getRegSecret() {
        return this.mInfoData.regSecret;
    }

    public String getRegResource() {
        return this.mInfoData.regResource;
    }

    public boolean appRegistered(String appID, String appToken) {
        return this.mInfoData.isVaild(appID, appToken);
    }

    public void putAppIDAndToken(String appID, String appToken, String regResource) {
        this.mInfoData.setIdAndToken(appID, appToken, regResource);
    }

    public void putRegIDAndSecret(String regID, String regSecret, String appRegion) {
        this.mInfoData.setRegIdAndSecret(regID, regSecret, appRegion);
    }

    public void clear() {
        this.mInfoData.clear();
    }

    public boolean appRegistered() {
        return this.mInfoData.isVaild();
    }

    public void saveHybridAppInfo(String appPackage, ClientInfoData clientInfoData) {
        this.mHybridAppInfoCache.put(appPackage, clientInfoData);
        String appInfoStr = ClientInfoData.toString(clientInfoData);
        getSharedPreferences(this.mContext).edit().putString("hybrid_app_info_" + appPackage, appInfoStr).commit();
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences("mipush", 0);
    }

    public void invalidate() {
        this.mInfoData.invalidate();
    }

    public boolean isPaused() {
        return this.mInfoData.isPaused;
    }

    public int getEnvType() {
        return this.mInfoData.envType;
    }

    public void setPaused(boolean paused) {
        this.mInfoData.setPaused(paused);
        getSharedPreferences(this.mContext).edit().putBoolean("paused", paused).commit();
    }

    public void setEnvType(int type) {
        this.mInfoData.setEnvType(type);
        getSharedPreferences(this.mContext).edit().putInt("envType", type).commit();
    }

    public boolean invalidated() {
        return !this.mInfoData.isValid;
    }
}

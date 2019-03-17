package mtopsdk.mtop.global;

import android.content.Context;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import mtopsdk.common.a.a;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.domain.EnvModeEnum;
import mtopsdk.mtop.util.MtopSDKThreadPoolExecutorFactory;
import mtopsdk.network.Call.Factory;
import mtopsdk.network.DefaultCallFactory;
import mtopsdk.xstate.XState;

public class SDKConfig {
    private static final String TAG = "mtopsdk.SDKConfig";
    private static String appKey;
    private static String appVersion;
    private static String authCode;
    private static Factory callFactory = new DefaultCallFactory(MtopSDKThreadPoolExecutorFactory.getRequestThreadPoolExecutor());
    private static final SDKConfig config = new SDKConfig();
    private static Context context;
    private static int dailyAppkeyIndex = 0;
    private static String deviceId;
    private static EnvModeEnum envMode = EnvModeEnum.ONLINE;
    private static int onlineAppKeyIndex = 0;
    private static a securityBodyDataEx$2bbb0a39;
    private static mtopsdk.a.a sign;
    private static String ttid;
    private static String utdid;
    private Lock updateUnitInfolock = new ReentrantLock();

    private SDKConfig() {
    }

    public static SDKConfig getInstance() {
        return config;
    }

    public Context getGlobalContext() {
        return context;
    }

    public SDKConfig setGlobalContext(Context context) {
        if (context != null) {
            context = context.getApplicationContext();
        }
        return this;
    }

    public mtopsdk.a.a getGlobalSign() {
        return sign;
    }

    public SDKConfig setGlobalSign(mtopsdk.a.a aVar) {
        sign = aVar;
        return this;
    }

    public int getGlobalDailyAppKeyIndex() {
        return dailyAppkeyIndex;
    }

    public SDKConfig setGlobalDailyAppKeyIndex(int i) {
        dailyAppkeyIndex = i;
        return this;
    }

    public int getGlobalOnlineAppKeyIndex() {
        return onlineAppKeyIndex;
    }

    public SDKConfig setGlobalOnlineAppKeyIndex(int i) {
        onlineAppKeyIndex = i;
        return this;
    }

    public String getGlobalAppKey() {
        return appKey;
    }

    public SDKConfig setGlobalAppKey(String str) {
        appKey = str;
        XState.setValue(LoginConstants.KEY_APPKEY, str);
        return this;
    }

    public String getGlobalDeviceId() {
        return deviceId;
    }

    public SDKConfig setGlobalDeviceId(String str) {
        deviceId = str;
        XState.setValue("deviceId", str);
        return this;
    }

    public String getGlobalUtdid() {
        return utdid;
    }

    public SDKConfig setGlobalUtdid(String str) {
        utdid = str;
        XState.setValue("utdid", str);
        if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.i(TAG, "[setGlobalUtdid] utdid=" + str);
        }
        return this;
    }

    public String getGlobalTtid() {
        return ttid;
    }

    public SDKConfig setGlobalTtid(String str) {
        ttid = str;
        XState.setValue(AlibcConstants.TTID, str);
        return this;
    }

    public String getGlobalAuthCode() {
        return authCode;
    }

    public SDKConfig setGlobalAuthCode(String str) {
        authCode = str;
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setGlobalAuthCode]set authCode=" + str);
        }
        return this;
    }

    public a getGlobalSecurityBodyDataEx$66fb986() {
        return securityBodyDataEx$2bbb0a39;
    }

    public SDKConfig setGlobalSecurityBodyDataEx$7df5f4c5(a aVar) {
        securityBodyDataEx$2bbb0a39 = aVar;
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setGlobalSecurityBodyDataEx]set ISecurityBodyDataEx=" + aVar);
        }
        return this;
    }

    public EnvModeEnum getGlobalEnvMode() {
        return envMode;
    }

    public SDKConfig setGlobalEnvMode(EnvModeEnum envModeEnum) {
        if (envModeEnum != null) {
            envMode = envModeEnum;
        }
        return this;
    }

    public String getGlobalAppVersion() {
        return appVersion;
    }

    public SDKConfig setGlobalAppVersion(String str) {
        appVersion = str;
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[setGlobalAppVersion]set appVersion=" + str);
        }
        return this;
    }

    public Factory getGlobalCallFactory() {
        return callFactory;
    }

    public SDKConfig setGlobalCallFactory(Factory factory) {
        if (factory != null) {
            callFactory = factory;
        }
        return this;
    }
}

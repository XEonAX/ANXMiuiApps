package mtopsdk.mtop.intf;

import android.content.Context;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.domain.EnvModeEnum;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.global.MtopSDK;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.mtop.global.SDKUtils;

public class Mtop {
    private static final String TAG = "mtopsdk.Mtop";
    private static volatile Mtop instance = null;
    private static volatile boolean isInit = false;

    private Mtop() {
    }

    public static Mtop instance(Context context) {
        return instance(context, null);
    }

    public static Mtop instance(Context context, String str) {
        if (instance == null) {
            synchronized (Mtop.class) {
                if (instance == null) {
                    instance = new Mtop();
                }
            }
            if (!isInit) {
                init(context, str);
            }
        }
        if (StringUtils.isNotBlank(str)) {
            SDKConfig.getInstance().setGlobalTtid(str);
        }
        return instance;
    }

    private static synchronized void init(Context context, String str) {
        synchronized (Mtop.class) {
            if (!isInit) {
                if (context == null) {
                    TBSdkLog.e(TAG, "[Mtop init] The Parameter context can not be null.");
                    throw new IllegalArgumentException("The Parameter context can not be null.");
                }
                if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                    TBSdkLog.d(TAG, "[init] ttid=" + str);
                }
                MtopSDK.init(context, str);
                isInit = true;
            }
        }
    }

    public Mtop unInit() {
        MtopSDK.unInit();
        isInit = false;
        return this;
    }

    public Mtop switchEnvMode(EnvModeEnum envModeEnum) {
        MtopSDK.switchEnvMode(envModeEnum);
        return this;
    }

    @Deprecated
    public Mtop registerSessionInfo(String str, String str2, String str3) {
        SDKUtils.registerSessionInfo(str, str2, str3);
        return this;
    }

    public Mtop registerSessionInfo(String str, String str2) {
        SDKUtils.registerSessionInfo(str, str2);
        return this;
    }

    public Mtop setCoordinates(String str, String str2) {
        SDKUtils.registerLng(str);
        SDKUtils.registerLat(str2);
        return this;
    }

    public Mtop logout() {
        SDKUtils.logOut();
        return this;
    }

    public Mtop logSwitch(boolean z) {
        MtopSDK.setLogSwitch(z);
        return this;
    }

    public Mtop registerDeviceId(String str) {
        SDKUtils.registerDeviceId(str);
        return this;
    }

    public MtopBuilder build(IMTOPDataObject iMTOPDataObject, String str) {
        return new MtopBuilder(iMTOPDataObject, str);
    }

    public MtopBuilder build(MtopRequest mtopRequest, String str) {
        return new MtopBuilder(mtopRequest, str);
    }

    @Deprecated
    public MtopBuilder build(Object obj, String str) {
        return new MtopBuilder(obj, str);
    }
}

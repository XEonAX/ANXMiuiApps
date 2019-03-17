package mtopsdk.mtop.global;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import mtopsdk.a.a;
import mtopsdk.common.util.MtopUtils;
import mtopsdk.common.util.SdkSetting;
import mtopsdk.common.util.SdkSetting.ENV;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.MtopProxyBase;
import mtopsdk.mtop.domain.EnvModeEnum;
import mtopsdk.mtop.util.MtopSDKThreadPoolExecutorFactory;
import mtopsdk.xstate.XState;

public class MtopSDK {
    private static final String TAG = "mtopsdk.MtopSDK";
    private static Object initLock = new Object();
    private static AtomicBoolean isAllowSwitchEnv = new AtomicBoolean(true);
    private static volatile boolean isInit = false;
    private static SDKConfig sdkConfig = SDKConfig.getInstance();

    /* renamed from: mtopsdk.mtop.global.MtopSDK$4 */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$mtopsdk$mtop$domain$EnvModeEnum = new int[EnvModeEnum.values().length];

        static {
            try {
                $SwitchMap$mtopsdk$mtop$domain$EnvModeEnum[EnvModeEnum.ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$mtopsdk$mtop$domain$EnvModeEnum[EnvModeEnum.PREPARE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$mtopsdk$mtop$domain$EnvModeEnum[EnvModeEnum.TEST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$mtopsdk$mtop$domain$EnvModeEnum[EnvModeEnum.TEST_SANDBOX.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private MtopSDK() {
    }

    public static synchronized void init(Context context) {
        synchronized (MtopSDK.class) {
            init(context, null, null);
        }
    }

    public static synchronized void init(Context context, String str) {
        synchronized (MtopSDK.class) {
            if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                TBSdkLog.i(TAG, "[init]ttid=" + str);
            }
            init(context, null, str);
        }
    }

    public static synchronized void init(final Context context, final a aVar, final String str) {
        synchronized (MtopSDK.class) {
            if (StringUtils.isNotBlank(str)) {
                sdkConfig.setGlobalTtid(str);
            }
            if (!isInit) {
                sdkConfig.setGlobalContext(context);
                MtopSDKThreadPoolExecutorFactory.submit(new Runnable() {
                    public final void run() {
                        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                            TBSdkLog.i(MtopSDK.TAG, "[init]MtopSDK init Called");
                        }
                        MtopSDK.executeInitCoreTask(context, aVar, str);
                    }
                });
            }
        }
    }

    /* JADX WARNING: Missing block: B:23:0x007a, code:
            mtopsdk.mtop.util.MtopSDKThreadPoolExecutorFactory.submit(new mtopsdk.mtop.global.MtopSDK.AnonymousClass2());
     */
    /* JADX WARNING: Missing block: B:39:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void executeInitCoreTask(final Context context, a aVar, String str) {
        synchronized (initLock) {
            try {
                if (isInit) {
                    return;
                }
                if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                    TBSdkLog.i(TAG, "[executeInitCoreTask]MtopSDK initcore start. ttid=" + str);
                }
                sdkConfig.setGlobalContext(context);
                XState.init(context);
                if (StringUtils.isNotBlank(str)) {
                    sdkConfig.setGlobalTtid(str);
                }
                if (aVar == null) {
                    aVar = new a();
                }
                aVar.a(context, sdkConfig.getGlobalOnlineAppKeyIndex());
                sdkConfig.setGlobalSign(aVar);
                sdkConfig.setGlobalAppKey(aVar.a(new a.a(sdkConfig.getGlobalOnlineAppKeyIndex(), null)));
                isInit = true;
                initLock.notifyAll();
                if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                    TBSdkLog.i(TAG, "[executeInitCoreTask]MtopSDK initcore end");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void executeInitExtraTask(Context context) {
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[executeInitExtraTask]MtopSDK initextra start");
        }
        try {
            SwitchConfig.getInstance().initConfig(context);
        } catch (Throwable th) {
            TBSdkLog.e(TAG, "[executeInitExtraTask] execute MtopSDK initExtraTask error.---", th);
        }
        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
            TBSdkLog.i(TAG, "[executeInitExtraTask]MtopSDK initextra end");
        }
    }

    public static void unInit() {
        XState.unInit();
        isInit = false;
    }

    public static synchronized void switchEnvMode(final EnvModeEnum envModeEnum) {
        synchronized (MtopSDK.class) {
            if (envModeEnum != null) {
                if (sdkConfig.getGlobalEnvMode() != envModeEnum) {
                    if (MtopUtils.isApkDebug() || isAllowSwitchEnv.compareAndSet(true, false)) {
                        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                            TBSdkLog.i(TAG, "[switchEnvMode]MtopSDK switchEnvMode Called");
                        }
                        MtopSDKThreadPoolExecutorFactory.submit(new Runnable() {
                            public final void run() {
                                MtopSDK.checkMtopSDKInit();
                                if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                                    TBSdkLog.i(MtopSDK.TAG, "[switchEnvMode]MtopSDK switchEnvMode start");
                                }
                                switch (AnonymousClass4.$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum[envModeEnum.ordinal()]) {
                                    case 1:
                                        MtopSDK.sdkConfig.setGlobalEnvMode(EnvModeEnum.ONLINE);
                                        MtopProxyBase.envMode = EnvModeEnum.ONLINE;
                                        SdkSetting.setEnv(ENV.release);
                                        MtopSDK.reInitISign(envModeEnum);
                                        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                                            TBSdkLog.i(MtopSDK.TAG, "[switchEnvMode]switch envMode to ONLINE!");
                                        }
                                        MtopSDK.setLogSwitch(false);
                                        break;
                                    case 2:
                                        MtopSDK.sdkConfig.setGlobalEnvMode(EnvModeEnum.PREPARE);
                                        MtopProxyBase.envMode = EnvModeEnum.PREPARE;
                                        SdkSetting.setEnv(ENV.develop);
                                        MtopSDK.setLogSwitch(true);
                                        MtopSDK.reInitISign(envModeEnum);
                                        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                                            TBSdkLog.i(MtopSDK.TAG, "[switchEnvMode]switch envMode to PRE!");
                                            break;
                                        }
                                        break;
                                    case 3:
                                        MtopSDK.sdkConfig.setGlobalEnvMode(EnvModeEnum.TEST);
                                        MtopProxyBase.envMode = EnvModeEnum.TEST;
                                        SdkSetting.setEnv(ENV.debug);
                                        MtopSDK.setLogSwitch(true);
                                        MtopSDK.reInitISign(envModeEnum);
                                        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                                            TBSdkLog.i(MtopSDK.TAG, "[switchEnvMode]switch envMode to DAILY!");
                                            break;
                                        }
                                        break;
                                    case 4:
                                        MtopSDK.sdkConfig.setGlobalEnvMode(EnvModeEnum.TEST_SANDBOX);
                                        MtopProxyBase.envMode = EnvModeEnum.TEST_SANDBOX;
                                        SdkSetting.setEnv(ENV.debug);
                                        MtopSDK.setLogSwitch(true);
                                        MtopSDK.reInitISign(envModeEnum);
                                        if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                                            TBSdkLog.i(MtopSDK.TAG, "[switchEnvMode]switch envMode to DAILY SandBox!");
                                            break;
                                        }
                                        break;
                                }
                                if (EnvModeEnum.ONLINE != MtopSDK.sdkConfig.getGlobalEnvMode()) {
                                    SwitchConfig.getInstance().setGlobalSpdySslSwitchOpen(false);
                                }
                                MtopSDK.executeInitExtraTask(MtopSDK.sdkConfig.getGlobalContext());
                                if (TBSdkLog.isLogEnable(LogEnable.InfoEnable)) {
                                    TBSdkLog.i(MtopSDK.TAG, "[switchEnvMode]MtopSDK switchEnvMode end");
                                }
                            }
                        });
                    } else {
                        TBSdkLog.e(TAG, "debug package can switch environment only once!");
                    }
                }
            }
        }
    }

    private static void reInitISign(EnvModeEnum envModeEnum) {
        if (sdkConfig.getGlobalSign() != null && envModeEnum != null) {
            int globalOnlineAppKeyIndex = sdkConfig.getGlobalOnlineAppKeyIndex();
            if (EnvModeEnum.TEST.getEnvMode() == envModeEnum.getEnvMode() || EnvModeEnum.TEST_SANDBOX.getEnvMode() == envModeEnum.getEnvMode()) {
                globalOnlineAppKeyIndex = sdkConfig.getGlobalDailyAppKeyIndex();
            }
            sdkConfig.getGlobalSign().a(sdkConfig.getGlobalContext(), globalOnlineAppKeyIndex);
            sdkConfig.setGlobalAppKey(sdkConfig.getGlobalSign().a(new a.a(globalOnlineAppKeyIndex, null)));
        }
    }

    public static void setLogSwitch(boolean z) {
        TBSdkLog.setPrintLog(z);
    }

    public static void checkMtopSDKInit() {
        if (!isInit) {
            synchronized (initLock) {
                try {
                    if (!isInit) {
                        initLock.wait(60000);
                        if (!isInit) {
                            TBSdkLog.e(TAG, "[checkMtopSDKInit]Didn't call MtopSDK.init(...),please execute global init.");
                        }
                    }
                } catch (Exception e) {
                    TBSdkLog.e(TAG, "[checkMtopSDKInit] wait MtopSDK initLock failed---" + e.toString());
                }
            }
            return;
        }
        return;
    }
}

package mtopsdk.mtop;

import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.common.MtopCallback.MtopFinishListener;
import mtopsdk.mtop.common.MtopFinishEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.MtopNetworkProp;
import mtopsdk.mtop.domain.EntranceEnum;
import mtopsdk.mtop.domain.EnvModeEnum;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.global.MtopSDK;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.MtopProxyConstant;
import mtopsdk.mtop.util.MtopStatistics;
import mtopsdk.mtop.util.Result;

public class MtopProxyBase implements IMTOPDataObject {
    private static final String TAG = "mtopsdk.MtopProxyBase";
    public static EnvModeEnum envMode = EnvModeEnum.ONLINE;
    private static volatile boolean isInit = false;
    public MtopListener callback;
    public Object context;
    private String customDomain;
    private EntranceEnum entrance;
    private String fullBaseUrl;
    public MtopRequest mtopRequest;
    public MtopNetworkProp property;
    public MtopStatistics stat;

    private static void init() {
        EnvModeEnum globalEnvMode = SDKConfig.getInstance().getGlobalEnvMode();
        if (globalEnvMode != null) {
            envMode = globalEnvMode;
        }
        MtopSDK.checkMtopSDKInit();
        isInit = true;
    }

    protected static void checkInit() {
        if (!isInit) {
            synchronized (MtopProxyBase.class) {
                if (!isInit) {
                    init();
                }
            }
        }
    }

    public MtopProxyBase(MtopRequest mtopRequest, MtopNetworkProp mtopNetworkProp, Object obj, MtopListener mtopListener) {
        this.entrance = EntranceEnum.GW_OPEN;
        this.property = new MtopNetworkProp();
        this.mtopRequest = mtopRequest;
        if (mtopNetworkProp != null) {
            this.property = mtopNetworkProp;
        }
        this.context = obj;
        this.callback = mtopListener;
    }

    public MtopProxyBase(MtopRequest mtopRequest) {
        this(mtopRequest, null, null, null);
    }

    @Deprecated
    public void setFullBaseUrl(String str) {
        this.fullBaseUrl = str;
    }

    public void setCustomDomain(String str) {
        this.customDomain = str;
    }

    public String getFullBaseUrl(String str) {
        try {
            EnvModeEnum envModeEnum = envMode;
            this.property.envMode = envModeEnum;
            if (StringUtils.isNotBlank(this.customDomain)) {
                StringBuilder stringBuilder = new StringBuilder(40);
                stringBuilder.append(this.property.protocol.getProtocol());
                if (StringUtils.isNotBlank(str)) {
                    stringBuilder.append(str);
                }
                stringBuilder.append(this.customDomain).append("/");
                stringBuilder.append(this.entrance.getEntrance());
                return stringBuilder.toString();
            }
            if (StringUtils.isBlank(this.fullBaseUrl)) {
                StringBuilder stringBuilder2 = new StringBuilder(40);
                stringBuilder2.append(this.property.protocol.getProtocol());
                if (StringUtils.isNotBlank(str)) {
                    stringBuilder2.append(str);
                }
                stringBuilder2.append(MtopProxyConstant.defaultEnvBaseUrls[envModeEnum.getEnvMode()]);
                stringBuilder2.append(this.entrance.getEntrance());
                return stringBuilder2.toString();
            }
            return this.fullBaseUrl;
        } catch (Exception e) {
            TBSdkLog.e(TAG, "[getFullBaseUrl] create MtopProxyBase fullbaseurl error ---" + e.toString());
        }
    }

    public EntranceEnum getEntrance() {
        return this.entrance;
    }

    public void setEntrance(EntranceEnum entranceEnum) {
        if (entranceEnum != null) {
            this.entrance = entranceEnum;
        }
    }

    public MtopRequest getMtopRequest() {
        return this.mtopRequest;
    }

    public void setMtopRequest(MtopRequest mtopRequest) {
        if (mtopRequest != null) {
            this.mtopRequest = mtopRequest;
        }
    }

    public MtopNetworkProp getProperty() {
        return this.property;
    }

    public void setProperty(MtopNetworkProp mtopNetworkProp) {
        if (mtopNetworkProp != null) {
            this.property = mtopNetworkProp;
        }
    }

    public Object getContext() {
        return this.context;
    }

    public void setContext(Object obj) {
        this.context = obj;
    }

    public MtopListener getCallback() {
        return this.callback;
    }

    public void setCallback(MtopListener mtopListener) {
        this.callback = mtopListener;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("MtopProxyBase [entrance=").append(this.entrance);
        stringBuilder.append(", fullBaseUrl=").append(this.fullBaseUrl);
        stringBuilder.append(", customDomain=").append(this.customDomain);
        stringBuilder.append(", mtopRequest=").append(this.mtopRequest);
        stringBuilder.append(", property=").append(this.property);
        stringBuilder.append(", context=").append(this.context);
        stringBuilder.append(", callback=").append(this.callback);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void handleExceptionCallBack(MtopResponse mtopResponse) {
        if (mtopResponse != null && (this.callback instanceof MtopFinishListener)) {
            ((MtopFinishListener) this.callback).onFinished(new MtopFinishEvent(mtopResponse), this.context);
        }
    }

    protected Result<Boolean> validateBusinessInit() {
        String seqNo = this.stat.getSeqNo();
        String str;
        if (this.mtopRequest == null || !this.mtopRequest.isLegalRequest()) {
            str = "mtopRequest is invalid." + (this.mtopRequest != null ? this.mtopRequest.toString() : "mtopRequest=null");
            TBSdkLog.e(TAG, seqNo, "[validateBusinessInit]" + str);
            return new Result(false, ErrorConstant.ERRCODE_MTOPPROXYBASE_INIT_ERROR, str);
        }
        if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d(TAG, seqNo, "[validateBusinessInit]" + this.mtopRequest.toString());
        }
        if (this.property != null) {
            return new Result(Boolean.valueOf(true));
        }
        str = "MtopNetworkProp is invalid.";
        TBSdkLog.e(TAG, seqNo, "[validateBusinessInit]" + str);
        return new Result(false, ErrorConstant.ERRCODE_MTOPPROXYBASE_INIT_ERROR, str);
    }
}

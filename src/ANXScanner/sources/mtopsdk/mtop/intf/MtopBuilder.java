package mtopsdk.mtop.intf;

import android.os.Handler;
import com.ali.auth.third.core.model.Constants;
import java.util.HashMap;
import java.util.Map;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.common.util.MtopUtils;
import mtopsdk.common.util.StringUtils;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.ApiID;
import mtopsdk.mtop.common.DefaultMtopCallback;
import mtopsdk.mtop.common.MtopCallback.MtopCacheListener;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.MtopNetworkProp;
import mtopsdk.mtop.common.listener.MtopBaseListenerProxy;
import mtopsdk.mtop.common.listener.MtopCacheListenerProxy;
import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.JsonTypeEnum;
import mtopsdk.mtop.domain.MethodEnum;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.domain.ProtocolEnum;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.MtopConvert;
import mtopsdk.mtop.util.MtopSDKThreadPoolExecutorFactory;
import mtopsdk.mtop.util.MtopStatistics;

public class MtopBuilder {
    private static final String TAG = "mtopsdk.MtopBuilder";
    private String customDomain = null;
    private String fullBaseUrl = null;
    private Handler handler = null;
    public MtopListener listener = null;
    public MtopNetworkProp mtopProp = new MtopNetworkProp();
    public MtopRequest request;
    public Object requestContext = null;
    protected MtopStatistics stat = new MtopStatistics();

    public MtopBuilder(IMTOPDataObject iMTOPDataObject, String str) {
        this.request = MtopConvert.inputDoToMtopRequest(iMTOPDataObject);
        this.mtopProp.ttid = str;
    }

    public MtopBuilder(MtopRequest mtopRequest, String str) {
        this.request = mtopRequest;
        this.mtopProp.ttid = str;
    }

    @Deprecated
    public MtopBuilder(Object obj, String str) {
        this.request = MtopConvert.inputDoToMtopRequest(obj);
        this.mtopProp.ttid = str;
    }

    public MtopBuilder ttid(String str) {
        this.mtopProp.ttid = str;
        return this;
    }

    public MtopBuilder reqContext(Object obj) {
        this.requestContext = obj;
        return this;
    }

    public Object getReqContext() {
        return this.requestContext;
    }

    public MtopBuilder retryTime(int i) {
        this.mtopProp.retryTimes = i;
        return this;
    }

    public MtopBuilder headers(Map<String, String> map) {
        if (!(map == null || map.isEmpty())) {
            if (this.mtopProp.requestHeaders != null) {
                this.mtopProp.requestHeaders.putAll(map);
            } else {
                this.mtopProp.requestHeaders = map;
            }
        }
        return this;
    }

    public MtopBuilder setCacheControlNoCache() {
        Map map = this.mtopProp.requestHeaders;
        if (map == null) {
            map = new HashMap();
        }
        map.put(HttpHeaderConstant.CACHE_CONTROL, HttpHeaderConstant.NO_CACHE);
        this.mtopProp.requestHeaders = map;
        return this;
    }

    public MtopBuilder protocol(ProtocolEnum protocolEnum) {
        if (protocolEnum != null) {
            this.mtopProp.protocol = protocolEnum;
        }
        return this;
    }

    public MtopBuilder setCustomDomain(String str) {
        if (str != null) {
            this.customDomain = str;
        }
        return this;
    }

    public MtopBuilder addListener(MtopListener mtopListener) {
        this.listener = mtopListener;
        return this;
    }

    public MtopBuilder addMteeUa(String str) {
        addHttpQueryParameter(Constants.UA, str);
        return this;
    }

    public MtopBuilder addHttpQueryParameter(String str, String str2) {
        if (!StringUtils.isBlank(str) && !StringUtils.isBlank(str2)) {
            if (this.mtopProp.queryParameterMap == null) {
                this.mtopProp.queryParameterMap = new HashMap();
            }
            this.mtopProp.queryParameterMap.put(str, str2);
        } else if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
            TBSdkLog.d(TAG, "[addHttpQueryParameter]add HttpQueryParameter error,key=" + str + ",value=" + str2);
        }
        return this;
    }

    public MtopBuilder handler(Handler handler) {
        this.handler = handler;
        return this;
    }

    public MtopBuilder useCache() {
        this.mtopProp.useCache = true;
        return this;
    }

    public MtopBuilder forceRefreshCache() {
        this.mtopProp.forceRefreshCache = true;
        return this;
    }

    public MtopBuilder useWua() {
        return useWua(0);
    }

    public MtopBuilder useWua(int i) {
        this.mtopProp.wuaFlag = i;
        return this;
    }

    public MtopBuilder reqMethod(MethodEnum methodEnum) {
        if (methodEnum != null) {
            this.mtopProp.method = methodEnum;
        }
        return this;
    }

    public MtopBuilder setJsonType(JsonTypeEnum jsonTypeEnum) {
        if (jsonTypeEnum != null) {
            addHttpQueryParameter("type", jsonTypeEnum.getJsonType());
        }
        return this;
    }

    public MtopBuilder setConnectionTimeoutMilliSecond(int i) {
        if (i > 0) {
            this.mtopProp.connTimeout = i;
        }
        return this;
    }

    public MtopBuilder setSocketTimeoutMilliSecond(int i) {
        if (i > 0) {
            this.mtopProp.socketTimeout = i;
        }
        return this;
    }

    public MtopBuilder setBizId(int i) {
        this.mtopProp.bizId = i;
        return this;
    }

    public MtopBuilder setReqUserId(String str) {
        this.mtopProp.reqUserId = str;
        return this;
    }

    public MtopResponse syncRequest() {
        this.stat.onStart();
        MtopBaseListenerProxy createListenerProxy = createListenerProxy(this.listener);
        createMtopProxy(createListenerProxy).asyncApiCall(this.handler);
        synchronized (createListenerProxy) {
            try {
                if (createListenerProxy.response == null) {
                    createListenerProxy.wait(120000);
                }
            } catch (Throwable e) {
                TBSdkLog.e(TAG, "[apiCall] error", e);
            }
        }
        MtopResponse mtopResponse = createListenerProxy.response;
        if (createListenerProxy.context != null) {
            this.requestContext = createListenerProxy.context;
        }
        if (mtopResponse == null) {
            return new MtopResponse(this.request.getApiName(), this.request.getVersion(), ErrorConstant.ERRCODE_MTOP_APICALL_ASYNC_TIMEOUT, ErrorConstant.ERRMSG_MTOP_APICALL_ASYNC_TIMEOUT);
        }
        return mtopResponse;
    }

    public ApiID asyncRequest() {
        this.stat.onStart();
        final MtopProxy createMtopProxy = createMtopProxy(this.listener);
        if (!MtopUtils.isMainThread() || (!isUseCache() && !isUseWua())) {
            return createMtopProxy.asyncApiCall(this.handler);
        }
        final ApiID apiID = new ApiID(null, createMtopProxy);
        MtopSDKThreadPoolExecutorFactory.getRequestThreadPoolExecutor().submit(new Runnable() {
            public void run() {
                apiID.setCall(createMtopProxy.asyncApiCall(MtopBuilder.this.handler).getCall());
            }
        });
        return apiID;
    }

    private MtopProxy createMtopProxy(MtopListener mtopListener) {
        MtopProxy mtopProxy = new MtopProxy(this.request, this.mtopProp, this.requestContext, mtopListener);
        if (this.request != null) {
            this.stat.apiKey = this.request.getKey();
        }
        mtopProxy.stat = this.stat;
        if (this.customDomain != null) {
            mtopProxy.setCustomDomain(this.customDomain);
        }
        if (this.fullBaseUrl != null) {
            mtopProxy.setFullBaseUrl(this.fullBaseUrl);
        }
        return mtopProxy;
    }

    private MtopBaseListenerProxy createListenerProxy(MtopListener mtopListener) {
        if (mtopListener == null) {
            return new MtopBaseListenerProxy(new DefaultMtopCallback());
        }
        if (mtopListener instanceof MtopCacheListener) {
            return new MtopCacheListenerProxy(mtopListener);
        }
        return new MtopBaseListenerProxy(mtopListener);
    }

    protected void mtopCommitStatData(boolean z) {
        this.stat.commitStat = z;
    }

    private boolean isUseCache() {
        return this.mtopProp.useCache || (this.listener instanceof MtopCacheListener);
    }

    private boolean isUseWua() {
        return this.mtopProp.wuaFlag >= 0;
    }
}

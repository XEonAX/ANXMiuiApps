package mtopsdk.mtop;

import android.os.Handler;
import java.util.Map;
import mtopsdk.mtop.b.a.a;
import mtopsdk.mtop.c.b;
import mtopsdk.mtop.common.ApiID;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.common.MtopNetworkProp;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.domain.ProtocolEnum;
import mtopsdk.mtop.global.SwitchConfig;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.MtopStatistics;
import mtopsdk.mtop.util.Result;

public class MtopProxy extends MtopProxyBase {
    private static final String TAG = "mtopsdk.MtopProxy";
    private a paramBuilder;
    private mtopsdk.mtop.c.a transformer;

    public MtopProxy(MtopRequest mtopRequest) {
        this(mtopRequest, null, null, null);
    }

    public MtopProxy(MtopRequest mtopRequest, MtopListener mtopListener) {
        this(mtopRequest, null, null, mtopListener);
    }

    public MtopProxy(MtopRequest mtopRequest, MtopNetworkProp mtopNetworkProp, Object obj, MtopListener mtopListener) {
        super(mtopRequest, mtopNetworkProp, obj, mtopListener);
        this.paramBuilder = new a();
        this.transformer = new b();
    }

    public a getParamBuilder() {
        return this.paramBuilder;
    }

    public mtopsdk.mtop.c.a getTransformer() {
        return this.transformer;
    }

    public MtopResponse syncApiCall() {
        initCommonConfig();
        Result validateBusinessInit = validateBusinessInit();
        MtopResponse a;
        if (validateBusinessInit.isSuccess()) {
            Map a2 = this.paramBuilder.a(this);
            if (a2 == null) {
                return new MtopResponse(this.mtopRequest.getApiName(), this.mtopRequest.getVersion(), ErrorConstant.ERRCODE_GENERATE_MTOP_SIGN_ERROR, ErrorConstant.ERRMSG_GENERATE_MTOP_SIGN_ERROR);
            }
            a = this.transformer.a(this, a2);
            this.stat.retCode = a.getRetCode();
            this.stat.onStatSum();
            a.setMtopStat(this.stat);
            return a;
        }
        if (this.mtopRequest != null) {
            a = new MtopResponse(this.mtopRequest.getApiName(), this.mtopRequest.getVersion(), validateBusinessInit.getErrCode(), validateBusinessInit.getErrInfo());
        } else {
            a = new MtopResponse(validateBusinessInit.getErrCode(), validateBusinessInit.getErrInfo());
        }
        handleExceptionCallBack(a);
        return a;
    }

    public ApiID asyncApiCall() {
        return asyncApiCall(null);
    }

    public ApiID asyncApiCall(Handler handler) {
        initCommonConfig();
        Result validateBusinessInit = validateBusinessInit();
        if (validateBusinessInit.isSuccess()) {
            Map a = this.paramBuilder.a(this);
            if (a != null) {
                return this.transformer.b(this, a);
            }
            handleExceptionCallBack(new MtopResponse(this.mtopRequest.getApiName(), this.mtopRequest.getVersion(), ErrorConstant.ERRCODE_GENERATE_MTOP_SIGN_ERROR, ErrorConstant.ERRMSG_GENERATE_MTOP_SIGN_ERROR));
            return new ApiID(null, this);
        }
        MtopResponse mtopResponse;
        if (this.mtopRequest != null) {
            mtopResponse = new MtopResponse(this.mtopRequest.getApiName(), this.mtopRequest.getVersion(), validateBusinessInit.getErrCode(), validateBusinessInit.getErrInfo());
        } else {
            mtopResponse = new MtopResponse(validateBusinessInit.getErrCode(), validateBusinessInit.getErrInfo());
        }
        handleExceptionCallBack(mtopResponse);
        return new ApiID(null, this);
    }

    private void onPrepareStat() {
        if (this.stat == null) {
            this.stat = new MtopStatistics();
            this.stat.onStart();
            if (this.mtopRequest != null) {
                this.stat.apiKey = this.mtopRequest.getKey();
            }
        }
    }

    private void initCommonConfig() {
        MtopProxyBase.checkInit();
        onPrepareStat();
        if (!SwitchConfig.getInstance().isGlobalSpdySslSwitchOpen()) {
            this.property.protocol = ProtocolEnum.HTTP;
        }
    }
}

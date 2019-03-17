package mtopsdk.mtop.c;

import com.taobao.tao.remotebusiness.listener.c;
import java.util.Map;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.a.a;
import mtopsdk.mtop.common.ApiID;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.global.SDKConfig;
import mtopsdk.mtop.global.SDKUtils;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.MtopProxyUtils;
import mtopsdk.mtop.util.MtopStatistics;
import mtopsdk.network.Call;
import mtopsdk.network.NetworkCallback;
import mtopsdk.network.domain.Request;
import mtopsdk.network.domain.Response;

/* compiled from: MtopTransformImpl */
public final class b implements a {
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0084  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final MtopResponse a(MtopProxy mtopProxy, Map<String, String> map) {
        Throwable th;
        MtopResponse mtopResponse;
        if (mtopProxy.stat == null) {
            mtopProxy.stat = new MtopStatistics();
        }
        String seqNo = mtopProxy.stat.getSeqNo();
        MtopRequest mtopRequest = mtopProxy.getMtopRequest();
        String key = mtopRequest.getKey();
        if (MtopProxyUtils.getApiWhiteList().contains(key) || !a.a(key, SDKUtils.getCorrectionTime())) {
            Response execute;
            Request c = c(mtopProxy, map);
            try {
                mtopProxy.stat.onNetSendStart();
                execute = a(c).execute();
                try {
                    mtopProxy.stat.onNetSendEnd();
                    if (execute != null) {
                        mtopProxy.stat.onNetStat(execute.stat());
                    }
                } catch (Throwable th2) {
                    th = th2;
                    TBSdkLog.e("mtopsdk.MtopTransformImpl", seqNo, "[syncTransform] invoke call.execute error :apiKey=" + mtopRequest.getKey(), th);
                    mtopProxy.stat.onParseResponseDataStart();
                    if (execute != null) {
                    }
                    mtopProxy.stat.onParseResponseDataEnd();
                    return mtopResponse;
                }
            } catch (Throwable th3) {
                th = th3;
                execute = null;
            }
            mtopProxy.stat.onParseResponseDataStart();
            if (execute != null) {
                mtopResponse = new MtopResponse(ErrorConstant.ERRCODE_NETWORK_ERROR, "网络错误");
                if (mtopProxy != null) {
                    mtopResponse.setApi(mtopProxy.mtopRequest.getApiName());
                    mtopResponse.setV(mtopProxy.mtopRequest.getVersion());
                }
            } else {
                mtopResponse = c.a(null, null, mtopProxy, new c(execute.code(), execute.headers(), execute.body()));
            }
            mtopProxy.stat.onParseResponseDataEnd();
        } else {
            mtopResponse = new MtopResponse(mtopRequest.getApiName(), mtopRequest.getVersion(), ErrorConstant.ERRCODE_API_FLOW_LIMIT_LOCKED, ErrorConstant.ERRMSG_API_FLOW_LIMIT_LOCKED);
            if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
                TBSdkLog.w("mtopsdk.MtopTransformImpl", seqNo, "[syncTransform] ANDROID_SYS_API_FLOW_LIMIT_LOCKED apiKey=" + key);
            }
        }
        return mtopResponse;
    }

    public final ApiID b(MtopProxy mtopProxy, Map<String, String> map) {
        Throwable e;
        if (mtopProxy.stat == null) {
            mtopProxy.stat = new MtopStatistics();
        }
        String seqNo = mtopProxy.stat.getSeqNo();
        MtopRequest mtopRequest = mtopProxy.getMtopRequest();
        String key = mtopRequest.getKey();
        if (MtopProxyUtils.getApiWhiteList().contains(key) || !a.a(key, SDKUtils.getCorrectionTime())) {
            Call a;
            Request c = c(mtopProxy, map);
            NetworkCallback convertCallbackListener = MtopProxyUtils.convertCallbackListener(mtopProxy);
            if (convertCallbackListener != null) {
                convertCallbackListener.c = mtopProxy.stat;
            }
            try {
                mtopProxy.stat.onNetSendStart();
                a = a(c);
                try {
                    a.enqueue(convertCallbackListener);
                } catch (Exception e2) {
                    e = e2;
                    TBSdkLog.e("mtopsdk.MtopTransformImpl", seqNo, "[asyncTransform] invoke call.enqueue error :apiKey=" + mtopRequest.getKey(), e);
                    return new ApiID(a, mtopProxy);
                }
            } catch (Throwable e3) {
                Throwable th = e3;
                a = null;
                e = th;
            }
            return new ApiID(a, mtopProxy);
        }
        mtopProxy.handleExceptionCallBack(new MtopResponse(mtopRequest.getApiName(), mtopRequest.getVersion(), ErrorConstant.ERRCODE_API_FLOW_LIMIT_LOCKED, ErrorConstant.ERRMSG_API_FLOW_LIMIT_LOCKED));
        if (TBSdkLog.isLogEnable(LogEnable.WarnEnable)) {
            TBSdkLog.w("mtopsdk.MtopTransformImpl", "[asyncTransform] ANDROID_SYS_API_FLOW_LIMIT_LOCKED apiKey=" + key);
        }
        return new ApiID(null, mtopProxy);
    }

    private static Request c(MtopProxy mtopProxy, Map<String, String> map) {
        if (mtopProxy == null || map == null) {
            return null;
        }
        return new mtopsdk.mtop.c.a.b().a(mtopProxy, map);
    }

    private static Call a(Request request) {
        return SDKConfig.getInstance().getGlobalCallFactory().newCall(request);
    }
}

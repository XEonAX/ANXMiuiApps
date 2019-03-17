package mtopsdk.mtop.common;

import com.taobao.tao.remotebusiness.listener.c;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.common.util.TBSdkLog.LogEnable;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.MtopCallback.MtopFinishListener;
import mtopsdk.mtop.common.MtopCallback.MtopHeaderListener;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.MtopSDKThreadPoolExecutorFactory;
import mtopsdk.mtop.util.MtopStatistics;
import mtopsdk.network.Call;
import mtopsdk.network.NetworkCallback;
import mtopsdk.network.domain.Response;
import mtopsdk.network.domain.Response.Builder;

/* compiled from: NetworkListenerAdapter */
public final class a implements NetworkCallback {
    public MtopFinishListener a;
    public MtopHeaderListener b;
    public MtopStatistics c = null;
    private MtopProxy d;
    private Object e;

    static /* synthetic */ void a(a aVar, Response response, Object obj) {
        if (aVar.c == null) {
            aVar.c = new MtopStatistics();
        }
        aVar.c.onNetSendEnd();
        if (response != null) {
            aVar.c.onNetStat(response.stat());
            aVar.c.statusCode = response.code();
        }
        String seqNo = aVar.c.getSeqNo();
        if (aVar.a == null) {
            TBSdkLog.e("mtopsdk.NetworkListenerAdapter", seqNo, "[onFinishTask]finishListener is null");
        } else if (aVar.d == null) {
            TBSdkLog.e("mtopsdk.NetworkListenerAdapter", seqNo, "[onFinishTask]mtopProxy is null");
        } else {
            MtopRequest mtopRequest = aVar.d.mtopRequest;
            MtopResponse mtopResponse = new MtopResponse(mtopRequest.getApiName(), mtopRequest.getVersion(), null, null);
            mtopResponse.setMtopStat(aVar.c);
            MtopFinishEvent mtopFinishEvent = new MtopFinishEvent(mtopResponse);
            if (response == null) {
                mtopResponse.setRetCode(ErrorConstant.ERRCODE_NETWORK_ERROR);
                mtopResponse.setRetMsg("网络错误");
                aVar.a(aVar.c);
                try {
                    aVar.a.onFinished(mtopFinishEvent, obj);
                    return;
                } catch (Throwable th) {
                    TBSdkLog.e("mtopsdk.NetworkListenerAdapter", seqNo, "[onFinishTask]finishListener error --apiKey=" + mtopRequest.getKey(), th);
                    return;
                }
            }
            aVar.c.onParseResponseDataStart();
            mtopFinishEvent.mtopResponse = c.a(mtopResponse, null, aVar.d, new c(response.code(), response.headers(), response.body()));
            aVar.c.onParseResponseDataEnd();
            aVar.c.retCode = mtopResponse.getRetCode();
            aVar.a(aVar.c);
            try {
                aVar.a.onFinished(mtopFinishEvent, obj);
            } catch (Throwable th2) {
                TBSdkLog.e("mtopsdk.NetworkListenerAdapter", seqNo, "[onFinishTask]finishListener error --apiKey=" + mtopRequest.getKey(), th2);
            }
        }
    }

    public a(MtopProxy mtopProxy) {
        this.d = mtopProxy;
        this.e = mtopProxy.context;
    }

    private void a(Response response, Object obj) {
        MtopSDKThreadPoolExecutorFactory.submitCallbackTask(b(), new c(this, response, obj));
    }

    private String a() {
        return this.c != null ? this.c.getSeqNo() : null;
    }

    private int b() {
        String a = a();
        return a != null ? a.hashCode() : hashCode();
    }

    private void a(MtopStatistics mtopStatistics) {
        if (mtopStatistics != null) {
            mtopStatistics.onEnd();
            mtopStatistics.onStatSum();
            if (TBSdkLog.isLogEnable(LogEnable.DebugEnable)) {
                TBSdkLog.d("mtopsdk.MtopStatistics", a(), mtopStatistics.toString());
            }
        }
    }

    public final void onFailure(Call call, Exception exception) {
        a(new Builder().request(call.request()).code(-7).message(exception.getMessage()).build(), this.e);
    }

    public final void onResponse(Call call, Response response) {
        MtopSDKThreadPoolExecutorFactory.submitCallbackTask(b(), new b(this, response, this.e));
        a(response, this.e);
    }

    public final void onCancel(Call call) {
        a(new Builder().request(call.request()).code(-8).build(), this.e);
    }
}

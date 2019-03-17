package com.taobao.tao.remotebusiness.listener;

import com.taobao.tao.remotebusiness.IRemoteParserListener;
import com.taobao.tao.remotebusiness.MtopBusiness;
import com.taobao.tao.remotebusiness.a;
import com.taobao.tao.remotebusiness.a.b;
import com.taobao.tao.remotebusiness.auth.RemoteAuth;
import com.taobao.tao.remotebusiness.login.RemoteLogin;
import mtopsdk.common.util.HttpHeaderConstant;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.common.MtopCallback.MtopFinishListener;
import mtopsdk.mtop.common.MtopFinishEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.util.ErrorConstant;
import mtopsdk.mtop.util.MtopConvert;
import mtopsdk.mtop.util.MtopStatistics;
import mtopsdk.mtop.util.MtopStatistics.RbStatisticData;
import mtopsdk.network.util.NetworkUtils;

class MtopFinishListenerImpl extends b implements MtopFinishListener {
    private static final String TAG = "mtop.rb-FinishListener";

    public MtopFinishListenerImpl(MtopBusiness mtopBusiness, MtopListener mtopListener) {
        super(mtopBusiness, mtopListener);
    }

    public void onFinished(MtopFinishEvent mtopFinishEvent, Object obj) {
        TBSdkLog.i(TAG, this.mtopBusiness.getSeqNo(), "Mtop onFinish event received.");
        if (this.mtopBusiness.isTaskCanceled()) {
            TBSdkLog.d(TAG, this.mtopBusiness.getSeqNo(), "The request of RemoteBusiness is canceled.");
            return;
        }
        MtopResponse mtopResponse = mtopFinishEvent.getMtopResponse();
        if (mtopResponse == null) {
            TBSdkLog.d(TAG, this.mtopBusiness.getSeqNo(), "The MtopResponse is null.");
        } else if (mtopResponse.isSessionInvalid() && this.mtopBusiness.request.isNeedEcode() && this.mtopBusiness.getRetryTime() == 0) {
            a.a(this.mtopBusiness);
            RemoteLogin.login(this.mtopBusiness.isShowLoginUI(), mtopResponse);
        } else {
            long j;
            MtopStatistics mtopStat;
            String retCode = mtopResponse.getRetCode();
            if ((ErrorConstant.ERRCODE_FAIL_SYS_ACCESS_TOKEN_EXPIRED.equalsIgnoreCase(retCode) || ErrorConstant.ERRCODE_FAIL_SYS_ILLEGAL_ACCESS_TOKEN.equalsIgnoreCase(retCode)) && this.mtopBusiness.isNeedAuth()) {
                int retryTime = this.mtopBusiness.getRetryTime();
                MtopBusiness mtopBusiness = this.mtopBusiness;
                if (retryTime < 3) {
                    a.a(this.mtopBusiness);
                    RemoteAuth.authorize(this.mtopBusiness.authParam, this.mtopBusiness.request.getKey(), NetworkUtils.getSingleHeaderFieldByKey(mtopResponse.getHeaderFields(), HttpHeaderConstant.X_ACT_HINT), this.mtopBusiness.showAuthUI);
                    return;
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (this.listener instanceof IRemoteParserListener) {
                ((IRemoteParserListener) this.listener).parseResponse(mtopFinishEvent.getMtopResponse());
            }
            b a = com.taobao.tao.remotebusiness.a.a.a(this.listener, mtopFinishEvent, this.mtopBusiness);
            a.e = mtopResponse;
            long currentTimeMillis2 = System.currentTimeMillis();
            if (mtopResponse != null) {
                if (!mtopResponse.isApiSuccess() || this.mtopBusiness.clazz == null) {
                    j = currentTimeMillis2;
                } else {
                    a.c = MtopConvert.mtopResponseToOutputDO(mtopResponse, this.mtopBusiness.clazz);
                    j = System.currentTimeMillis();
                }
                mtopStat = mtopResponse.getMtopStat();
                if (mtopStat == null) {
                    mtopStat = new MtopStatistics();
                    mtopResponse.setMtopStat(mtopStat);
                }
            } else {
                mtopStat = null;
                j = currentTimeMillis2;
            }
            this.mtopBusiness.onBgFinishTime = System.currentTimeMillis();
            if (mtopStat != null) {
                RbStatisticData rbStatData = mtopStat.getRbStatData();
                rbStatData.beforeReqTime = this.mtopBusiness.sendStartTime - this.mtopBusiness.reqStartTime;
                rbStatData.mtopReqTime = currentTimeMillis - this.mtopBusiness.sendStartTime;
                rbStatData.afterReqTime = this.mtopBusiness.onBgFinishTime - currentTimeMillis;
                rbStatData.parseTime = currentTimeMillis2 - currentTimeMillis;
                rbStatData.jsonParseTime = j - currentTimeMillis2;
                rbStatData.rbReqTime = this.mtopBusiness.onBgFinishTime - this.mtopBusiness.reqStartTime;
            }
            com.taobao.tao.remotebusiness.a.a.a().obtainMessage(3, a).sendToTarget();
        }
    }
}

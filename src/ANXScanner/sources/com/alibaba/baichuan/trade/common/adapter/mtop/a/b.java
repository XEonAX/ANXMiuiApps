package com.alibaba.baichuan.trade.common.adapter.mtop.a;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.common.AlibcMiniTradeCommon;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.adapter.mtop.AlibcNetWork;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkRequest;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.adapter.security.AlibcSecurityGuard;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.utils.JSONUtils;
import com.taobao.tao.remotebusiness.MtopBusiness;
import java.io.Serializable;
import java.util.Map;
import java.util.Map.Entry;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.domain.EnvModeEnum;
import mtopsdk.mtop.domain.MethodEnum;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.global.SDKUtils;
import mtopsdk.mtop.intf.Mtop;
import mtopsdk.mtop.intf.MtopSetting;
import org.json.JSONObject;

public class b implements AlibcNetWork {
    private MtopRequest a(NetworkRequest networkRequest) {
        if (TextUtils.isEmpty(networkRequest.apiVersion)) {
            networkRequest.apiVersion = "1.0";
        }
        MtopRequest mtopRequest = new MtopRequest();
        mtopRequest.setApiName(networkRequest.apiName);
        mtopRequest.setVersion(networkRequest.apiVersion);
        mtopRequest.setNeedEcode(networkRequest.needLogin);
        mtopRequest.setNeedSession(true);
        if (networkRequest.paramMap != null) {
            JSONObject jsonObject = JSONUtils.getJsonObject(mtopRequest.getData());
            JSONObject jSONObject = jsonObject == null ? new JSONObject() : jsonObject;
            for (Entry entry : networkRequest.paramMap.entrySet()) {
                if (entry.getValue() != null) {
                    try {
                        jSONObject.put((String) entry.getKey(), ((Serializable) entry.getValue()).toString());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            mtopRequest.setData(jSONObject.toString());
        }
        return mtopRequest;
    }

    private void a(MtopResponse mtopResponse) {
        if (mtopResponse.isApiSuccess()) {
            AlibcLogger.d("AlibcMtop", "网络请求成功");
        } else if (mtopResponse.isSessionInvalid()) {
            AlibcLogger.e("AlibcMtop", "session 失效， do autologin or login business msg = " + mtopResponse.getRetMsg());
        } else if (mtopResponse.isSystemError() || mtopResponse.isNetworkError() || mtopResponse.isExpiredRequest() || mtopResponse.is41XResult() || mtopResponse.isApiLockedResult() || mtopResponse.isMtopSdkError()) {
            AlibcLogger.e("AlibcMtop", "系统错误，网络错误，防刷，防雪崩 msg =" + mtopResponse.getRetMsg());
        } else {
            AlibcLogger.e("AlibcMtop", "业务错误 msg =" + mtopResponse.getRetMsg());
        }
    }

    private void a(MtopResponse mtopResponse, String str, String str2) {
        String str3 = "";
        str3 = mtopResponse.isSessionInvalid() ? "session 失效， do autologin or login business" : (mtopResponse.isSystemError() || mtopResponse.isNetworkError() || mtopResponse.isExpiredRequest() || mtopResponse.is41XResult() || mtopResponse.isApiLockedResult() || mtopResponse.isMtopSdkError()) ? "系统错误，网络错误，防刷，防雪崩 " : "业务错误 ";
        AlibcUserTradeHelper.sendUseabilityFailure("InvokeMtop", str3 + str2, "1501" + str);
    }

    private NetworkResponse b(MtopResponse mtopResponse) {
        NetworkResponse networkResponse = new NetworkResponse();
        if (mtopResponse == null) {
            return networkResponse;
        }
        networkResponse.byteData = mtopResponse.getBytedata();
        networkResponse.httpCode = mtopResponse.getResponseCode() + "";
        networkResponse.errorCode = mtopResponse.getRetCode();
        networkResponse.errorMsg = mtopResponse.getRetMsg();
        networkResponse.isSuccess = mtopResponse.isApiSuccess();
        if (mtopResponse.getDataJsonObject() != null) {
            String jSONObject = mtopResponse.getDataJsonObject().toString();
            networkResponse.data = (Map) JSONUtils.parseStringValue(jSONObject, Map.class);
            networkResponse.jsonData = jSONObject;
        }
        return networkResponse;
    }

    public void changeEnvMode(Environment environment) {
        if (environment == Environment.ONLINE) {
            Mtop.instance(AlibcTradeCommon.context).switchEnvMode(EnvModeEnum.ONLINE);
        } else if (environment == Environment.PRE) {
            Mtop.instance(AlibcTradeCommon.context).switchEnvMode(EnvModeEnum.PREPARE);
        } else if (environment == Environment.TEST) {
            Mtop.instance(AlibcTradeCommon.context).switchEnvMode(EnvModeEnum.TEST);
        } else {
            Mtop.instance(AlibcTradeCommon.context).switchEnvMode(EnvModeEnum.TEST_SANDBOX);
        }
    }

    public int init() {
        AlibcLogger.d("AlibcMtop", "mtop init start");
        if (!AlibcMiniTradeCommon.checkCommon() || !AlibcSecurityGuard.getInstance().isInitialized()) {
            return 1;
        }
        MtopSetting.setAppKeyIndex(0, 0);
        MtopSetting.setAppVersion(AlibcTradeCommon.systemVersion);
        changeEnvMode(AlibcTradeCommon.getEnvironment());
        Mtop.instance(AlibcTradeCommon.context, AlibcTradeCommon.ttid);
        AlibcLogger.d("AlibcMtop", "mtop init end");
        return 0;
    }

    public NetworkResponse sendRequest(NetworkRequest networkRequest) {
        if (networkRequest == null) {
            return null;
        }
        MtopBusiness build = MtopBusiness.build(a(networkRequest), AlibcTradeCommon.ttid);
        if (networkRequest.needWua) {
            build.useWua();
        }
        if (networkRequest.needAuth && !networkRequest.isVip) {
            build.setNeedAuth(networkRequest.authParams, true);
        }
        if (networkRequest.isPost) {
            build.reqMethod(MethodEnum.POST);
        }
        MtopResponse syncRequest = build.syncRequest();
        a(syncRequest);
        if (syncRequest.isApiSuccess()) {
            AlibcUserTradeHelper.sendUseabilitySuccess("InvokeMtop");
        } else {
            a(syncRequest, syncRequest.getRetCode(), "errmsg = " + syncRequest.getRetMsg() + " ,api = " + syncRequest.getApi());
        }
        return b(syncRequest);
    }

    public boolean sendRequest(NetworkRequestListener networkRequestListener, NetworkRequest networkRequest) {
        if (networkRequest != null) {
            MtopBusiness build = MtopBusiness.build(a(networkRequest), AlibcTradeCommon.ttid);
            if (networkRequest.needWua) {
                build.useWua();
            }
            if (networkRequest.needAuth && !networkRequest.isVip) {
                build.setNeedAuth(networkRequest.authParams, true);
            }
            if (networkRequest.isPost) {
                build.reqMethod(MethodEnum.POST);
            }
            if (networkRequest.extHeaders != null && networkRequest.extHeaders.size() > 0) {
                build.headers(networkRequest.extHeaders);
            }
            build.setSocketTimeoutMilliSecond(15000);
            build.setConnectionTimeoutMilliSecond(15000);
            build.registeListener(new c(this, networkRequestListener, networkRequest)).asyncRequest();
            return true;
        } else if (networkRequestListener != null) {
            networkRequestListener.onError(0, null);
            return false;
        } else {
            AlibcLogger.e("AlibcMtop", "sendRequest 失败，request & listener 为 null");
            return false;
        }
    }

    public void setTTID(String str) {
        SDKUtils.registerTtid(str);
    }

    public void turnOffDebug() {
        TBSdkLog.setTLogEnabled(false);
        TBSdkLog.setPrintLog(false);
    }

    public void turnOnDebug() {
        TBSdkLog.setTLogEnabled(true);
        TBSdkLog.setPrintLog(true);
    }
}

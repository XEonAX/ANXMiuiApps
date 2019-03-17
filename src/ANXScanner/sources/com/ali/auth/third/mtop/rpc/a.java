package com.ali.auth.third.mtop.rpc;

import android.text.TextUtils;
import com.ali.auth.third.core.MemberSDK;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.RpcRequest;
import com.ali.auth.third.core.model.RpcRequestCallbackWithCode;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.rpc.protocol.RpcException;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alipay.sdk.packet.d;
import com.taobao.tao.remotebusiness.IRemoteBaseListener;
import com.taobao.tao.remotebusiness.RemoteBusiness;
import mtopsdk.mtop.domain.BaseOutDo;
import mtopsdk.mtop.domain.MethodEnum;
import mtopsdk.mtop.domain.MtopRequest;
import mtopsdk.mtop.domain.MtopResponse;
import mtopsdk.mtop.intf.Mtop;
import mtopsdk.mtop.intf.MtopBuilder;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MTOPWrapper */
public class a {
    private static a a;

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a();
            }
            aVar = a;
        }
        return aVar;
    }

    public String a(RpcRequest rpcRequest) {
        return a(rpcRequest, LoginReturnData.class).toString();
    }

    public <V> RpcResponse<V> a(RpcRequest rpcRequest, Class<V> cls) {
        return a(rpcRequest, (Class) cls, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0052  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <V> RpcResponse<V> a(RpcRequest rpcRequest, Class<V> cls, String str) {
        MtopResponse syncRequest;
        Throwable e;
        try {
            MtopBuilder connectionTimeoutMilliSecond = Mtop.instance(KernelContext.context).build(b(rpcRequest), MemberSDK.ttid).reqMethod(MethodEnum.POST).setBizId(94).setConnectionTimeoutMilliSecond(10000);
            if (!TextUtils.isEmpty(str)) {
                connectionTimeoutMilliSecond.setReqUserId(str);
            }
            connectionTimeoutMilliSecond.retryTime(1);
            syncRequest = connectionTimeoutMilliSecond.syncRequest();
            try {
                SDKLogger.d("login.MTOPWrapperImpl", new StringBuilder().append("receive MtopResponse = ").append(syncRequest).toString() == null ? "  null" : syncRequest.toString());
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            syncRequest = null;
            SDKLogger.e("login.MTOPWrapperImpl", "MtopResponse error", e);
            e.printStackTrace();
            if (syncRequest == null) {
            }
        }
        if (syncRequest == null) {
            return a(syncRequest, (Class) cls);
        }
        SDKLogger.e("login.MTOPWrapperImpl", "MtopResponse response=null");
        return null;
    }

    private MtopRequest b(RpcRequest rpcRequest) throws JSONException {
        boolean z = false;
        MtopRequest mtopRequest = new MtopRequest();
        mtopRequest.setApiName(rpcRequest.target);
        mtopRequest.setVersion(rpcRequest.version);
        mtopRequest.setNeedEcode(false);
        mtopRequest.setNeedSession(false);
        JSONObject jSONObject = new JSONObject();
        while (true) {
            boolean z2 = z;
            if (z2 < rpcRequest.paramNames.size()) {
                if (rpcRequest.paramNames.get(z2) != null) {
                    jSONObject.put((String) rpcRequest.paramNames.get(z2), rpcRequest.paramValues.get(z2).toString());
                }
                z = z2 + 1;
            } else {
                mtopRequest.setData(jSONObject.toString());
                return mtopRequest;
            }
        }
    }

    private <V> RpcResponse<V> a(MtopResponse mtopResponse, Class<V> cls) {
        if (mtopResponse != null && mtopResponse.isApiSuccess()) {
            return b(mtopResponse, cls);
        }
        if (mtopResponse == null) {
            return null;
        }
        if (mtopResponse.isNetworkError()) {
            throw new RpcException(Integer.valueOf(7), mtopResponse.getRetMsg());
        } else if (mtopResponse.isApiLockedResult()) {
            throw new RpcException(Integer.valueOf(400), mtopResponse.getRetMsg());
        } else if (mtopResponse.is41XResult()) {
            throw new RpcException(Integer.valueOf(401), mtopResponse.getRetMsg());
        } else if (mtopResponse.isExpiredRequest()) {
            throw new RpcException(Integer.valueOf(402), mtopResponse.getRetMsg());
        } else if (mtopResponse.isIllegelSign()) {
            throw new RpcException(Integer.valueOf(403), mtopResponse.getRetMsg());
        } else if (mtopResponse.isSystemError()) {
            throw new RpcException(Integer.valueOf(406), mtopResponse.getRetMsg());
        } else if (mtopResponse.isSessionInvalid()) {
            throw new RpcException(Integer.valueOf(407), mtopResponse.getRetMsg());
        } else if (mtopResponse.isMtopServerError()) {
            throw new RpcException(Integer.valueOf(406), mtopResponse.getRetMsg());
        } else if (!mtopResponse.isMtopSdkError()) {
            return b(mtopResponse, cls);
        } else {
            throw new RpcException(Integer.valueOf(406), mtopResponse.getRetMsg());
        }
    }

    private <V> RpcResponse<V> b(MtopResponse mtopResponse, Class<V> cls) {
        try {
            return c(mtopResponse, cls);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private <V> RpcResponse<V> c(MtopResponse mtopResponse, Class<V> cls) throws JSONException {
        RpcResponse<V> rpcResponse = new RpcResponse();
        byte[] bytedata = mtopResponse.getBytedata();
        if (bytedata != null) {
            JSONObject optJSONObject = new JSONObject(new String(bytedata)).optJSONObject(d.k);
            if (optJSONObject != null) {
                rpcResponse.code = optJSONObject.optInt(LoginConstants.CODE);
                rpcResponse.codeGroup = optJSONObject.optString("codeGroup");
                rpcResponse.message = optJSONObject.optString(LoginConstants.MESSAGE);
                rpcResponse.actionType = optJSONObject.optString("actionType");
                rpcResponse.success = optJSONObject.optBoolean("success");
                if (!TextUtils.isEmpty(optJSONObject.optString("returnValue"))) {
                    rpcResponse.returnValue = JSONUtils.parseStringValue(optJSONObject.optString("returnValue"), cls);
                }
            }
        }
        return rpcResponse;
    }

    public <T extends RpcResponse<?>> void a(RpcRequest rpcRequest, final Class<T> cls, final RpcRequestCallbackWithCode rpcRequestCallbackWithCode) {
        if (rpcRequest != null && rpcRequestCallbackWithCode != null) {
            try {
                RemoteBusiness build = RemoteBusiness.build(b(rpcRequest), MemberSDK.ttid);
                build.registeListener(new IRemoteBaseListener() {
                    public void onSuccess(int i, MtopResponse mtopResponse, BaseOutDo baseOutDo, Object obj) {
                        rpcRequestCallbackWithCode.onSuccess(a.this.a(mtopResponse, cls));
                    }

                    public void onError(int i, MtopResponse mtopResponse, Object obj) {
                        String str = "-1";
                        if (mtopResponse != null) {
                            str = mtopResponse.getRetCode();
                        }
                        rpcRequestCallbackWithCode.onError(str, a.this.a(mtopResponse, cls));
                    }

                    public void onSystemError(int i, MtopResponse mtopResponse, Object obj) {
                        String str = "-1";
                        if (mtopResponse != null) {
                            str = mtopResponse.getRetCode();
                        }
                        try {
                            rpcRequestCallbackWithCode.onSystemError(str, a.this.a(mtopResponse, cls));
                        } catch (RpcException e) {
                            rpcRequestCallbackWithCode.onSystemError(str, null);
                        }
                    }
                });
                build.startRequest();
            } catch (Throwable th) {
            }
        }
    }
}

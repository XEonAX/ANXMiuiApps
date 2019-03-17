package com.ali.auth.third.mtop.rpc.impl;

import com.ali.auth.third.core.MemberSDK;
import com.ali.auth.third.core.config.ConfigManager;
import com.ali.auth.third.core.config.Environment;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.device.DeviceInfo;
import com.ali.auth.third.core.model.RpcRequest;
import com.ali.auth.third.core.model.RpcRequestCallbackWithCode;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.service.RpcService;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.mtop.rpc.MtopRemoteLoginImpl;
import com.ali.auth.third.mtop.rpc.a;
import com.taobao.tao.remotebusiness.MtopBusiness;
import com.taobao.tao.remotebusiness.login.RemoteLogin;
import mtopsdk.common.util.TBSdkLog;
import mtopsdk.mtop.domain.EnvModeEnum;
import mtopsdk.mtop.intf.Mtop;
import mtopsdk.mtop.intf.MtopSetting;

public class MtopRpcServiceImpl implements RpcService {
    public MtopRpcServiceImpl() {
        if (ConfigManager.DEBUG) {
            TBSdkLog.setTLogEnabled(false);
            TBSdkLog.setPrintLog(true);
        }
        MtopSetting.setAppKeyIndex(0, 0);
        MtopSetting.setAppVersion(CommonUtils.getAppVersion());
        if (KernelContext.getEnvironment() == Environment.TEST) {
            Mtop.instance(KernelContext.context).switchEnvMode(EnvModeEnum.TEST);
            MtopSetting.setMtopDomain("", "", "api.waptest.taobao.com");
        } else if (KernelContext.getEnvironment() == Environment.PRE) {
            Mtop.instance(KernelContext.context).switchEnvMode(EnvModeEnum.PREPARE);
            MtopSetting.setMtopDomain("", "acs.wapa.taobao.com", "");
        } else {
            Mtop.instance(KernelContext.context).switchEnvMode(EnvModeEnum.ONLINE);
        }
        RemoteLogin.setLoginImpl(new MtopRemoteLoginImpl());
    }

    public String invoke(RpcRequest rpcRequest) {
        return a.a().a(rpcRequest);
    }

    public <T> RpcResponse<T> invoke(RpcRequest rpcRequest, Class<T> cls) {
        return a.a().a(rpcRequest, (Class) cls);
    }

    public <T extends RpcResponse<?>> void remoteBusiness(RpcRequest rpcRequest, Class<T> cls, RpcRequestCallbackWithCode rpcRequestCallbackWithCode) {
        MtopBusiness.init(KernelContext.getApplicationContext(), MemberSDK.ttid);
        a.a().a(rpcRequest, (Class) cls, rpcRequestCallbackWithCode);
    }

    public void registerSessionInfo(String str, String str2) {
        Mtop.instance(KernelContext.context).registerSessionInfo(str, str2);
    }

    public String getDeviceId() {
        return DeviceInfo.deviceId;
    }

    public void logout() {
        Mtop.instance(KernelContext.context).logout();
    }
}

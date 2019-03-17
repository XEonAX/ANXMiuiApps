package com.ali.auth.third.core.ut;

import android.os.Build.VERSION;
import android.text.TextUtils;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.RpcRequest;
import com.ali.auth.third.core.service.RpcService;
import com.ali.auth.third.core.service.UserTrackerService;
import com.ali.auth.third.core.service.impl.CredentialManager;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.core.util.JSONUtils;
import com.ali.auth.third.core.util.SystemUtils;
import com.ali.auth.third.login.LoginConstants;
import com.alibaba.baichuan.trade.biz.core.usertracker.UserTrackerConstants;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;
import org.json.JSONObject;

public class UserTracer implements UserTrackerService {
    public static JSONObject getAppInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("diskSize", CommonUtils.getSDCardSize());
            jSONObject.put("sysSize", CommonUtils.getSystemSize());
            jSONObject.put("memorySize", CommonUtils.getTotalMemory());
            jSONObject.put("deviceId", CommonUtils.getAndroidId());
            jSONObject.put("uuid", KernelContext.UUID);
        } catch (Exception e) {
        }
        try {
            jSONObject.put("osType", "android");
            jSONObject.put("osVersion", VERSION.SDK_INT + "");
        } catch (Exception e2) {
        }
        try {
            jSONObject.put("sdkName", "alibabauth_sdk");
            jSONObject.put("sdkVersion", KernelContext.sdkVersion);
            if (KernelContext.isMini) {
                jSONObject.put(UserTrackerConstants.SDK_TYPE, "mini");
            } else {
                jSONObject.put(UserTrackerConstants.SDK_TYPE, "std");
            }
        } catch (Exception e3) {
        }
        try {
            jSONObject.put("appId", KernelContext.getApplicationContext().getPackageName() + SymbolExpUtil.SYMBOL_VERTICALBAR + SystemUtils.getApkPublicKeyDigest());
            jSONObject.put(LoginConstants.KEY_APPKEY, KernelContext.getAppKey());
            jSONObject.put(LoginConstants.APP_NAME, CommonUtils.getAppLabel());
            jSONObject.put("appVersion", CommonUtils.getAndroidAppVersion());
        } catch (Exception e4) {
        }
        try {
            jSONObject.put("openId", CredentialManager.INSTANCE.getInternalSession().user.openId);
        } catch (Exception e5) {
        }
        return jSONObject;
    }

    public void init() {
    }

    public void send(String str, Map<String, String> map) {
        final JSONObject appInfo = getAppInfo();
        try {
            if (!TextUtils.isEmpty(str)) {
                appInfo.put("action", str);
            }
            if (map != null) {
                appInfo.put("actionExt", JSONUtils.toJsonObject(map));
            }
            new Thread(new Runnable() {
                public void run() {
                    RpcRequest rpcRequest = new RpcRequest();
                    rpcRequest.target = "mtop.taobao.havana.mlogin.userTracerLog";
                    rpcRequest.version = "1.0";
                    rpcRequest.addParam("userTracerInfo", appInfo);
                    rpcRequest.addParam("ts", System.currentTimeMillis() + "");
                    ((RpcService) KernelContext.getService(RpcService.class)).invoke(rpcRequest, String.class);
                }
            }).start();
        } catch (Exception e) {
        }
    }
}

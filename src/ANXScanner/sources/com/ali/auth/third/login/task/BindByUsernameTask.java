package com.ali.auth.third.login.task;

import android.support.graphics.drawable.PathInterpolatorCompat;
import android.support.v4.view.PointerIconCompat;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.task.AbsAsyncTask;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.core.util.ResourceUtils;
import com.ali.auth.third.login.LoginComponent;
import com.ali.auth.third.login.LoginConstants;
import com.ali.auth.third.ui.LoginWebViewActivity;
import com.ali.auth.third.ui.context.a;
import com.alipay.sdk.packet.d;
import org.json.JSONException;
import org.json.JSONObject;

public class BindByUsernameTask extends AbsAsyncTask<String, Void, Void> {
    private a a;

    public BindByUsernameTask(a aVar) {
        this.a = aVar;
    }

    /* renamed from: a */
    protected Void asyncExecute(String... strArr) {
        if (CommonUtils.isNetworkAvailable()) {
            RpcResponse loginByUserName = LoginComponent.INSTANCE.loginByUserName(strArr[0]);
            if (loginByUserName == null) {
                this.a.b("");
            } else {
                try {
                    JSONObject jSONObject;
                    JSONObject jSONObject2;
                    if (loginByUserName.code == PathInterpolatorCompat.MAX_NUM_POINTS) {
                        com.ali.auth.third.login.a.a.b.refreshWhenLogin((LoginReturnData) loginByUserName.returnValue);
                        this.a.a().setResult(ResultCode.SUCCESS.code);
                        this.a.a().finish();
                    } else if (loginByUserName.code == 13010) {
                        jSONObject = new JSONObject();
                        jSONObject.put(LoginConstants.CODE, 1007);
                        jSONObject.put(LoginConstants.MESSAGE, loginByUserName.message);
                        jSONObject.put("success", false);
                        jSONObject2 = new JSONObject();
                        if (loginByUserName.returnValue != null) {
                            jSONObject2.put("checkCodeId", ((LoginReturnData) loginByUserName.returnValue).checkCodeId);
                            jSONObject2.put("checkCodeUrl", ((LoginReturnData) loginByUserName.returnValue).checkCodeUrl);
                        }
                        jSONObject.put(d.k, jSONObject2);
                        this.a.a(jSONObject.toString());
                    } else if (loginByUserName.code == 13011) {
                        jSONObject = new JSONObject();
                        jSONObject.put(LoginConstants.CODE, 1008);
                        jSONObject.put(LoginConstants.MESSAGE, loginByUserName.message);
                        jSONObject2 = new JSONObject();
                        if (loginByUserName.returnValue != null) {
                            jSONObject2.put("checkCodeId", ((LoginReturnData) loginByUserName.returnValue).checkCodeId);
                            jSONObject2.put("checkCodeUrl", ((LoginReturnData) loginByUserName.returnValue).checkCodeUrl);
                        }
                        jSONObject.put(d.k, jSONObject2);
                        this.a.a(jSONObject.toString());
                    } else if (loginByUserName.code == 13060) {
                        jSONObject = new JSONObject();
                        jSONObject.put(LoginConstants.CODE, PointerIconCompat.TYPE_ALL_SCROLL);
                        jSONObject.put(LoginConstants.MESSAGE, loginByUserName.message);
                        jSONObject2 = new JSONObject();
                        if (loginByUserName.returnValue != null) {
                            jSONObject2.put("doubleCheckUrl", ((LoginReturnData) loginByUserName.returnValue).h5Url);
                        }
                        jSONObject.put(d.k, jSONObject2);
                        if (loginByUserName.returnValue != null) {
                            LoginWebViewActivity loginWebViewActivity = (LoginWebViewActivity) this.a.a();
                            LoginWebViewActivity.token = ((LoginReturnData) loginByUserName.returnValue).token;
                            loginWebViewActivity = (LoginWebViewActivity) this.a.a();
                            LoginWebViewActivity.scene = ((LoginReturnData) loginByUserName.returnValue).scene;
                        }
                        this.a.a(jSONObject.toString());
                    } else {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put(LoginConstants.CODE, loginByUserName.code);
                        jSONObject3.put(LoginConstants.MESSAGE, loginByUserName.message);
                        this.a.a(jSONObject3.toString());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
            RpcResponse rpcResponse = new RpcResponse();
            rpcResponse.code = -1;
            rpcResponse.message = ResourceUtils.getString("com_taobao_tae_sdk_network_not_available_message");
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put(LoginConstants.CODE, rpcResponse.code);
                jSONObject4.put(LoginConstants.MESSAGE, rpcResponse.message);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            this.a.a(jSONObject4.toString());
        }
        return null;
    }

    protected void doFinally() {
    }

    protected void doWhenException(Throwable th) {
        Message createMessage = MessageUtils.createMessage(KernelMessageConstants.GENERIC_SYSTEM_ERROR, th.getMessage());
        SDKLogger.d("login", createMessage.toString());
        this.a.a(createMessage.code, createMessage.message);
    }
}

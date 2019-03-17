package com.ali.auth.third.login.task;

import android.support.graphics.drawable.PathInterpolatorCompat;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.task.AbsAsyncTask;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.login.LoginComponent;
import com.ali.auth.third.login.LoginConstants;
import com.ali.auth.third.ui.QRView;
import com.ali.auth.third.ui.QrLoginActivity;
import com.ali.auth.third.ui.context.a;
import org.json.JSONObject;

public class LoginByQrCodeTask extends AbsAsyncTask<String, Void, Void> {
    private a a;

    public LoginByQrCodeTask(a aVar) {
        this.a = aVar;
    }

    /* renamed from: a */
    protected Void asyncExecute(String... strArr) {
        try {
            JSONObject optJSONObject = new JSONObject(strArr[0]).optJSONObject("params");
            if (optJSONObject != null) {
                optJSONObject = optJSONObject.optJSONObject("qrCodeInfo");
                if (optJSONObject != null) {
                    RpcResponse loginByQRCode = LoginComponent.INSTANCE.loginByQRCode(optJSONObject.optString("at"), optJSONObject.optLong(LoginConstants.TIMESTAMP));
                    if (loginByQRCode == null) {
                        optJSONObject = new JSONObject();
                        optJSONObject.put(LoginConstants.CODE, KernelMessageConstants.GENERIC_SYSTEM_ERROR);
                        optJSONObject.put(LoginConstants.MESSAGE, "");
                        this.a.a(optJSONObject.toString());
                    } else {
                        try {
                            int i = loginByQRCode.code;
                            JSONObject jSONObject;
                            if (i == PathInterpolatorCompat.MAX_NUM_POINTS) {
                                com.ali.auth.third.login.a.a.b.refreshWhenLogin((LoginReturnData) loginByQRCode.returnValue);
                                if (this.a.a() instanceof QrLoginActivity) {
                                    this.a.a().setResult(ResultCode.SUCCESS.code);
                                    this.a.a().finish();
                                } else if (QRView.mLoginCallback != null) {
                                    QRView.mLoginCallback.onSuccess(com.ali.auth.third.login.a.a.b.getSession());
                                    QRView.mLoginCallback = null;
                                }
                            } else if (i == 14030) {
                                jSONObject = new JSONObject();
                                jSONObject.put(LoginConstants.CODE, 4);
                                jSONObject.put(LoginConstants.MESSAGE, loginByQRCode.message);
                                this.a.a(jSONObject.toString());
                            } else if (i == 14031) {
                                jSONObject = new JSONObject();
                                jSONObject.put(LoginConstants.CODE, 5);
                                jSONObject.put(LoginConstants.MESSAGE, loginByQRCode.message);
                                this.a.a(jSONObject.toString());
                            } else if (i == 1) {
                                jSONObject = new JSONObject();
                                jSONObject.put(LoginConstants.CODE, KernelMessageConstants.GENERIC_SYSTEM_ERROR);
                                jSONObject.put(LoginConstants.MESSAGE, loginByQRCode.message);
                                this.a.a(jSONObject.toString());
                            } else {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put(LoginConstants.CODE, i);
                                jSONObject2.put(LoginConstants.MESSAGE, loginByQRCode.message);
                                this.a.a(jSONObject2.toString());
                            }
                        } catch (Throwable th) {
                        }
                    }
                }
            }
            return null;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    protected void doFinally() {
    }

    protected void doWhenException(Throwable th) {
        Message createMessage = MessageUtils.createMessage(KernelMessageConstants.GENERIC_SYSTEM_ERROR, th.getMessage());
        SDKLogger.log("login", createMessage, th);
        this.a.a(createMessage.code, createMessage.message);
    }
}

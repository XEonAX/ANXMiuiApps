package com.ali.auth.third.login.task;

import android.app.Activity;
import android.support.graphics.drawable.PathInterpolatorCompat;
import android.text.TextUtils;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.message.Message;
import com.ali.auth.third.core.message.MessageUtils;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.service.UserTrackerService;
import com.ali.auth.third.core.task.AbsAsyncTask;
import com.ali.auth.third.core.trace.SDKLogger;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.core.util.ResourceUtils;
import com.ali.auth.third.login.LoginComponent;
import com.ali.auth.third.login.LoginConstants;
import com.ali.auth.third.login.UTConstants;
import java.util.HashMap;
import java.util.Map;

public class LoginByIVTokenTask extends AbsAsyncTask<String, Void, Void> {
    private LoginCallback a;
    private Activity b;

    public LoginByIVTokenTask(Activity activity, LoginCallback loginCallback) {
        this.b = activity;
        this.a = loginCallback;
    }

    private void a() {
        KernelContext.executorService.postUITask(new Runnable() {
            public void run() {
                if (LoginByIVTokenTask.this.a != null) {
                    LoginByIVTokenTask.this.a.onSuccess(KernelContext.credentialService.getSession());
                }
            }
        });
    }

    private void a(final int i, final String str) {
        KernelContext.executorService.postUITask(new Runnable() {
            public void run() {
                Map hashMap = new HashMap();
                hashMap.put(LoginConstants.CODE, i + "");
                if (!TextUtils.isEmpty(str)) {
                    hashMap.put(LoginConstants.MESSAGE, str);
                }
                ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_H5_LOGIN_FAILURE, hashMap);
                if (LoginByIVTokenTask.this.a != null) {
                    LoginByIVTokenTask.this.a.onFailure(i, str);
                }
            }
        });
    }

    /* renamed from: a */
    protected Void asyncExecute(String... strArr) {
        RpcResponse loginByIVToken;
        if (CommonUtils.isNetworkAvailable()) {
            loginByIVToken = LoginComponent.INSTANCE.loginByIVToken(strArr[0], strArr[1], strArr[2]);
            if (loginByIVToken == null || loginByIVToken.returnValue == null) {
                a(ResultCode.SYSTEM_EXCEPTION.code, ResultCode.SYSTEM_EXCEPTION.message);
            } else if (loginByIVToken.code == PathInterpolatorCompat.MAX_NUM_POINTS) {
                KernelContext.credentialService.refreshWhenLogin((LoginReturnData) loginByIVToken.returnValue);
                a();
            } else {
                a(loginByIVToken.code, loginByIVToken.message);
            }
        } else {
            loginByIVToken = new RpcResponse();
            loginByIVToken.code = -1;
            loginByIVToken.message = ResourceUtils.getString("com_taobao_tae_sdk_network_not_available_message");
            a(loginByIVToken.code, loginByIVToken.message);
        }
        return null;
    }

    protected void doFinally() {
    }

    protected void doWhenException(Throwable th) {
        Message createMessage = MessageUtils.createMessage(KernelMessageConstants.GENERIC_SYSTEM_ERROR, th.getMessage());
        SDKLogger.log("login", createMessage, th);
        Map hashMap = new HashMap();
        hashMap.put(LoginConstants.CODE, "10010");
        hashMap.put(LoginConstants.MESSAGE, "exception");
        ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_H5_LOGIN_FAILURE, hashMap);
        a(createMessage.code, createMessage.message);
    }
}

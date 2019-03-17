package com.ali.auth.third.login.task;

import android.app.Activity;
import android.text.TextUtils;
import com.ali.auth.third.core.broadcast.LoginAction;
import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.KernelMessageConstants;
import com.ali.auth.third.core.model.LoginReturnData;
import com.ali.auth.third.core.model.ResultCode;
import com.ali.auth.third.core.model.RpcResponse;
import com.ali.auth.third.core.service.UserTrackerService;
import com.ali.auth.third.core.util.CommonUtils;
import com.ali.auth.third.login.LoginComponent;
import com.ali.auth.third.login.LoginConstants;
import com.ali.auth.third.login.UTConstants;
import com.ali.auth.third.login.a.a;
import com.ali.auth.third.ui.LoginActivity;
import com.ali.auth.third.ui.context.CallbackContext;
import java.util.HashMap;
import java.util.Map;

public class LoginAfterOpenTb extends AbsLoginByCodeTask {
    private LoginCallback a;

    public LoginAfterOpenTb(Activity activity, LoginCallback loginCallback) {
        super(activity);
        this.a = loginCallback;
    }

    protected void doWhenException(Throwable th) {
        CommonUtils.sendBroadcast(LoginAction.NOTIFY_LOGIN_FAILED);
        Map hashMap = new HashMap();
        hashMap.put(LoginConstants.CODE, "10010");
        hashMap.put(LoginConstants.MESSAGE, "exception");
        ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_TB_LOGIN_FAILURE, hashMap);
        CommonUtils.onFailure(this.a, ResultCode.create(KernelMessageConstants.GENERIC_SYSTEM_ERROR, th.getMessage()));
    }

    protected void doWhenResultFail(int i, String str) {
        if (this.a != null) {
            this.a.onFailure(i, str);
            Map hashMap = new HashMap();
            hashMap.put(LoginConstants.CODE, i + "");
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(LoginConstants.MESSAGE, str);
            }
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_TB_LOGIN_FAILURE, hashMap);
        }
        if (CallbackContext.mGlobalLoginCallback != null) {
            CallbackContext.mGlobalLoginCallback.onFailure(i, str);
        }
        CommonUtils.sendBroadcast(LoginAction.NOTIFY_LOGIN_FAILED);
        if (this.activity != null && (this.activity instanceof LoginActivity)) {
            CallbackContext.activity = null;
            this.activity.finish();
        }
    }

    protected void doWhenResultOk() {
        if (this.a != null) {
            this.a.onSuccess(a.b.getSession());
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_TB_LOGIN_SUCCESS, null);
        }
        if (CallbackContext.mGlobalLoginCallback != null) {
            CallbackContext.mGlobalLoginCallback.onSuccess(a.b.getSession());
        }
        CommonUtils.sendBroadcast(LoginAction.NOTIFY_LOGIN_SUCCESS);
        if (this.activity != null && (this.activity instanceof LoginActivity)) {
            CallbackContext.activity = null;
            this.activity.finish();
        }
    }

    protected RpcResponse<LoginReturnData> login(String[] strArr) {
        return LoginComponent.INSTANCE.loginByCode(strArr[0]);
    }
}

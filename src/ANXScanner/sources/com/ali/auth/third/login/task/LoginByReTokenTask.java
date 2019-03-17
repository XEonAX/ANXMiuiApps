package com.ali.auth.third.login.task;

import android.app.Activity;
import android.text.TextUtils;
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
import com.ali.auth.third.login.util.LoginStatus;
import java.util.HashMap;
import java.util.Map;

public class LoginByReTokenTask extends AbsLoginByCodeTask {
    private LoginCallback a;

    public LoginByReTokenTask(Activity activity, LoginCallback loginCallback) {
        super(activity);
        this.a = loginCallback;
    }

    protected void doWhenException(Throwable th) {
        LoginStatus.resetLoginFlag();
        Map hashMap = new HashMap();
        hashMap.put(LoginConstants.CODE, "10010");
        hashMap.put(LoginConstants.MESSAGE, "exception");
        ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_AUTO_LOGIN_FAILURE, hashMap);
        CommonUtils.onFailure(this.a, ResultCode.create(KernelMessageConstants.GENERIC_SYSTEM_ERROR, th.getMessage()));
    }

    protected void doWhenResultFail(int i, String str) {
        if (this.a != null) {
            Map hashMap = new HashMap();
            hashMap.put(LoginConstants.CODE, i + "");
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(LoginConstants.MESSAGE, str);
            }
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_AUTO_LOGIN_FAILURE, hashMap);
            if (this.a != null) {
                this.a.onFailure(i, str);
            }
        }
    }

    protected void doWhenResultOk() {
        LoginStatus.resetLoginFlag();
        if (this.a != null) {
            ((UserTrackerService) KernelContext.getService(UserTrackerService.class)).send(UTConstants.E_AUTO_LOGIN_SUCCESS, null);
            this.a.onSuccess(a.b.getSession());
        }
    }

    protected RpcResponse<LoginReturnData> login(String[] strArr) {
        LoginComponent loginComponent = LoginComponent.INSTANCE;
        return LoginComponent.loginByRefreshToken();
    }
}

package com.ali.auth.third.mtop.rpc;

import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.context.KernelContext;
import com.ali.auth.third.core.model.Session;
import com.ali.auth.third.core.model.SystemMessageConstants;
import com.ali.auth.third.core.util.ReflectionUtils;
import com.alipay.sdk.app.statistic.c;
import com.taobao.tao.remotebusiness.login.IRemoteLogin;
import com.taobao.tao.remotebusiness.login.LoginContext;
import com.taobao.tao.remotebusiness.login.onLoginListener;

public class MtopRemoteLoginImpl implements IRemoteLogin {
    public void login(final onLoginListener onloginlistener, boolean z) {
        AnonymousClass1 anonymousClass1 = new LoginCallback() {
            public void onSuccess(Session session) {
                if (onloginlistener != null) {
                    onloginlistener.onLoginSuccess();
                }
            }

            public void onFailure(int i, String str) {
                if (onloginlistener == null) {
                    return;
                }
                if (i == SystemMessageConstants.USER_CANCEL_CODE) {
                    onloginlistener.onLoginCancel();
                } else {
                    onloginlistener.onLoginFail();
                }
            }
        };
        try {
            Class cls;
            String str = "com.ali.auth.third.login.LoginServiceImpl";
            try {
                cls = Class.forName(str);
            } catch (Throwable th) {
                str = "com.ali.auth.third.offline.login.LoginServiceImpl";
                cls = Class.forName("com.ali.auth.third.offline.login.LoginServiceImpl");
            }
            ReflectionUtils.invoke(str, c.d, new String[]{"com.ali.auth.third.core.callback.LoginCallback"}, cls.newInstance(), new Object[]{anonymousClass1});
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        }
    }

    public boolean isSessionValid() {
        return KernelContext.credentialService.isSessionValid();
    }

    public boolean isLogining() {
        try {
            Class cls;
            String str = "com.ali.auth.third.login.util.LoginStatus";
            try {
                cls = Class.forName(str);
            } catch (Throwable th) {
                str = "com.ali.auth.third.offline.login.util.LoginStatus";
                cls = Class.forName("com.ali.auth.third.offline.login.util.LoginStatus");
            }
            Object invoke = ReflectionUtils.invoke(str, "isLogining", null, cls.newInstance(), null);
            if (invoke != null && (invoke instanceof Boolean)) {
                return ((Boolean) invoke).booleanValue();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public LoginContext getLoginContext() {
        LoginContext loginContext = new LoginContext();
        try {
            loginContext.nickname = KernelContext.credentialService.getSession().nick;
        } catch (Exception e) {
        }
        return loginContext;
    }
}

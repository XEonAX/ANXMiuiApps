package com.alibaba.baichuan.trade.biz.login;

import com.ali.auth.third.core.MemberSDK;
import com.ali.auth.third.core.model.Session;
import com.ali.auth.third.core.model.SystemMessageConstants;
import com.ali.auth.third.login.LoginService;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import com.alibaba.baichuan.trade.common.webview.AlibcUrlBus;

public class AlibcLogin {
    public static final int LOGIN_INIT_AD = 1;
    public static final int LOGIN_INIT_SUCCESS = 0;
    public static final int LOGIN_SUCCESS = 2;
    public static final int LOGOUT_SUCCESS = 3;
    private int a;
    private String b;
    private int c;
    private String d;
    private boolean e;
    private LoginService f;

    private static class a {
        public static AlibcLogin a = new AlibcLogin();
    }

    private AlibcLogin() {
        this.a = -1;
        this.b = "context对象为空导致失败";
        this.c = -2;
        this.d = "loginService对象为空导致失败";
    }

    /* synthetic */ AlibcLogin(a aVar) {
        this();
    }

    private void a() {
        if (AlibcTradeCommon.getEnvironment() != null) {
            if (AlibcTradeCommon.getEnvironment() == Environment.TEST) {
                MemberSDK.setEnvironment(com.ali.auth.third.core.config.Environment.TEST);
            } else if (AlibcTradeCommon.getEnvironment() == Environment.PRE) {
                MemberSDK.setEnvironment(com.ali.auth.third.core.config.Environment.PRE);
            } else {
                MemberSDK.setEnvironment(com.ali.auth.third.core.config.Environment.ONLINE);
            }
        }
    }

    private void a(int i) {
        if (i == SystemMessageConstants.TAOBAO_CANCEL_CODE || i == SystemMessageConstants.USER_CANCEL_CODE) {
            AlibcUserTradeHelper.sendUseabilityFailure("Login", "登录取消", "140102");
        } else {
            AlibcUserTradeHelper.sendUseabilityFailure("Login", "登录失败", "140101");
        }
    }

    private void b() {
        AlibcUserTradeHelper.sendUseabilitySuccess("Login");
    }

    public static AlibcLogin getInstance() {
        return a.a;
    }

    public Session getSession() {
        return (this.f == null || !this.e) ? null : this.f.getSession();
    }

    public synchronized void init(AlibcLoginCallback alibcLoginCallback) {
        AlibcLogger.d("AlibcLogin", "初始化AlibcLogin");
        if (alibcLoginCallback != null) {
            if (this.e) {
                AlibcLogger.d("AlibcLogin", "AlibcLogin 已经初始化过了");
                alibcLoginCallback.onSuccess(1);
            }
            if (AlibcTradeCommon.context == null) {
                AlibcLogger.e("AlibcLogin", "AlibcTradeCommon.context 为空,导致初始化失败");
                alibcLoginCallback.onFailure(this.a, this.b);
            }
            a();
            AlibcLogger.d("AlibcLogin", "初始化 MemberSDK");
            MemberSDK.init(AlibcTradeCommon.context, new a(this, alibcLoginCallback));
            AlibcUrlBus.registInterceptor(d.a());
        }
    }

    public boolean isLogin() {
        return (this.f == null || !this.e) ? false : this.f.checkSessionValid();
    }

    public void logout(AlibcLoginCallback alibcLoginCallback) {
        AlibcLogger.d("AlibcLogin", "登出操作");
        if (alibcLoginCallback != null) {
            if (!this.e || this.f == null) {
                AlibcLogger.e("AlibcLogin", "没有初始化成功或者loginService=null,导致调用失败");
                alibcLoginCallback.onFailure(this.c, this.d);
                return;
            }
            AlibcLogger.d("AlibcLogin", "调用loginService.logout进行登出");
            this.f.logout(new c(this, alibcLoginCallback));
        }
    }

    public void showLogin(AlibcLoginCallback alibcLoginCallback) {
        AlibcLogger.d("AlibcLogin", "登录操作");
        if (alibcLoginCallback != null) {
            if (!this.e || this.f == null) {
                AlibcLogger.e("AlibcLogin", "没有初始化成功或者loginService=null,导致调用失败");
                alibcLoginCallback.onFailure(this.c, this.d);
                return;
            }
            AlibcLogger.d("AlibcLogin", "调用loginService.auth进行授权");
            this.f.auth(new b(this, alibcLoginCallback));
        }
    }

    public void turnOffDebug() {
        MemberSDK.turnOffDebug();
    }

    public void turnOnDebug() {
        MemberSDK.turnOnDebug();
    }
}

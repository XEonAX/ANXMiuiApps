package com.alibaba.baichuan.trade.biz.login;

import com.ali.auth.third.core.MemberSDK;
import com.ali.auth.third.core.callback.InitResultCallback;
import com.ali.auth.third.login.LoginService;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

class a implements InitResultCallback {
    final /* synthetic */ AlibcLoginCallback a;
    final /* synthetic */ AlibcLogin b;

    a(AlibcLogin alibcLogin, AlibcLoginCallback alibcLoginCallback) {
        this.b = alibcLogin;
        this.a = alibcLoginCallback;
    }

    public void onFailure(int i, String str) {
        AlibcLogger.e("AlibcLogin", "MemberSDK init error, code: " + i + " message: " + str);
        this.a.onFailure(i, str);
        this.b.e = false;
    }

    public void onSuccess() {
        AlibcLogger.d("AlibcLogin", "MemberSDK init success");
        this.b.f = (LoginService) MemberSDK.getService(LoginService.class);
        if (this.b.f != null) {
            this.a.onSuccess(0);
        } else {
            this.a.onFailure(this.b.c, this.b.d);
        }
        this.b.e = true;
    }
}

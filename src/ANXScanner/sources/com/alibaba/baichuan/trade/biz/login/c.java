package com.alibaba.baichuan.trade.biz.login;

import com.ali.auth.third.login.callback.LogoutCallback;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

class c implements LogoutCallback {
    final /* synthetic */ AlibcLoginCallback a;
    final /* synthetic */ AlibcLogin b;

    c(AlibcLogin alibcLogin, AlibcLoginCallback alibcLoginCallback) {
        this.b = alibcLogin;
        this.a = alibcLoginCallback;
    }

    public void onFailure(int i, String str) {
        AlibcLogger.d("AlibcLogin", "logout失败");
        this.a.onFailure(i, str);
    }

    public void onSuccess() {
        AlibcLogger.d("AlibcLogin", "logout成功");
        this.a.onSuccess(3);
    }
}

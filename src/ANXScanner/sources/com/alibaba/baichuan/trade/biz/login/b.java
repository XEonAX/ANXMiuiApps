package com.alibaba.baichuan.trade.biz.login;

import com.ali.auth.third.core.callback.LoginCallback;
import com.ali.auth.third.core.model.Session;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

class b implements LoginCallback {
    final /* synthetic */ AlibcLoginCallback a;
    final /* synthetic */ AlibcLogin b;

    b(AlibcLogin alibcLogin, AlibcLoginCallback alibcLoginCallback) {
        this.b = alibcLogin;
        this.a = alibcLoginCallback;
    }

    public void onFailure(int i, String str) {
        AlibcLogger.d("AlibcLogin", "auth失败");
        this.b.a(i);
        this.a.onFailure(i, str);
    }

    public void onSuccess(Session session) {
        AlibcLogger.d("AlibcLogin", "auth成功");
        this.b.b();
        this.a.onSuccess(2);
    }
}

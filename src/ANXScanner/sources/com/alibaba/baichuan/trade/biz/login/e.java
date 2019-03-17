package com.alibaba.baichuan.trade.biz.login;

import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

class e implements AlibcLoginCallback {
    final /* synthetic */ d a;

    e(d dVar) {
        this.a = dVar;
    }

    public void onFailure(int i, String str) {
        AlibcLogger.d("AlibcLoginInterceptor", "登出失败");
    }

    public void onSuccess(int i) {
        AlibcLogger.d("AlibcLoginInterceptor", "登出成功");
    }
}

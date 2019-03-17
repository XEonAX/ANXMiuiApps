package com.alibaba.baichuan.trade.biz;

import com.alibaba.baichuan.trade.biz.login.AlibcLoginCallback;

final class a implements AlibcLoginCallback {
    final /* synthetic */ boolean[] a;

    a(boolean[] zArr) {
        this.a = zArr;
    }

    public void onFailure(int i, String str) {
        this.a[0] = false;
        AlibcMiniTradeBiz.b.countDown();
    }

    public void onSuccess(int i) {
        this.a[0] = true;
        AlibcMiniTradeBiz.b.countDown();
    }
}

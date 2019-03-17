package com.alibaba.baichuan.trade.biz.login;

public interface AlibcLoginCallback {
    void onFailure(int i, String str);

    void onSuccess(int i);
}

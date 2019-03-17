package com.alibaba.baichuan.trade.biz.auth;

public interface AlibcAuthListener {
    void onCancel();

    void onError(String str, String str2);

    void onReTry();

    void onSuccess();
}

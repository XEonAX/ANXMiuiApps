package com.alipay.sdk.app;

import com.alibaba.baichuan.android.trade.AlibcTrade;

public enum j {
    SUCCEEDED(9000, "处理成功"),
    FAILED(4000, "系统繁忙，请稍后再试"),
    CANCELED(6001, "用户取消"),
    NETWORK_ERROR(6002, "网络连接异常"),
    PARAMS_ERROR(4001, AlibcTrade.ERRMSG_PARAM_ERROR),
    DOUBLE_REQUEST(5000, "重复请求"),
    PAY_WAITTING(8000, "支付结果确认中");
    
    public int h;
    public String i;

    private j(int i, String str) {
        this.h = i;
        this.i = str;
    }

    private void b(int i) {
        this.h = i;
    }

    private int a() {
        return this.h;
    }

    private void a(String str) {
        this.i = str;
    }

    private String b() {
        return this.i;
    }

    public static j a(int i) {
        switch (i) {
            case 4001:
                return PARAMS_ERROR;
            case 5000:
                return DOUBLE_REQUEST;
            case 6001:
                return CANCELED;
            case 6002:
                return NETWORK_ERROR;
            case 8000:
                return PAY_WAITTING;
            case 9000:
                return SUCCEEDED;
            default:
                return FAILED;
        }
    }
}

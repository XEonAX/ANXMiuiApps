package com.alibaba.baichuan.trade.biz.core.taoke;

public interface AlibcTaokeTraceCallback {
    public static final int TYPE_ASYNC = 0;
    public static final int TYPE_SYNC = 1;

    void getTaokeUrl(int i, String str);
}

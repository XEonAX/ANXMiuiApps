package com.alibaba.baichuan.trade.common.adapter.mtop;

import com.alibaba.baichuan.trade.common.Environment;

public interface AlibcNetWork extends NetworkClient {
    void changeEnvMode(Environment environment);

    int init();

    void setTTID(String str);

    void turnOffDebug();

    void turnOnDebug();
}

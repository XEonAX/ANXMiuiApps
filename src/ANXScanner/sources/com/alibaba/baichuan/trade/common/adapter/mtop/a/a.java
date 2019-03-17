package com.alibaba.baichuan.trade.common.adapter.mtop.a;

import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.adapter.mtop.AlibcNetWork;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkRequest;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;

public class a implements AlibcNetWork {
    public void changeEnvMode(Environment environment) {
    }

    public int init() {
        return 1;
    }

    public NetworkResponse sendRequest(NetworkRequest networkRequest) {
        return null;
    }

    public boolean sendRequest(NetworkRequestListener networkRequestListener, NetworkRequest networkRequest) {
        return false;
    }

    public void setTTID(String str) {
    }

    public void turnOffDebug() {
    }

    public void turnOnDebug() {
    }
}

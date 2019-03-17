package com.alibaba.baichuan.trade.common.adapter.mtop;

import com.alibaba.baichuan.trade.common.Environment;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import com.alibaba.baichuan.trade.common.adapter.mtop.a.b;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;

public class AlibcMtop implements NetworkClient {
    public static final int ERR_CODE = 3;
    public static final String ERR_MSG = "mtop初始化失败";
    public static final int MTOP_INIT_AD = 2;
    public static final int MTOP_INIT_FAIL = 1;
    public static final int MTOP_INIT_SUCCESS = 0;
    private AlibcNetWork a;
    private boolean b;

    private static class a {
        public static AlibcMtop a = new AlibcMtop();
    }

    private AlibcMtop() {
        if (a()) {
            this.a = new b();
        } else {
            this.a = new com.alibaba.baichuan.trade.common.adapter.mtop.a.a();
        }
    }

    private boolean a() {
        try {
            if (Class.forName("mtopsdk.mtop.intf.Mtop") != null) {
                return true;
            }
        } catch (Throwable e) {
            AlibcLogger.e("AlibcMtop", "no mtop", e);
        }
        return false;
    }

    public static AlibcMtop getInstance() {
        return a.a;
    }

    public void changeEnvMode(Environment environment) {
        if (this.b) {
            this.a.changeEnvMode(environment);
        }
    }

    public synchronized int init() {
        int i = 1;
        synchronized (this) {
            if (this.b) {
                i = 2;
            } else if (this.a.init() == 0) {
                this.b = true;
                i = 0;
            }
        }
        return i;
    }

    public NetworkResponse sendRequest(NetworkRequest networkRequest) {
        return this.b ? this.a.sendRequest(networkRequest) : null;
    }

    public boolean sendRequest(NetworkRequestListener networkRequestListener, NetworkRequest networkRequest) {
        return this.b ? this.a.sendRequest(networkRequestListener, networkRequest) : false;
    }

    public void setTTID(String str) {
        if (this.b) {
            this.a.setTTID(str);
        }
    }

    public void turnOffDebug() {
        if (this.b) {
            this.a.turnOffDebug();
        }
    }

    public void turnOnDebug() {
        if (this.b) {
            this.a.turnOnDebug();
        }
    }
}

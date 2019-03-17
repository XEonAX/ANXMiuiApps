package com.alibaba.baichuan.trade.common.adapter.mtop;

import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import java.io.Serializable;
import java.util.Map;

public abstract class NetworkBusiness {
    protected String API_NAME = "";
    protected String API_VERSION = "1.0";
    protected boolean IS_AUTH = false;
    protected boolean IS_NEED_LOGINE = false;
    protected boolean IS_POST = true;
    protected Boolean IS_WUA = Boolean.valueOf(false);
    protected int TIME_OUT = -1;

    private NetworkRequest a(Map<String, Serializable> map) {
        NetworkRequest networkRequest = new NetworkRequest();
        networkRequest.apiName = this.API_NAME;
        networkRequest.apiVersion = this.API_VERSION;
        networkRequest.needLogin = this.IS_NEED_LOGINE;
        networkRequest.needWua = this.IS_WUA.booleanValue();
        networkRequest.needAuth = this.IS_AUTH;
        networkRequest.isPost = this.IS_POST;
        networkRequest.timeOut = this.TIME_OUT;
        networkRequest.requestType = networkRequest.hashCode();
        networkRequest.paramMap = map;
        return networkRequest;
    }

    public NetworkResponse sendRequest(Map<String, Serializable> map) {
        return AlibcMtop.getInstance().sendRequest(a(map));
    }

    public boolean sendRequest(Map<String, Serializable> map, NetworkRequestListener networkRequestListener) {
        return AlibcMtop.getInstance().sendRequest(networkRequestListener, a(map));
    }
}

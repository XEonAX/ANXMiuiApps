package com.alibaba.baichuan.trade.biz.core.taoke.a;

import com.alibaba.baichuan.trade.common.adapter.mtop.AlibcMtop;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkRequest;
import com.alimama.tunion.trade.base.ITUnionNetworkMtop;
import com.alimama.tunion.trade.net.ITUnionNetReqCallback;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class c implements ITUnionNetworkMtop {
    public boolean a = true;

    public Map<String, Serializable> a(Map<String, String> map) {
        Map<String, Serializable> hashMap = new HashMap();
        hashMap.putAll(map);
        return hashMap;
    }

    public boolean getMtopEnabled() {
        return this.a;
    }

    public void sendRequest(TUnionNetworkRequest tUnionNetworkRequest, ITUnionNetReqCallback iTUnionNetReqCallback) {
        if (tUnionNetworkRequest != null) {
            NetworkRequest networkRequest = new NetworkRequest();
            networkRequest.accessToken = tUnionNetworkRequest.getMtopAccessToken();
            networkRequest.apiName = tUnionNetworkRequest.getMtopApiName();
            networkRequest.apiVersion = tUnionNetworkRequest.getMtopApiVersion();
            networkRequest.authParams = tUnionNetworkRequest.getMtopAuthParams();
            networkRequest.extHeaders = tUnionNetworkRequest.getMtopExtHeaders();
            networkRequest.isPost = tUnionNetworkRequest.isPost();
            networkRequest.isVip = tUnionNetworkRequest.isMtopIsVip();
            networkRequest.needAuth = tUnionNetworkRequest.isMtopNeedAuth();
            networkRequest.needCache = tUnionNetworkRequest.isMtopNeedCache();
            networkRequest.needLogin = tUnionNetworkRequest.isMtopNeedLogin();
            networkRequest.needWua = tUnionNetworkRequest.isMtopNeedWua();
            networkRequest.openAppKey = tUnionNetworkRequest.getMtopOpenAppKey();
            networkRequest.paramMap = a(tUnionNetworkRequest.getParamMap());
            networkRequest.requestType = tUnionNetworkRequest.getMtopRequestType();
            networkRequest.timeOut = tUnionNetworkRequest.getTimeOut();
            AlibcMtop.getInstance().sendRequest(new d(this, iTUnionNetReqCallback), networkRequest);
        }
    }
}

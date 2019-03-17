package com.alibaba.baichuan.trade.biz.alipay;

import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkBusiness;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alibaba.baichuan.trade.common.utils.JSONUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import mtopsdk.mtop.util.ErrorConstant;

public class f extends NetworkBusiness {
    public f() {
        this.API_NAME = "mtop.alibaba.baichuan.nbsdk.pay.query";
    }

    public static AliPayResult a(NetworkResponse networkResponse) {
        return (networkResponse.data == null || !networkResponse.errorCode.equals(ErrorConstant.ERRCODE_SUCCESS)) ? null : AlibcAlipay.parseAliPayResult(networkResponse.jsonData);
    }

    private HashMap<String, Serializable> b(List<String> list) {
        HashMap<String, Serializable> hashMap = new HashMap();
        hashMap.put("orderIdList", JSONUtils.toJsonString(list));
        return hashMap;
    }

    public NetworkResponse a(List<String> list) {
        return sendRequest(b(list));
    }
}

package com.alibaba.baichuan.trade.biz.core.taoke.b;

import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkBusiness;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkResponse;
import com.alipay.sdk.packet.d;
import mtopsdk.mtop.util.ErrorConstant;

public class b extends NetworkBusiness {
    public b() {
        this.API_NAME = "mtop.alibaba.baichuan.nbsdk.sclick.create";
    }

    public static String a(NetworkResponse networkResponse) {
        return (networkResponse.data != null && networkResponse.isSuccess && networkResponse.errorCode.equals(ErrorConstant.ERRCODE_SUCCESS)) ? networkResponse.data.get(d.k).toString() : null;
    }
}

package com.alibaba.baichuan.trade.common.adapter.mtop.a;

import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkClient.NetworkRequestListener;
import com.alibaba.baichuan.trade.common.adapter.mtop.NetworkRequest;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTradeHelper;
import com.taobao.tao.remotebusiness.IRemoteBaseListener;
import mtopsdk.mtop.domain.BaseOutDo;
import mtopsdk.mtop.domain.MtopResponse;

class c implements IRemoteBaseListener {
    final /* synthetic */ NetworkRequestListener a;
    final /* synthetic */ NetworkRequest b;
    final /* synthetic */ b c;

    c(b bVar, NetworkRequestListener networkRequestListener, NetworkRequest networkRequest) {
        this.c = bVar;
        this.a = networkRequestListener;
        this.b = networkRequest;
    }

    public void onError(int i, MtopResponse mtopResponse, Object obj) {
        this.c.a(mtopResponse);
        this.a.onError(this.b.requestType, this.c.b(mtopResponse));
        this.c.a(mtopResponse, mtopResponse.getRetCode(), "errmsg = " + mtopResponse.getRetMsg() + " ,api = " + mtopResponse.getApi());
    }

    public void onSuccess(int i, MtopResponse mtopResponse, BaseOutDo baseOutDo, Object obj) {
        this.c.a(mtopResponse);
        this.a.onSuccess(this.b.requestType, this.c.b(mtopResponse));
        AlibcUserTradeHelper.sendUseabilitySuccess("InvokeMtop");
    }

    public void onSystemError(int i, MtopResponse mtopResponse, Object obj) {
        this.c.a(mtopResponse);
        this.a.onError(this.b.requestType, this.c.b(mtopResponse));
        this.c.a(mtopResponse, mtopResponse.getRetCode(), "errmsg = " + mtopResponse.getRetMsg() + " ,api = " + mtopResponse.getApi());
    }
}

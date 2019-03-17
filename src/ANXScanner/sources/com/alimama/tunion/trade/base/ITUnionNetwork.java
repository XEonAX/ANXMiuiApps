package com.alimama.tunion.trade.base;

import com.alimama.tunion.trade.net.ITUnionNetReqCallback;
import com.alimama.tunion.trade.net.TUnionNetworkRequest;

public interface ITUnionNetwork {
    void sendRequest(TUnionNetworkRequest tUnionNetworkRequest, ITUnionNetReqCallback iTUnionNetReqCallback);
}

package com.ali.auth.third.core.service;

import com.ali.auth.third.core.model.RpcRequest;
import com.ali.auth.third.core.model.RpcRequestCallbackWithCode;
import com.ali.auth.third.core.model.RpcResponse;

public interface RpcService {
    String getDeviceId();

    <T> RpcResponse<T> invoke(RpcRequest rpcRequest, Class<T> cls);

    String invoke(RpcRequest rpcRequest);

    void logout();

    void registerSessionInfo(String str, String str2);

    <T extends RpcResponse<?>> void remoteBusiness(RpcRequest rpcRequest, Class<T> cls, RpcRequestCallbackWithCode rpcRequestCallbackWithCode);
}

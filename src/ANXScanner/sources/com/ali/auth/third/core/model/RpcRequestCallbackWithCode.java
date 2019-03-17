package com.ali.auth.third.core.model;

public interface RpcRequestCallbackWithCode {
    void onError(String str, RpcResponse rpcResponse);

    void onSuccess(RpcResponse rpcResponse);

    void onSystemError(String str, RpcResponse rpcResponse);
}

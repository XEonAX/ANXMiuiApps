package com.tencent.mm.opensdk.diffdev.a;

import com.ali.auth.third.core.rpc.protocol.RpcException.ErrorCode;
import com.alibaba.wireless.security.SecExceptionCode;

public enum g {
    UUID_EXPIRED(402),
    UUID_CANCELED(403),
    UUID_SCANED(SecExceptionCode.SEC_ERROR_DYN_ENC_GET_DATA_FILE_KEY_FAILED),
    UUID_CONFIRM(SecExceptionCode.SEC_ERROR_DYN_ENC_GET_ENCRYPT_KEY_FAILED),
    UUID_KEEP_CONNECT(ErrorCode.API_UNAUTHORIZED),
    UUID_ERROR(500);
    
    private int code;

    private g(int i) {
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }

    public final String toString() {
        return "UUIDStatusCode:" + this.code;
    }
}

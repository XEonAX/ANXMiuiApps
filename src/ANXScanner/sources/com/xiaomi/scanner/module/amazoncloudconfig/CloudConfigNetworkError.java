package com.xiaomi.scanner.module.amazoncloudconfig;

import com.alibaba.wireless.security.SecExceptionCode;

public enum CloudConfigNetworkError {
    ENCODING_ERROR(201, "network encoding error"),
    PROTOCOL_ERROR(202, "network protocol error"),
    REDIRECT_ERROR(203, "network redirect error"),
    RESPONSE_ERROR(204, "network response error"),
    TIMEOUT_ERROR(SecExceptionCode.SEC_ERROR_STA_STORE_INCORRECT_DATA_FILE_DATA, "network timeout error"),
    URL_ERROR(SecExceptionCode.SEC_ERROR_STA_STORE_ILLEGEL_KEY, "network_url_error"),
    OTHER_ERROR(SecExceptionCode.SEC_ERROR_STA_STORE_NO_MEMORY, "network other error");
    
    private int errorCode;
    private String errorMessage;

    private CloudConfigNetworkError(int code, String message) {
        this.errorCode = code;
        this.errorMessage = message;
    }

    public CloudConfigNetworkError withMessage(String message) {
        this.errorMessage = message;
        return this;
    }
}

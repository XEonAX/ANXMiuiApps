package com.xiaomi.opensdk.exception;

public class ServerException extends Exception {
    private int statusCode;

    public ServerException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
    }

    public ServerException(String detailMessage) {
        super(detailMessage);
    }

    public int getStatusCode() {
        return this.statusCode;
    }
}

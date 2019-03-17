package com.baidu.homework.model;

public abstract class NetworkResult {
    public static final int STATUS_FREQUENCY_ERROR = 4;
    public static final int STATUS_NETWORK_ERROR = 1;
    public static final int STATUS_PARSE_ERROR = 3;
    public static final int STATUS_SERVER_ERROR = 2;
    public static final int STATUS_SUCCESS = 0;
    private int status;

    public NetworkResult(int i) {
        this.status = i;
    }

    public int getStatus() {
        return this.status;
    }
}

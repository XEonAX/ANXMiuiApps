package com.uploader.export;

import android.support.annotation.NonNull;

public class EnvironmentElement {
    public final String appKey;
    public final String authCode;
    public final int environment;
    public final String host;
    public final String ipAddress;

    public EnvironmentElement(int environment, @NonNull String appKey, @NonNull String host, @NonNull String ipAddress, @NonNull String authCode) {
        this.environment = environment;
        this.appKey = appKey;
        this.host = host;
        this.ipAddress = ipAddress;
        this.authCode = authCode;
    }

    public EnvironmentElement(int environment, @NonNull String appKey, @NonNull String host, @NonNull String ipAddress) {
        this.environment = environment;
        this.appKey = appKey;
        this.host = host;
        this.ipAddress = ipAddress;
        this.authCode = "";
    }
}

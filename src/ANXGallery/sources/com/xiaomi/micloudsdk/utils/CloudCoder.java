package com.xiaomi.micloudsdk.utils;

import java.util.Map;

public class CloudCoder {
    private static long sServerDateOffset;

    public static String generateSignature(String method, String requestUrl, Map<String, String> params, String security) {
        return Coder.generateSignature(method, requestUrl, params, security);
    }

    public static void setServerDateOffset(long serverDateOffset) {
        sServerDateOffset = serverDateOffset;
    }

    public static String generateNonce() {
        return generateNonce(System.currentTimeMillis() + sServerDateOffset);
    }

    public static String generateNonce(long serverTime) {
        return Coder.generateNonce(serverTime);
    }
}

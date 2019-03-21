package com.xiaomi.smack.packet;

public class StreamError {
    private String code;

    public StreamError(String code) {
        this.code = code;
    }

    public String toString() {
        StringBuilder txt = new StringBuilder();
        txt.append("stream:error (").append(this.code).append(")");
        return txt.toString();
    }
}

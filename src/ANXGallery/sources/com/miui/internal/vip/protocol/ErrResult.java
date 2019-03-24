package com.miui.internal.vip.protocol;

public class ErrResult {
    public int code;
    public String err;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ErrResult{err='");
        stringBuilder.append(this.err);
        stringBuilder.append('\'');
        stringBuilder.append(", code=");
        stringBuilder.append(this.code);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}

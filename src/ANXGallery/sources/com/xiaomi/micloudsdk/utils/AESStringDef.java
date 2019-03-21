package com.xiaomi.micloudsdk.utils;

import android.text.TextUtils;

public class AESStringDef {
    private String IV;
    private String data;
    private String version;

    static class InvalidAESDataException extends Exception {
        InvalidAESDataException(String msg) {
            super(msg);
        }
    }

    private AESStringDef() {
    }

    public String toString() {
        return String.format("%s:%s:%s", new Object[]{this.version, this.IV, this.data});
    }

    public static AESStringDef getInstance(String AESString) throws InvalidAESDataException {
        String[] tokens = TextUtils.split(AESString, ":");
        if (tokens == null || tokens.length != 3) {
            throw new InvalidAESDataException("invalid encrypt string format,the correct format is version:iv:content but original string is:" + AESString);
        }
        AESStringDef instance = new AESStringDef();
        instance.version = tokens[0];
        instance.IV = tokens[1];
        instance.data = tokens[2];
        return instance;
    }

    public static AESStringDef getInstance(String version, String IV, String data) throws InvalidAESDataException {
        if (TextUtils.isEmpty(version) || TextUtils.isEmpty(IV) || TextUtils.isEmpty(data)) {
            throw new InvalidAESDataException("invalid AES data");
        }
        AESStringDef instance = new AESStringDef();
        instance.version = version;
        instance.IV = IV;
        instance.data = data;
        return instance;
    }

    public String getVersion() {
        return this.version;
    }

    public String getIV() {
        return this.IV;
    }

    public String getData() {
        return this.data;
    }
}

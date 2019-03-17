package com.taobao.ma.decode;

import java.io.Serializable;
import java.util.Arrays;

public class DecodeResult implements Serializable {
    private static final long serialVersionUID = -1127433175886611037L;
    public byte[] bytes;
    public byte[] decodeBytes;
    public int height;
    public String hiddenData;
    public String strCode;
    public int subType;
    public int type;
    public int width;
    public int x;
    public int[] xCorner;
    public int y;
    public int[] yCorner;

    public DecodeResult(int type, int subType, String strCode) {
        this.type = type;
        this.subType = subType;
        this.strCode = strCode;
    }

    public DecodeResult(int type, int subType, byte[] bytes, int x, int y, int width, int height) {
        this.type = type;
        this.subType = subType;
        this.bytes = bytes;
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    public DecodeResult(int type, int subType, byte[] bytes, int x, int y, int width, int height, byte[] decodeBytes) {
        this.type = type;
        this.subType = subType;
        this.bytes = bytes;
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        this.decodeBytes = decodeBytes;
    }

    public DecodeResult(int type, int subType, byte[] bytes, int x, int y, int width, int height, byte[] decodeBytes, String hiddenData) {
        this.type = type;
        this.subType = subType;
        this.bytes = bytes;
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        this.decodeBytes = decodeBytes;
        this.hiddenData = hiddenData;
        this.xCorner = new int[4];
        this.yCorner = new int[4];
    }

    public DecodeResult(int type, int subType, byte[] bytes) {
        this.type = type;
        this.subType = subType;
        this.bytes = bytes;
    }

    public DecodeResult(int type, int subType, byte[] bytes, byte[] decodeBytes) {
        this.type = type;
        this.subType = subType;
        this.bytes = bytes;
        this.decodeBytes = decodeBytes;
    }

    public String toString() {
        return "DecodeResult [type=" + this.type + ", subType=" + this.subType + ", strCode=" + this.strCode + ", bytes=" + Arrays.toString(this.bytes) + ", x=" + this.x + ", y=" + this.y + ", width=" + this.width + ", height=" + this.height + ", decodeBytes=" + Arrays.toString(this.decodeBytes) + ", hiddenData=" + this.hiddenData + "]";
    }
}

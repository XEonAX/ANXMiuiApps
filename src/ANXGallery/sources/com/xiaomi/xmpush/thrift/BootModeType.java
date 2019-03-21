package com.xiaomi.xmpush.thrift;

public enum BootModeType {
    START(0),
    BIND(1);
    
    private final int value;

    private BootModeType(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }
}

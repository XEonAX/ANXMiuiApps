package com.xiaomi.xmpush.thrift;

public enum ConfigType {
    INT(1),
    LONG(2),
    STRING(3),
    BOOLEAN(4);
    
    private final int value;

    private ConfigType(int value) {
        this.value = value;
    }

    public static ConfigType findByValue(int value) {
        switch (value) {
            case 1:
                return INT;
            case 2:
                return LONG;
            case 3:
                return STRING;
            case 4:
                return BOOLEAN;
            default:
                return null;
        }
    }
}

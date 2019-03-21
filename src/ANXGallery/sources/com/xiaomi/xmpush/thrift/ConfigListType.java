package com.xiaomi.xmpush.thrift;

public enum ConfigListType {
    MISC_CONFIG(1),
    PLUGIN_CONFIG(2);
    
    private final int value;

    private ConfigListType(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public static ConfigListType findByValue(int value) {
        switch (value) {
            case 1:
                return MISC_CONFIG;
            case 2:
                return PLUGIN_CONFIG;
            default:
                return null;
        }
    }
}

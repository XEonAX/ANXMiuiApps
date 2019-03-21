package com.xiaomi.xmpush.thrift;

public enum RegistrationReason {
    RegIdExpired(0),
    PackageUnregistered(1),
    Init(2);
    
    private final int value;

    private RegistrationReason(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public static RegistrationReason findByValue(int value) {
        switch (value) {
            case 0:
                return RegIdExpired;
            case 1:
                return PackageUnregistered;
            case 2:
                return Init;
            default:
                return null;
        }
    }
}

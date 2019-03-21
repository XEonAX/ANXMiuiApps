package com.xiaomi.xmpush.thrift;

public enum CoordinateProvider {
    Baidu(0),
    Tencent(1),
    AutoNavi(2),
    Google(3),
    GPS(4);
    
    private final int value;

    private CoordinateProvider(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public static CoordinateProvider findByValue(int value) {
        switch (value) {
            case 0:
                return Baidu;
            case 1:
                return Tencent;
            case 2:
                return AutoNavi;
            case 3:
                return Google;
            case 4:
                return GPS;
            default:
                return null;
        }
    }
}

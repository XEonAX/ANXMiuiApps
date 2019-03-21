package com.xiaomi.xmpush.thrift;

public enum GeoType {
    Circle(0),
    Polygon(1);
    
    private final int value;

    private GeoType(int value) {
        this.value = value;
    }

    public int getValue() {
        return this.value;
    }

    public static GeoType findByValue(int value) {
        switch (value) {
            case 0:
                return Circle;
            case 1:
                return Polygon;
            default:
                return null;
        }
    }
}

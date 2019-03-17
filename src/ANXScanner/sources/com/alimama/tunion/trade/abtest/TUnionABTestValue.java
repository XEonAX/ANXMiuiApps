package com.alimama.tunion.trade.abtest;

public enum TUnionABTestValue {
    NO(0),
    YES(1),
    INVALID(2);
    
    private int a;

    private TUnionABTestValue(int i) {
        this.a = i;
    }

    public String toString() {
        return "" + this.a;
    }
}

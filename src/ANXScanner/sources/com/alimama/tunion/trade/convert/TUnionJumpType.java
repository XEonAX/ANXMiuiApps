package com.alimama.tunion.trade.convert;

public enum TUnionJumpType {
    H5(0),
    NATIVE(1),
    BROWSER(3);
    
    private int a;

    private TUnionJumpType(int i) {
        this.a = i;
    }

    public String toString() {
        return "" + this.a;
    }
}

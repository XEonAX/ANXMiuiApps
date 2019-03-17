package com.ali.auth.third.core.config;

import mtopsdk.common.util.SymbolExpUtil;

public class Version {
    private int a;
    private int b;
    private int c;

    public Version(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public String toString() {
        return this.a + SymbolExpUtil.SYMBOL_DOT + this.b + SymbolExpUtil.SYMBOL_DOT + this.c;
    }
}

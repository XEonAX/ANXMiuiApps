package com.taobao.ma.common.result;

public class MaResult {
    private final String text;
    private final MaType type;

    public MaResult(MaType type, String text) {
        this.type = type;
        this.text = text;
    }

    public MaType getType() {
        return this.type;
    }

    public String getText() {
        return this.text;
    }

    public String toString() {
        return "MaResult [type=" + this.type + ", text=" + this.text + "]";
    }
}

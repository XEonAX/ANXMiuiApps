package com.taobao.ma.qr.common.result;

import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaType;

public class Ma4GResult extends MaResult {
    private String signature;

    public Ma4GResult(MaType type, String text) {
        super(type, text);
    }

    public Ma4GResult(MaType type, String text, String signature) {
        this(type, text);
        this.signature = signature;
    }

    public String getSignature() {
        return this.signature;
    }
}

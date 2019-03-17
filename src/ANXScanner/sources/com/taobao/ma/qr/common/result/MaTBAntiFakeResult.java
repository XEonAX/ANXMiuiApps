package com.taobao.ma.qr.common.result;

import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaType;
import com.taobao.ma.util.StringUtils;

public class MaTBAntiFakeResult extends MaResult {
    private String hiddenData;

    public MaTBAntiFakeResult(MaType type, String text) {
        super(type, text);
    }

    public MaTBAntiFakeResult(MaType type, String text, String hiddenData) {
        this(type, text);
        this.hiddenData = hiddenData;
    }

    public String getHiddenData() {
        return this.hiddenData;
    }

    public boolean exist() {
        return !StringUtils.isEmpty(this.hiddenData);
    }
}

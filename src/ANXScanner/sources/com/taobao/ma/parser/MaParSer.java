package com.taobao.ma.parser;

import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaWapperResult;

public abstract class MaParSer {
    public abstract MaResult decode(MaWapperResult maWapperResult);
}

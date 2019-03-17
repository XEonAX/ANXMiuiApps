package com.taobao.ma.qr.parser;

import com.taobao.ma.analyze.helper.MaAnalyzeHelper;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaWapperResult;
import com.taobao.ma.parser.MaParSer;

public class MaDMParSer extends MaParSer {
    public MaResult decode(MaWapperResult result) {
        if (MaAnalyzeHelper.isDMCode(result.type, result.maType, result.subType)) {
            return new MaResult(result.maType, result.strCode);
        }
        return null;
    }
}

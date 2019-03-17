package com.taobao.ma.bar.parser;

import com.taobao.ma.analyze.helper.MaAnalyzeHelper;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaWapperResult;
import com.taobao.ma.parser.MaParSer;

public class MaBarParSer extends MaParSer {
    public MaResult decode(MaWapperResult result) {
        if (MaAnalyzeHelper.isBarCode(result.type, result.subType)) {
            return new MaResult(MaAnalyzeHelper.getMaType(result), result.strCode);
        }
        return null;
    }
}

package com.taobao.ma.qr.parser;

import com.taobao.ma.analyze.helper.MaAnalyzeHelper;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaWapperResult;
import com.taobao.ma.parser.MaParSer;
import com.taobao.ma.qr.common.result.MaTBAntiFakeResult;

public class MaTBAntiFakeParSer extends MaParSer {
    public MaResult decode(MaWapperResult result) {
        if (MaAnalyzeHelper.isTBAntiFakeCode(result.type, result.maType)) {
            return new MaTBAntiFakeResult(result.maType, result.strCode, result.hiddenData);
        }
        return null;
    }
}

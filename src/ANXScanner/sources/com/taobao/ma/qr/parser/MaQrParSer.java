package com.taobao.ma.qr.parser;

import com.taobao.ma.analyze.helper.MaAnalyzeHelper;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaWapperResult;
import com.taobao.ma.parser.MaParSer;
import com.taobao.ma.qr.common.result.MaQrResult;

public class MaQrParSer extends MaParSer {
    public MaResult decode(MaWapperResult result) {
        if (MaAnalyzeHelper.isQrCode(result.type, result.maType, result.subType)) {
            return new MaQrResult(result.maType, result.strCode, result.xCorner, result.yCorner, result.x, result.y, result.width, result.height);
        }
        return null;
    }
}

package com.taobao.ma.qr.parser;

import android.util.Base64;
import com.taobao.ma.analyze.helper.MaAnalyzeHelper;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.common.result.MaWapperResult;
import com.taobao.ma.parser.MaParSer;
import com.taobao.ma.qr.common.result.Ma4GResult;

public class Ma4GParSer extends MaParSer {
    public MaResult decode(MaWapperResult result) {
        if (!MaAnalyzeHelper.is4GCode(result.type, result.maType, result.subType)) {
            return null;
        }
        return new Ma4GResult(result.maType, result.strCode, Base64.encodeToString(result.decodeBytes, 0));
    }
}

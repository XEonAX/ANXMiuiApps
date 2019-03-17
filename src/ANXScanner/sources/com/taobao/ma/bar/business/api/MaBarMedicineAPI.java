package com.taobao.ma.bar.business.api;

import com.taobao.ma.analyze.helper.MaAnalyzeHelper;
import com.taobao.ma.bar.business.helper.MaBarBusinessHelper;
import com.taobao.ma.bar.common.constants.MaBarConstants;
import com.taobao.ma.common.usertrack.UTLogger;
import com.taobao.ma.core.Ma;
import com.taobao.ma.util.StringUtils;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public class MaBarMedicineAPI {
    public static String getMedicinePageUrl(String barcode) {
        if (StringUtils.isEmpty(barcode) || !MaAnalyzeHelper.isMedicineCode(barcode)) {
            return null;
        }
        String url = Ma.getMaConfig().isDebug ? MaBarConstants.BARCODE_SHOPPING_URL_WAP : MaBarConstants.BARCODE_SHOPPING_URL_OL;
        Map<String, String> params = Collections.synchronizedMap(new LinkedHashMap());
        params.putAll(Ma.getUtMap());
        params.put(MaBarConstants.UT_PARAM_KEY_BARCODE, barcode);
        params.put("type", "2");
        UTLogger.userTrack(MaBarConstants.UT_PARAM_KEY_BARCODE, barcode);
        return MaBarBusinessHelper.buildUrl(url, params);
    }
}

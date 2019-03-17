package com.taobao.ma.common.usertrack;

import com.taobao.ma.common.Version;
import com.taobao.ma.common.constants.MaConstants;
import com.taobao.ma.common.result.MaResult;
import com.taobao.ma.core.Ma;
import com.taobao.ma.util.StringUtils;
import com.ut.mini.UTAnalytics;
import com.ut.mini.UTHitBuilders.UTCustomHitBuilder;
import java.util.HashMap;
import java.util.Map;

public class UTLogger {
    public static void userTrack(MaResult result) {
        Map<String, String> lMap = new HashMap();
        lMap.put(MaConstants.UT_PARAM_KEY_SDK_VERSION, Version.SDK_VERSION_CODE);
        if (StringUtils.isNotEmpty(Ma.getMaConfig().onesdkversion)) {
            lMap.put(MaConstants.UT_PARAM_KEY_ONE_SDK_VERSION, Ma.getMaConfig().onesdkversion);
        }
        lMap.put("type", result.getType().toString());
        lMap.put(MaConstants.UT_PARAM_KEY_CONTENT, result.getText());
        send(lMap);
    }

    public static void userTrack(String type, String value) {
        Map<String, String> lMap = new HashMap();
        lMap.put(type, value);
        send(lMap);
    }

    private static void send(Map<String, String> map) {
        UTCustomHitBuilder customBuilder = new UTCustomHitBuilder(MaConstants.UT_EVENT_NAME);
        customBuilder.setProperties(map);
        UTAnalytics.getInstance().getTracker("ma_tracker").send(customBuilder.build());
    }
}

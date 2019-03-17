package com.taobao.ma.core;

import com.taobao.ma.common.config.MaConfig;
import com.taobao.ma.common.log.LogLevel;
import com.taobao.ma.common.log.MaLogger;
import java.util.HashMap;
import java.util.Map;

public class Ma {
    private static MaConfig mConfig = new MaConfig();
    private static Map<String, String> utMap = new HashMap();

    public static void init() {
        init(null);
    }

    public static void init(MaConfig config) {
        if (config != null) {
            mConfig = config;
            if (config.isDebug) {
                MaLogger.setLogLevel(LogLevel.DEBUG);
            }
            initUtMap();
        }
    }

    public static MaConfig getMaConfig() {
        return mConfig;
    }

    private static void initUtMap() {
        utMap.put("utdid", mConfig.utdid);
        utMap.put("appkey", mConfig.appkey);
    }

    public static Map<String, String> getUtMap() {
        return utMap;
    }
}

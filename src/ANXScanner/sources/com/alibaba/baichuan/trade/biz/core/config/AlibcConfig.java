package com.alibaba.baichuan.trade.biz.core.config;

import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AlibcConfig {
    private static final String c = AlibcConfig.class.getSimpleName();
    private Map<String, Map<String, Object>> a = new HashMap();
    private Set<String> b = new HashSet();

    public synchronized void addUpdateFilterKeys(String str) {
        this.b.add(str);
    }

    public synchronized Object getConfigValue(String str, String str2, Object obj) {
        Map map = (Map) this.a.get(str);
        if (!(map == null || map.get(str2) == null)) {
            obj = map.get(str2);
        }
        return obj;
    }

    public synchronized Map<String, Object> getGroupConfigMap(String str) {
        return (Map) this.a.get(str);
    }

    public synchronized void setConfigValue(String str, String str2, Object obj) {
        Map map = (Map) this.a.get(str);
        if (map == null) {
            map = new HashMap();
            this.a.put(str, map);
        }
        map.put(str2, obj);
    }

    public synchronized void updateConfig(AlibcConfigAdapter alibcConfigAdapter) {
        Map configData = alibcConfigAdapter.getConfigData();
        AlibcLogger.d(c, "config更新，config更新的参数值为:" + (configData != null ? configData : null) + "   configMem当前值=" + (this.a != null ? this.a : null) + "   filter名单=" + (this.b != null ? this.b.toString() : null));
        if (configData != null) {
            for (String str : configData.keySet()) {
                for (Entry entry : ((Map) configData.get(str)).entrySet()) {
                    if (!this.b.contains(entry.getKey()) || !str.equals("albbTradeConfig")) {
                        setConfigValue(str, (String) entry.getKey(), entry.getValue());
                    }
                }
            }
        }
        AlibcLogger.d(c, "更新后configMemdo=" + (this.a != null ? this.a.toString() : null));
    }
}

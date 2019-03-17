package com.alibaba.imagesearch.utils;

import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.imagesearch.Pailitao;
import com.ut.mini.UTAnalytics;
import com.ut.mini.UTHitBuilders.UTControlHitBuilder;
import java.util.HashMap;
import java.util.Map;

public class e {
    private static Map<String, String> a() {
        Map<String, String> hashMap = new HashMap();
        hashMap.put("appkey", AlibcTradeCommon.getAppKey());
        hashMap.put("utdid", AlibcTradeCommon.getUtdid());
        hashMap.put("taokePid", c.c().getTaokePid());
        hashMap.put("vendorId", c.c().getVendorId());
        hashMap.put("brand", c.c().getBrand());
        hashMap.put("version", Pailitao.VERSION);
        return hashMap;
    }

    public static void a(String str) {
        a(str, null);
    }

    public static void a(String str, String str2) {
        a(str, str2, null);
    }

    public static void a(String str, String str2, Map<String, String> map) {
        UTControlHitBuilder uTControlHitBuilder = new UTControlHitBuilder(str, str2);
        Map a = a();
        if (map != null) {
            a.putAll(map);
        }
        uTControlHitBuilder.setProperties(a);
        UTAnalytics.getInstance().getTracker("pailitao_open").send(uTControlHitBuilder.build());
    }

    public static void a(String str, Map<String, String> map) {
        a(str, "EnterPage", map);
    }
}

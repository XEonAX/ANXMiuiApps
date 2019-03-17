package com.alibaba.baichuan.android.trade;

import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.ut.mini.UTAnalytics;
import com.ut.mini.UTHitBuilders.UTCustomHitBuilder;

public class AlibcTradeTrack {
    public static final String AlibcTradeEventId_ContentClick = "BAICHUAN_CONTENT_CLICK";
    public static final String AlibcTradeEventId_Exposure = "BAICHUAN_EXPOSURE";

    public static class a {
        public String a;
        public String b;
        public String c;
        public String d;
        public String e;
        private String f;
    }

    public static void addTraceLog(String str, a aVar) {
        UTCustomHitBuilder uTCustomHitBuilder = new UTCustomHitBuilder(str);
        uTCustomHitBuilder.setEventPage(aVar.d);
        uTCustomHitBuilder.setProperty(AlibcConstants.SCM, aVar.a);
        uTCustomHitBuilder.setProperty(AlibcConstants.PVID, aVar.b);
        uTCustomHitBuilder.setProperty("puid", aVar.c);
        uTCustomHitBuilder.setProperty("pguid", aVar.f);
        uTCustomHitBuilder.setProperty("page", aVar.d);
        uTCustomHitBuilder.setProperty("label", aVar.e);
        UTAnalytics.getInstance().getDefaultTracker().send(uTCustomHitBuilder.build());
    }
}

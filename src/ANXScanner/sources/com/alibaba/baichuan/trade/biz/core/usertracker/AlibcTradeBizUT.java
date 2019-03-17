package com.alibaba.baichuan.trade.biz.core.usertracker;

import com.alibaba.baichuan.trade.biz.AlibcTradeBiz;
import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;

public class AlibcTradeBizUT {
    public static void sendInitHit4DAU() {
        AlibcUserTracker.getInstance().sendInitHit4DAU("19", AlibcTradeBiz.systemVersion);
    }
}

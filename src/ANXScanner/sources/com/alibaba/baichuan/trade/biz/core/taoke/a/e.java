package com.alibaba.baichuan.trade.biz.core.taoke.a;

import com.alibaba.baichuan.trade.common.adapter.ut.AlibcUserTracker;
import com.alimama.tunion.trade.base.ITUnionUT;
import java.util.Map;

public class e implements ITUnionUT {
    public void send(String str, String str2, Map<String, String> map) {
        AlibcUserTracker.getInstance().sendCustomHit(str2, str, map);
    }
}

package com.alibaba.baichuan.android.trade.c;

import com.alibaba.baichuan.android.trade.model.AlibcShowParams;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeShowParam.OpenType;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTaokeParam;
import com.alibaba.baichuan.trade.biz.context.AlibcTradeTrackParam;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import java.util.Map;
import java.util.Map.Entry;

public class b {
    public static AlibcTradeShowParam a(AlibcShowParams alibcShowParams) {
        AlibcTradeShowParam alibcTradeShowParam = new AlibcTradeShowParam();
        alibcTradeShowParam.setBackUrl(alibcShowParams.getBackUrl());
        alibcTradeShowParam.setClientType(alibcShowParams.getClientType());
        alibcTradeShowParam.setNativeOpenFailedMode(alibcShowParams.getNativeOpenFailedMode());
        alibcTradeShowParam.setIsClose(alibcShowParams.isClose());
        OpenType openType = OpenType.Auto;
        if (alibcShowParams.getOpenType() == com.alibaba.baichuan.android.trade.model.OpenType.H5) {
            openType = OpenType.H5;
        } else if (alibcShowParams.getOpenType() == com.alibaba.baichuan.android.trade.model.OpenType.Native) {
            openType = OpenType.Native;
        }
        alibcTradeShowParam.setOpenType(openType);
        alibcTradeShowParam.setOriginalOpenType(alibcTradeShowParam.getOpenType());
        alibcTradeShowParam.setProxyWebview(alibcShowParams.isProxyWebview());
        alibcTradeShowParam.setShowTitleBar(alibcShowParams.isShowTitleBar());
        alibcTradeShowParam.setTitle(alibcShowParams.getTitle());
        return alibcTradeShowParam;
    }

    public static AlibcTradeTaokeParam a(AlibcTaokeParams alibcTaokeParams) {
        if (alibcTaokeParams == null) {
            return null;
        }
        AlibcTradeTaokeParam alibcTradeTaokeParam = new AlibcTradeTaokeParam();
        alibcTradeTaokeParam.setSubPid(alibcTaokeParams.subPid).setUnionId(alibcTaokeParams.unionId).setPid(alibcTaokeParams.pid);
        if (alibcTaokeParams.isAdZoneIdExist()) {
            alibcTradeTaokeParam.adzoneid = alibcTaokeParams.adzoneid;
        }
        alibcTradeTaokeParam.extraParams = alibcTaokeParams.extraParams;
        return alibcTradeTaokeParam;
    }

    public static AlibcTradeTrackParam a(Map<String, String> map) {
        AlibcTradeTrackParam alibcTradeTrackParam = new AlibcTradeTrackParam();
        for (Entry entry : map.entrySet()) {
            alibcTradeTrackParam.put(entry.getKey(), entry.getValue());
        }
        return alibcTradeTrackParam;
    }
}

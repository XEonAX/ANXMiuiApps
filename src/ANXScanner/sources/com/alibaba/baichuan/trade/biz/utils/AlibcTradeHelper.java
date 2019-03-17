package com.alibaba.baichuan.trade.biz.utils;

import android.text.TextUtils;
import com.alibaba.baichuan.trade.biz.AlibcConstants;
import com.alibaba.baichuan.trade.biz.AlibcMiniTradeBiz;
import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.baichuan.trade.biz.core.config.AlibcConfigService;
import com.alibaba.baichuan.trade.biz.core.taoke.AlibcTaokeParams;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcCodeUtils;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mtopsdk.common.util.SymbolExpUtil;

public class AlibcTradeHelper {
    public static List<String> firstLevelKeys = Arrays.asList(new String[]{"isv_code", AlibcConstants.SCM, AlibcConstants.PVID});

    private static String a(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        map.put(AlibcConstants.TTID, AlibcMiniTradeBiz.getTTID());
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        Iterator it = map.keySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return !TextUtils.isEmpty(stringBuilder) ? AlibcCodeUtils.getBase64(new String(stringBuilder)) : stringBuilder.toString();
            } else {
                String str = (String) it.next();
                String str2 = (String) map.get(str);
                if (i2 != 0) {
                    stringBuilder.append("&");
                }
                try {
                    stringBuilder.append(str + "=" + URLEncoder.encode(new String(str2), SymbolExpUtil.CHARSET_UTF8));
                    i = i2 + 1;
                } catch (Exception e) {
                    AlibcLogger.e("AlibcTradeHelper", "构建Ybhpss参数错误：" + e.getMessage());
                    return null;
                }
            }
        }
    }

    public static Map<String, String> createUrlParams(Map<String, String> map) {
        Map<String, String> hashMap = new HashMap();
        hashMap.put(AlibcConstants.TTID, AlibcMiniTradeBiz.getTTID());
        hashMap.put(AlibcConstants.UMP_CHANNEL, "1-" + AlibcTradeCommon.getAppKey());
        hashMap.put(AlibcConstants.U_CHANNEL, "1-" + AlibcTradeCommon.getAppKey());
        if (map == null || map.size() == 0) {
            return hashMap;
        }
        if (map.get("isv_code") == null && AlibcConfigService.getInstance().getGlobalIsvCode() != null) {
            hashMap.put("isv_code", AlibcConfigService.getInstance().getGlobalIsvCode());
        }
        Map hashMap2 = new HashMap();
        for (String str : map.keySet()) {
            String str2 = (String) map.get(str);
            if (!(str2 == null || TextUtils.isEmpty(str2))) {
                if (firstLevelKeys.contains(str)) {
                    hashMap.put(str, str2);
                } else {
                    hashMap2.put(str, str2);
                }
            }
        }
        hashMap2.put(AlibcConstants.TTID, AlibcMiniTradeBiz.getTTID());
        CharSequence a = a(hashMap2);
        if (!(a == null || TextUtils.isEmpty(a))) {
            hashMap.put("ybhpss", a);
        }
        return hashMap;
    }

    public static void putTaokeParam2Map(Map<String, String> map, AlibcTaokeParams alibcTaokeParams) {
        if (alibcTaokeParams != null) {
            Map map2;
            if (map2 == null) {
                map2 = new HashMap();
            }
            if (alibcTaokeParams.pid != null) {
                map2.put(AppLinkConstants.PID, alibcTaokeParams.pid);
            }
            if (alibcTaokeParams.subPid != null) {
                map2.put("subpid", alibcTaokeParams.subPid);
            }
            if (alibcTaokeParams.unionId != null) {
                map2.put(AppLinkConstants.UNIONID, alibcTaokeParams.unionId);
            }
        }
    }
}

package com.alibaba.baichuan.trade.common.adapter.ut.impl;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class SpmTranslator {
    private Map<String, String> a = new HashMap();

    public String getSpm(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String str2 = (String) this.a.get(str);
        return TextUtils.isEmpty(str2) ? "" : str2;
    }

    public void registerRegular(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.a.put(str, str2);
        }
    }

    public void registerRegulars(Map<String, String> map) {
        if (map != null && map.size() > 0) {
            this.a.putAll(map);
        }
    }
}

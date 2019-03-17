package com.alibaba.baichuan.trade.biz.utils;

import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class AlibcSPData {
    public static final String TAG = "";
    public Map<String, Map<String, String>> config = new HashMap();

    public void formatFromJSON(JSONObject jSONObject) {
        try {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                Map hashMap = new HashMap();
                String str = (String) keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                Iterator keys2 = jSONObject2.keys();
                while (keys2.hasNext()) {
                    String str2 = (String) keys2.next();
                    hashMap.put(str2, jSONObject2.getString(str2));
                }
                this.config.put(str, hashMap);
            }
        } catch (JSONException e) {
            AlibcLogger.e("", "json转换为map失败");
            e.printStackTrace();
        }
    }

    public Map<String, Map<String, String>> getConfigData() {
        return this.config;
    }
}

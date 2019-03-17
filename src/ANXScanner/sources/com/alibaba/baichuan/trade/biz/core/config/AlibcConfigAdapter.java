package com.alibaba.baichuan.trade.biz.core.config;

import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class AlibcConfigAdapter {
    public static final String CHECK_GROUP_NAME = "group0";
    public static final String TAG = AlibcConfigAdapter.class.getSimpleName();
    private Map<String, String> a;
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
            AlibcLogger.e(TAG, "json转换为map失败");
            e.printStackTrace();
        }
    }

    public Map<String, Map<String, String>> getConfigData() {
        return this.config;
    }

    public boolean removeCheckGroup() {
        if (this.config == null) {
            return false;
        }
        this.a = (Map) this.config.get("group0");
        if (this.a != null) {
            this.config.remove("group0");
        }
        return true;
    }

    public void restoreCheckGroup() {
        if (this.a != null && this.config != null) {
            this.config.put("group0", this.a);
        }
    }
}

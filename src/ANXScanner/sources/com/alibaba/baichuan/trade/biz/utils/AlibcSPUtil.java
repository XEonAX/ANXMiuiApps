package com.alibaba.baichuan.trade.biz.utils;

import android.content.SharedPreferences.Editor;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class AlibcSPUtil {
    private static final String a = AlibcSPUtil.class.getSimpleName();

    public static AlibcSPData getJSONConfigDo(String str) {
        JSONException e;
        String string = AlibcTradeCommon.context.getSharedPreferences(str, 0).getString(str, null);
        AlibcLogger.d(a, "SP里面的值为:" + string);
        if (string == null) {
            return null;
        }
        AlibcSPData alibcSPData;
        try {
            JSONObject jSONObject = new JSONObject(string);
            alibcSPData = new AlibcSPData();
            try {
                alibcSPData.formatFromJSON(jSONObject);
                return alibcSPData;
            } catch (JSONException e2) {
                e = e2;
            }
        } catch (JSONException e3) {
            JSONException jSONException = e3;
            alibcSPData = null;
            e = jSONException;
            AlibcLogger.e(a, "拼接json出错" + e.getMessage());
            return alibcSPData;
        }
    }

    public static void setConfigSPData(String str, AlibcSPData alibcSPData) {
        Editor edit = AlibcTradeCommon.context.getSharedPreferences(str, 0).edit();
        JSONObject jSONObject = new JSONObject();
        for (String str2 : alibcSPData.getConfigData().keySet()) {
            try {
                jSONObject.put(str2, new JSONObject((Map) alibcSPData.getConfigData().get(str2)));
            } catch (JSONException e) {
                AlibcLogger.e(a, "拼接json出错" + e.getMessage());
            }
        }
        edit.putString(str, jSONObject.toString());
        edit.commit();
    }

    public static void setConfigSPData(String str, JSONObject jSONObject) {
        Editor edit = AlibcTradeCommon.context.getSharedPreferences(str, 0).edit();
        edit.putString(str, jSONObject.toString());
        edit.commit();
    }
}

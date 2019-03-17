package com.alibaba.baichuan.trade.biz.core.config;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alibaba.baichuan.trade.common.AlibcTradeCommon;
import com.alibaba.baichuan.trade.common.utils.AlibcLogger;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class AlibcConfigSPWrapper {
    public static final String SP_CONFIG_NAME = "aliTradeConfigSP";
    private final String a = AlibcConfigSPWrapper.class.getSimpleName();
    private SharedPreferences b = AlibcTradeCommon.context.getSharedPreferences(SP_CONFIG_NAME, 0);

    public AlibcConfigAdapter getJSONConfigDo() {
        JSONException e;
        String string = this.b.getString(SP_CONFIG_NAME, null);
        AlibcLogger.d(this.a, "SP里面的值为:" + string);
        if (string == null) {
            return null;
        }
        AlibcConfigAdapter alibcConfigAdapter;
        try {
            JSONObject jSONObject = new JSONObject(string);
            alibcConfigAdapter = new AlibcConfigAdapter();
            try {
                alibcConfigAdapter.formatFromJSON(jSONObject);
                return alibcConfigAdapter;
            } catch (JSONException e2) {
                e = e2;
            }
        } catch (JSONException e3) {
            JSONException jSONException = e3;
            alibcConfigAdapter = null;
            e = jSONException;
            AlibcLogger.e(this.a, "拼接json出错" + e.getMessage());
            return alibcConfigAdapter;
        }
    }

    public void setConfigSPData(AlibcConfigAdapter alibcConfigAdapter) {
        Editor edit = this.b.edit();
        JSONObject jSONObject = new JSONObject();
        for (String str : alibcConfigAdapter.getConfigData().keySet()) {
            try {
                jSONObject.put(str, new JSONObject((Map) alibcConfigAdapter.getConfigData().get(str)));
            } catch (JSONException e) {
                AlibcLogger.e(this.a, "拼接json出错" + e.getMessage());
            }
        }
        edit.putString(SP_CONFIG_NAME, jSONObject.toString());
        edit.commit();
    }

    public void setConfigSPData(JSONObject jSONObject) {
        Editor edit = this.b.edit();
        edit.putString(SP_CONFIG_NAME, jSONObject.toString());
        edit.commit();
    }
}

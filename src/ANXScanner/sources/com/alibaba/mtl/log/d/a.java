package com.alibaba.mtl.log.d;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ApiResponseParse */
public class a {

    /* compiled from: ApiResponseParse */
    public static class a {
        public static a a = new a();
        public boolean I = false;
        public String ac = null;

        public boolean g() {
            if ("E0102".equalsIgnoreCase(this.ac)) {
                return true;
            }
            return false;
        }

        public boolean h() {
            if ("E0111".equalsIgnoreCase(this.ac) || "E0112".equalsIgnoreCase(this.ac)) {
                return true;
            }
            return false;
        }
    }

    public static a a(String str) {
        a aVar = new a();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("success")) {
                Object string = jSONObject.getString("success");
                if (!TextUtils.isEmpty(string) && string.equals("success")) {
                    aVar.I = true;
                }
            }
            if (jSONObject.has("ret")) {
                aVar.ac = jSONObject.getString("ret");
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return aVar;
    }
}

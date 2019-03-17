package com.alipay.sdk.util;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class b {
    public static JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        try {
            JSONObject[] jSONObjectArr = new JSONObject[]{jSONObject, jSONObject2};
            for (int i = 0; i < 2; i++) {
                JSONObject jSONObject4 = jSONObjectArr[i];
                if (jSONObject4 != null) {
                    Iterator keys = jSONObject4.keys();
                    while (keys.hasNext()) {
                        String str = (String) keys.next();
                        jSONObject3.put(str, jSONObject4.get(str));
                    }
                }
            }
        } catch (JSONException e) {
        }
        return jSONObject3;
    }
}

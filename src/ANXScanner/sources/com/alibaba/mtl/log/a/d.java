package com.alibaba.mtl.log.a;

import com.alibaba.mtl.log.d.i;
import com.alipay.sdk.cons.c;
import com.taobao.ma.common.constants.MaConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: HostConfigMgr */
public class d {
    private static d a = new d();
    private String R;
    private Map<String, c> v = Collections.synchronizedMap(new HashMap());

    public static d a() {
        return a;
    }

    public void b(String str) {
        i.a("HostConfigMgr", "host config:" + str);
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject != null) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(MaConstants.UT_PARAM_KEY_CONTENT);
                    if (jSONObject2 != null) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("hosts");
                        if (jSONObject3 != null) {
                            Iterator keys = jSONObject3.keys();
                            while (keys.hasNext()) {
                                String str2 = (String) keys.next();
                                if (str2 != null) {
                                    c cVar = new c();
                                    JSONObject jSONObject4 = jSONObject3.getJSONObject(str2);
                                    if (jSONObject4 != null) {
                                        cVar.Q = str2.substring(1);
                                        cVar.host = jSONObject4.getString(c.f);
                                        JSONArray jSONArray = jSONObject4.getJSONArray("eids");
                                        if (jSONArray != null) {
                                            cVar.a = new ArrayList();
                                            for (int i = 0; i < jSONArray.length(); i++) {
                                                cVar.a.add(jSONArray.getString(i));
                                            }
                                        }
                                    }
                                    this.v.put(cVar.Q + "", cVar);
                                }
                            }
                        }
                    }
                    this.R = jSONObject.getString("timestamp");
                }
            } catch (Throwable th) {
            }
        }
    }

    public Map<String, c> b() {
        return this.v;
    }
}

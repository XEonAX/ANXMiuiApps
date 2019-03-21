package com.xiaomi.mistatistic.sdk.data;

import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.t;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CustomNumericEvent */
public abstract class e extends AbstractEvent {
    protected long a;
    private String b;
    private String c;
    private Map<String, String> d;

    public abstract String a();

    public e(String str, String str2, long j) {
        this(str, str2, j, null);
    }

    public e(String str, String str2, long j, Map<String, String> map) {
        this.b = str;
        this.c = str2;
        this.a = j;
        if (this.b.equals("mistat_basic") && (BuildSetting.isInternationalBuild() || t.c())) {
            setAnonymous(1);
        }
        if (map == null) {
            this.d = null;
            return;
        }
        try {
            this.d = new HashMap(map);
        } catch (Throwable e) {
            j.a("CustomNumericEvent exception", e);
        }
    }

    public String getCategory() {
        return this.b;
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("category", this.b);
        jSONObject.put("key", this.c);
        jSONObject.put(nexExportFormat.TAG_FORMAT_TYPE, a());
        jSONObject.put("value", this.a);
        if (this.d != null) {
            jSONObject.put("params", new JSONObject(this.d));
        }
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.mCategory = this.b;
        statEventPojo.mKey = this.c;
        statEventPojo.mTimeStamp = this.mTS;
        statEventPojo.mType = a();
        statEventPojo.mValue = String.valueOf(this.a);
        statEventPojo.mExtra = a(this.d);
        statEventPojo.mAnonymous = getAnonymous();
        return statEventPojo;
    }

    private String a(Map<String, String> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    JSONObject jSONObject = new JSONObject();
                    for (String str : map.keySet()) {
                        jSONObject.put(str, map.get(str));
                    }
                    return jSONObject.toString();
                }
            } catch (Throwable e) {
                j.a("json error", e);
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (TextUtils.equals(this.b, eVar.b) && TextUtils.equals(this.c, eVar.c) && TextUtils.equals(a(), eVar.a()) && this.a == eVar.a && this.d != null) {
            return this.d.equals(eVar.d);
        }
        return true;
    }
}

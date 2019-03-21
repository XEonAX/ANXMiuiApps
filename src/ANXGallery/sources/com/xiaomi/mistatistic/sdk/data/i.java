package com.xiaomi.mistatistic.sdk.data;

import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.t;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PTEvent */
public class i extends AbstractEvent {
    private String a;
    private long b;
    private long c;

    public i(String str, Long l) {
        this.a = str;
        this.c = l.longValue();
        if (BuildSetting.isInternationalBuild() || t.c()) {
            setAnonymous(1);
        }
    }

    public void a(Long l) {
        this.b = l.longValue();
    }

    public long a() {
        return this.c;
    }

    public String b() {
        return this.a;
    }

    public String getCategory() {
        return "mistat_pt";
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("category", getCategory());
        jSONObject.put("key", this.a);
        jSONObject.put("value", this.b);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.mCategory = getCategory();
        statEventPojo.mTimeStamp = this.mTS;
        statEventPojo.mKey = this.a;
        statEventPojo.mValue = Long.toString(this.b);
        statEventPojo.mAnonymous = getAnonymous();
        return statEventPojo;
    }
}

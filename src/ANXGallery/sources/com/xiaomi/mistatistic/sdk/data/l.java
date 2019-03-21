package com.xiaomi.mistatistic.sdk.data;

import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.t;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: SessionEvent */
public class l extends AbstractEvent {
    private long a;
    private long b;
    private String c;

    public l(long j, long j2, String str) {
        this.a = j;
        this.b = j2;
        this.c = str;
        if (BuildSetting.isInternationalBuild() || t.c()) {
            setAnonymous(1);
        }
    }

    public String getCategory() {
        return "mistat_session";
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("category", getCategory());
        jSONObject.put("start", this.a);
        jSONObject.put("end", this.b);
        jSONObject.put("env", this.c);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.mCategory = getCategory();
        statEventPojo.mTimeStamp = this.a;
        statEventPojo.mValue = this.a + "," + this.b;
        statEventPojo.mExtra = this.c;
        statEventPojo.mAnonymous = getAnonymous();
        return statEventPojo;
    }
}

package com.xiaomi.mistatistic.sdk.data;

import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.t;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: SessionExtraEvent */
public class m extends AbstractEvent {
    private long a;
    private long b;

    public m(long j, long j2) {
        this.b = j2;
        this.a = j;
        if (BuildSetting.isInternationalBuild() || t.c()) {
            setAnonymous(1);
        }
    }

    public String getCategory() {
        return "mistat_session_extra";
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("category", getCategory());
        jSONObject.put("start", this.a);
        jSONObject.put("autoEnd", this.b);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.mCategory = getCategory();
        statEventPojo.mTimeStamp = this.mTS;
        statEventPojo.mValue = String.valueOf(this.a);
        statEventPojo.mExtra = String.valueOf(this.b);
        statEventPojo.mAnonymous = getAnonymous();
        return statEventPojo;
    }
}

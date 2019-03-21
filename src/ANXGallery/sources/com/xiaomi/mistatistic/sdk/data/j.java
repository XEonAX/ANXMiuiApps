package com.xiaomi.mistatistic.sdk.data;

import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.t;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PVEvent */
public class j extends AbstractEvent {
    private String a;
    private String b;
    private long c;

    public j(String str, String str2, long j) {
        this.a = str;
        this.b = str2;
        this.c = j;
        if (BuildSetting.isInternationalBuild() || t.c()) {
            setAnonymous(1);
        }
    }

    public String getCategory() {
        return "mistat_pv";
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("category", getCategory());
        jSONObject.put(nexExportFormat.TAG_FORMAT_PATH, this.a);
        jSONObject.put("source", this.b);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.mCategory = getCategory();
        statEventPojo.mTimeStamp = this.c;
        statEventPojo.mValue = this.a;
        statEventPojo.mExtra = this.b;
        statEventPojo.mAnonymous = getAnonymous();
        return statEventPojo;
    }
}

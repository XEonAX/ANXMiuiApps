package com.xiaomi.mistatistic.sdk.data;

import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.t;
import miui.yellowpage.YellowPageStatistic.Display;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: CustomStringPropertyEvent */
public class g extends AbstractEvent {
    private String a;
    private String b;
    private String c;

    public g(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        if (!this.a.equals("mistat_basic")) {
            return;
        }
        if (BuildSetting.isInternationalBuild() || t.c()) {
            setAnonymous(1);
        }
    }

    public String getCategory() {
        return this.a;
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Display.CATEGORY, this.a);
        jSONObject.put("key", this.b);
        jSONObject.put("type", "property");
        jSONObject.put("value", this.c);
        return jSONObject;
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.mCategory = this.a;
        statEventPojo.mKey = this.b;
        statEventPojo.mTimeStamp = this.mTS;
        statEventPojo.mValue = this.c;
        statEventPojo.mType = "property";
        statEventPojo.mAnonymous = getAnonymous();
        return statEventPojo;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (TextUtils.equals(this.a, gVar.a) && TextUtils.equals(this.b, gVar.b) && TextUtils.equals(this.c, gVar.c)) {
            return true;
        }
        return false;
    }
}

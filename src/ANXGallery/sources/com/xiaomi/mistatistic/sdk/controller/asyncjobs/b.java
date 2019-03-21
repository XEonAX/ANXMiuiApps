package com.xiaomi.mistatistic.sdk.controller.asyncjobs;

import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.controller.j;
import com.xiaomi.mistatistic.sdk.controller.o;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RemoteDataPackingJob */
public class b implements com.xiaomi.mistatistic.sdk.controller.e.a {
    private static int a = 0;
    private long b;
    private a c;
    private HashMap<String, JSONObject> d = new HashMap();
    private HashMap<String, JSONObject> e = new HashMap();
    private ArrayList<String> f = new ArrayList();
    private JSONObject g = null;
    private long h = 0;
    private int i = 0;
    private boolean j = false;

    /* compiled from: RemoteDataPackingJob */
    public interface a {
        void a(String str, long j, long j2, int i, boolean z);
    }

    /* compiled from: RemoteDataPackingJob */
    public class b {
        int a;
        private JSONArray c;
        private long d;
        private long e;

        public b(JSONArray jSONArray, long j, long j2, int i) {
            this.c = jSONArray;
            this.d = j;
            this.e = j2;
            this.a = i;
        }
    }

    public b(int i, long j, boolean z, a aVar) {
        this.i = i;
        this.b = j;
        this.c = aVar;
        this.j = z;
    }

    public void execute() {
        try {
            b c = c(Long.MAX_VALUE);
            if (c.c != null) {
                this.c.a(c.c.toString(), c.d, c.e, c.a, this.j);
            } else {
                this.c.a("", c.d, c.e, c.a, this.j);
            }
            if (c.a >= 500) {
                j.a(String.format("Packing %d events >= MAX_PACKING_EVENT %d", new Object[]{Integer.valueOf(c.a), Integer.valueOf(500)}));
                if (a < 10) {
                    new o(this.i).a();
                    a++;
                    return;
                }
                j.c("Packing, exceeded MAX_UPLOAD_TIMES 10");
                return;
            }
            a = 0;
        } catch (Throwable e) {
            j.a("remote data packing job execute exception:", e);
            this.c.a("", 0, 0, 0, this.j);
        }
    }

    private void a(StatEventPojo statEventPojo) {
        long j = statEventPojo.mTimeStamp;
        if (b(j) && this.g != null) {
            a();
            this.h = j;
        }
    }

    private boolean b(long j) {
        return (this.b > 0 && this.h - j > this.b) || !a(j);
    }

    private b c(long j) throws JSONException {
        List c;
        int i;
        long j2;
        Throwable th;
        JSONArray jSONArray;
        long j3;
        JSONArray jSONArray2;
        JSONArray jSONArray3 = new JSONArray();
        long j4 = 0;
        long j5 = 0;
        int i2 = 0;
        h hVar = new h();
        a();
        hVar.a(Boolean.valueOf(this.j));
        if (this.i == 2) {
            c = hVar.c(j);
        } else if (this.i == 1) {
            c = hVar.a(j);
        } else {
            c = null;
        }
        if (c != null) {
            try {
                if (c.size() > 0) {
                    j.a(String.format("Packing, get %d events from local DB", new Object[]{Integer.valueOf(c.size())}));
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < c.size()) {
                        try {
                            StatEventPojo statEventPojo = (StatEventPojo) c.get(i3);
                            if (j4 == 0) {
                                j4 = statEventPojo.mTimeStamp;
                                this.h = j4;
                            }
                            j5 = statEventPojo.mTimeStamp;
                            a(statEventPojo);
                            if (this.g == null) {
                                this.g = new JSONObject();
                                this.g.put("endTS", statEventPojo.mTimeStamp);
                                this.g.put("content", new JSONArray());
                                jSONArray3.put(this.g);
                            }
                            if ("mistat_session".equals(statEventPojo.mCategory)) {
                                d(statEventPojo);
                            } else if ("mistat_pv".equals(statEventPojo.mCategory)) {
                                f(statEventPojo);
                            } else if ("mistat_pt".equals(statEventPojo.mCategory)) {
                                g(statEventPojo);
                            } else if ("mistat_session_extra".equals(statEventPojo.mCategory)) {
                                e(statEventPojo);
                            } else if ("mistat_pa".equals(statEventPojo.mCategory)) {
                                b(statEventPojo);
                            } else if ("mistat_monitor".equals(statEventPojo.mCategory)) {
                                c(statEventPojo);
                            } else {
                                h(statEventPojo);
                            }
                            this.g.put("startTS", statEventPojo.mTimeStamp);
                            i4++;
                            i3++;
                        } catch (Throwable e) {
                            i = i4;
                            Throwable th2 = e;
                            j2 = j4;
                            j4 = j5;
                            th = th2;
                            j.a("doPacking exception", th);
                            jSONArray = jSONArray3;
                            j3 = j2;
                            return new b(jSONArray, j4, j3, i);
                        }
                    }
                    j.a("Packing complete, total " + i4 + " records were packed and to be uploaded");
                    i2 = i4;
                    jSONArray2 = jSONArray3;
                    i = i2;
                    j3 = j4;
                    j4 = j5;
                    jSONArray = jSONArray2;
                    return new b(jSONArray, j4, j3, i);
                }
            } catch (Throwable e2) {
                i = 0;
                j2 = 0;
                j4 = 0;
                th = e2;
                j.a("doPacking exception", th);
                jSONArray = jSONArray3;
                j3 = j2;
                return new b(jSONArray, j4, j3, i);
            }
        }
        j.a("No data available to be packed");
        jSONArray2 = null;
        i = i2;
        j3 = j4;
        j4 = j5;
        jSONArray = jSONArray2;
        return new b(jSONArray, j4, j3, i);
    }

    boolean a(long j) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(this.h);
        instance.setTimeZone(TimeZone.getTimeZone("GMT + 8"));
        instance.set(11, 0);
        instance.set(12, 0);
        instance.set(13, 0);
        instance.set(14, 0);
        long timeInMillis = instance.getTimeInMillis();
        long j2 = 86400000 + timeInMillis;
        if (j < timeInMillis || j >= j2) {
            return false;
        }
        return true;
    }

    private void a() {
        this.g = null;
        this.d.clear();
        this.f.clear();
        this.e.clear();
    }

    private void b(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_pa");
        if (jSONObject == null) {
            JSONArray jSONArray = new JSONArray();
            jSONObject = new JSONObject();
            jSONObject.put("category", "mistat_pa");
            jSONObject.put("values", jSONArray);
            this.d.put("mistat_pa", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        String[] split = statEventPojo.mValue.split(",");
        Object obj = split[0];
        long parseLong = Long.parseLong(split[1]);
        long parseLong2 = Long.parseLong(split[2]);
        boolean parseBoolean = Boolean.parseBoolean(split[3]);
        jSONObject2.put("name", obj);
        jSONObject2.put("start", parseLong);
        jSONObject2.put("end", parseLong2);
        jSONObject2.put("auto_end", parseBoolean);
        jSONObject2.put("env", statEventPojo.mExtra);
        jSONObject.getJSONArray("values").put(jSONObject2);
    }

    private void c(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_monitor");
        if (jSONObject == null) {
            JSONArray jSONArray = new JSONArray();
            jSONObject = new JSONObject();
            jSONObject.put("category", "mistat_monitor");
            jSONObject.put("values", jSONArray);
            this.d.put("mistat_monitor", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("start", Long.parseLong(statEventPojo.mValue));
        jSONObject2.put("end", statEventPojo.mTimeStamp);
        jSONObject2.put("value", new JSONObject(statEventPojo.mExtra));
        jSONObject.getJSONArray("values").put(jSONObject2);
    }

    private void d(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_session");
        if (jSONObject == null) {
            JSONArray jSONArray = new JSONArray();
            jSONObject = new JSONObject();
            jSONObject.put("category", "mistat_session");
            jSONObject.put("values", jSONArray);
            this.d.put("mistat_session", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        String[] split = statEventPojo.mValue.split(",");
        long parseLong = Long.parseLong(split[0]);
        long parseLong2 = Long.parseLong(split[1]);
        jSONObject2.put("start", parseLong);
        jSONObject2.put("end", parseLong2);
        jSONObject2.put("env", statEventPojo.mExtra);
        jSONObject.getJSONArray("values").put(jSONObject2);
    }

    private void e(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_session_extra");
        if (jSONObject == null) {
            JSONArray jSONArray = new JSONArray();
            jSONObject = new JSONObject();
            jSONObject.put("category", "mistat_session_extra");
            jSONObject.put("values", jSONArray);
            this.d.put("mistat_session_extra", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        long parseLong = Long.parseLong(statEventPojo.mValue);
        long parseLong2 = Long.parseLong(statEventPojo.mExtra);
        jSONObject2.put("start", parseLong);
        jSONObject2.put("auto_end", parseLong2);
        jSONObject.getJSONArray("values").put(jSONObject2);
    }

    private void f(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_pv");
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            jSONObject.put("category", "mistat_pv");
            jSONObject.put("values", jSONArray);
            jSONObject.put("source", jSONArray2);
            this.d.put("mistat_pv", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        String[] split = statEventPojo.mValue.trim().split(",");
        String[] strArr = new String[split.length];
        if (split != null && split.length > 0) {
            for (int i = 0; i < split.length; i++) {
                int indexOf = this.f.indexOf(split[i]);
                if (indexOf >= 0) {
                    strArr[i] = String.valueOf(indexOf + 1);
                } else {
                    strArr[i] = String.valueOf(this.f.size() + 1);
                    this.f.add(split[i]);
                }
            }
        }
        jSONObject.getJSONArray("values").put(TextUtils.join(",", strArr));
        jSONObject.put("index", TextUtils.join(",", this.f));
        if (TextUtils.isEmpty(statEventPojo.mExtra)) {
            jSONObject.getJSONArray("source").put("");
        } else {
            jSONObject.getJSONArray("source").put(statEventPojo.mExtra);
        }
    }

    private void g(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject = (JSONObject) this.d.get("mistat_pt");
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject.put("category", "mistat_pt");
            jSONObject.put("values", jSONArray);
            this.d.put("mistat_pt", jSONObject);
            this.g.getJSONArray("content").put(jSONObject);
        }
        JSONArray jSONArray2 = jSONObject.getJSONArray("values");
        for (int i = 0; i < jSONArray2.length(); i++) {
            JSONObject jSONObject2 = jSONArray2.getJSONObject(i);
            if (TextUtils.equals(jSONObject2.getString("key"), statEventPojo.mKey)) {
                jSONObject2.put("value", jSONObject2.getString("value") + "," + statEventPojo.mValue);
                return;
            }
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("key", statEventPojo.mKey);
        jSONObject3.put("value", statEventPojo.mValue);
        jSONObject.getJSONArray("values").put(jSONObject3);
    }

    private void h(StatEventPojo statEventPojo) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = (JSONObject) this.d.get(statEventPojo.mCategory);
        Object obj = null;
        if (jSONObject2 == null) {
            JSONObject jSONObject3 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject3.put("category", statEventPojo.mCategory);
            jSONObject3.put("values", jSONArray);
            this.d.put(statEventPojo.mCategory, jSONObject3);
            this.g.getJSONArray("content").put(jSONObject3);
            jSONObject = jSONObject3;
            obj = 1;
        } else {
            jSONObject = jSONObject2;
        }
        if ("event".equals(statEventPojo.mType) && TextUtils.isEmpty(statEventPojo.mExtra)) {
            jSONObject2 = (JSONObject) this.e.get(statEventPojo.mKey);
            if (jSONObject2 == null || obj != null) {
                jSONObject2 = new JSONObject();
                jSONObject2.put("key", statEventPojo.mKey);
                jSONObject2.put(nexExportFormat.TAG_FORMAT_TYPE, statEventPojo.mType);
                jSONObject2.put("value", Long.parseLong(statEventPojo.mValue));
                jSONObject.getJSONArray("values").put(jSONObject2);
                this.e.put(statEventPojo.mKey, jSONObject2);
                return;
            }
            jSONObject2.put("value", jSONObject2.getLong("value") + Long.parseLong(statEventPojo.mValue));
        } else if ("mistat_extra".equals(statEventPojo.mCategory)) {
            jSONObject.getJSONArray("values").put(statEventPojo.mValue);
        } else {
            jSONObject2 = new JSONObject();
            jSONObject2.put("key", statEventPojo.mKey);
            jSONObject2.put(nexExportFormat.TAG_FORMAT_TYPE, statEventPojo.mType);
            if ("count".equals(statEventPojo.mType) || "numeric".equals(statEventPojo.mType)) {
                jSONObject2.put("value", Long.parseLong(statEventPojo.mValue));
            } else {
                jSONObject2.put("value", statEventPojo.mValue);
            }
            if (!TextUtils.isEmpty(statEventPojo.mExtra)) {
                jSONObject2.put("params", new JSONObject(statEventPojo.mExtra));
            }
            jSONObject.getJSONArray("values").put(jSONObject2);
        }
    }
}

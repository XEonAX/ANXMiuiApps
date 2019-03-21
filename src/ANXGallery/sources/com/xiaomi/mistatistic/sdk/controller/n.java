package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.mistatistic.sdk.URLStatsRecorder;
import com.xiaomi.mistatistic.sdk.b;
import com.xiaomi.mistatistic.sdk.data.AbstractEvent;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import com.xiaomi.mistatistic.sdk.data.h;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ProcessMonitorManager */
public class n {
    private static final String[] a = new String[]{"mistat_dau", "pv", "pt", "session", "new", "pa"};
    private static Context b = d.a();
    private static HashMap<Integer, Integer> c = new HashMap();
    private static boolean d = m.a(b, "config_monitor_enable");

    static {
        c.put(Integer.valueOf(1), Integer.valueOf(1));
        c.put(Integer.valueOf(2), Integer.valueOf(2));
        c.put(Integer.valueOf(3), Integer.valueOf(4));
        c.put(Integer.valueOf(4), Integer.valueOf(8));
        c.put(Integer.valueOf(5), Integer.valueOf(16));
        c.put(Integer.valueOf(6), Integer.valueOf(32));
        c.put(Integer.valueOf(7), Integer.valueOf(64));
        c.put(Integer.valueOf(8), Integer.valueOf(128));
        c.put(Integer.valueOf(9), Integer.valueOf(256));
        c.put(Integer.valueOf(10), Integer.valueOf(512));
        c.put(Integer.valueOf(11), Integer.valueOf(1024));
    }

    public static void a() {
        try {
            if (d && b != null) {
                Map hashMap = new HashMap();
                for (String a : a) {
                    a(a, hashMap);
                }
                if (hashMap != null && !hashMap.isEmpty()) {
                    LocalEventRecorder.insertEvent(new h(m.d(b, "monitor_start", 0), hashMap));
                    c();
                }
            }
        } catch (Throwable e) {
            j.a("PMM", "createMonitorEvent exception:", e);
        }
    }

    public static int a(String str) {
        int i = 0;
        try {
            for (Entry entry : c.entrySet()) {
                int intValue = ((Integer) entry.getKey()).intValue();
                int intValue2 = ((Integer) entry.getValue()).intValue();
                if (a(intValue, str)) {
                    intValue2 |= i;
                } else {
                    intValue2 = i;
                }
                i = intValue2;
            }
        } catch (Throwable e) {
            j.a("PMM", "getClientConfiguration exception", e);
        }
        return i;
    }

    public static void a(String str, StatEventPojo statEventPojo) {
        try {
            if (b != null) {
                a(str, a(statEventPojo));
            }
        } catch (Throwable e) {
            j.a("PMM", "monitor StatEventPojo exception", e);
        }
    }

    public static void a(String str, List<StatEventPojo> list) {
        try {
            if (b != null) {
                for (StatEventPojo a : list) {
                    a(str, a(a));
                }
            }
        } catch (Throwable e) {
            j.a("PMM", "monitor List<StatEventPojo> exception", e);
        }
    }

    public static void a(String str, AbstractEvent abstractEvent) {
        try {
            if (b != null) {
                a(str, abstractEvent.valueToJSon());
            }
        } catch (Throwable e) {
            j.a("PMM", "monitor AbstractEvent exception", e);
        }
    }

    public static void a(String str, String str2) {
        try {
            if (b != null) {
                JSONArray jSONArray = new JSONArray(str2);
                if (jSONArray != null && jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject != null) {
                            JSONArray jSONArray2 = jSONObject.getJSONArray("content");
                            if (jSONArray2 != null && jSONArray2.length() > 0) {
                                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                    a(str, jSONArray2.getJSONObject(i2));
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable e) {
            j.a("PMM", "monitor data exception", e);
        }
    }

    public static void a(final double d) {
        r.b.execute(new Runnable() {
            public void run() {
                try {
                    if (t.a(g.a(n.b), d)) {
                        n.d = true;
                        m.b(n.b, "config_monitor_enable", true);
                        return;
                    }
                    n.d = false;
                    m.b(n.b, "config_monitor_enable", false);
                } catch (Throwable e) {
                    j.a("PMM", "setMonitorEnable exception", e);
                }
            }
        });
    }

    private static void a(String str, JSONObject jSONObject) {
        try {
            if (d && b != null) {
                long currentTimeMillis = System.currentTimeMillis();
                if (b("monitor_start") == 0) {
                    m.c(b, "monitor_start", currentTimeMillis);
                }
                String string = jSONObject.getString("category");
                if (!TextUtils.isEmpty(string)) {
                    if (string.equals("mistat_basic")) {
                        b(str, jSONObject);
                    } else if (string.equals("mistat_pt")) {
                        c(str, jSONObject);
                    } else if (string.equals("mistat_pv")) {
                        d(str, jSONObject);
                    } else if (string.equals("mistat_pa")) {
                        f(str, jSONObject);
                    } else if (string.equals("mistat_session")) {
                        e(str, jSONObject);
                    }
                }
            }
        } catch (Throwable e) {
            j.a("PMM", "monitor JSONObject exception", e);
        }
    }

    private static void b(String str, JSONObject jSONObject) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("values");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    b(str, optJSONArray.getJSONObject(i).optString("key", ""));
                }
                return;
            }
            b(str, jSONObject.optString("key", ""));
        } catch (Throwable e) {
            j.a("PMM", "basicMonitor exception", e);
        }
    }

    private static void b(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            if (str2.equals("mistat_dau")) {
                m.c(b, c(str, "mistat_dau"), m.d(b, c(str, "mistat_dau"), 0) + 1);
            } else if (str2.equals("new")) {
                m.c(b, c(str, "new"), m.d(b, c(str, "new"), 0) + 1);
            }
        }
    }

    private static void c(String str, JSONObject jSONObject) {
        int i = 0;
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("values");
            if (optJSONArray != null) {
                int i2 = 0;
                while (i2 < optJSONArray.length()) {
                    int length = optJSONArray.getJSONObject(i2).optString("value", "").split(",").length + i;
                    i2++;
                    i = length;
                }
            } else {
                i = 1;
            }
            m.c(b, c(str, "pt"), m.d(b, c(str, "pt"), 0) + ((long) i));
        } catch (Throwable e) {
            j.a("PMM", "ptMonitor exception", e);
        }
    }

    private static void d(String str, JSONObject jSONObject) {
        try {
            int length;
            JSONArray optJSONArray = jSONObject.optJSONArray("values");
            if (optJSONArray != null) {
                length = optJSONArray.length();
            } else {
                length = 1;
            }
            m.c(b, c(str, "pv"), m.d(b, c(str, "pv"), 0) + ((long) length));
        } catch (Throwable e) {
            j.a("PMM", "pvMonitor exception", e);
        }
    }

    private static void e(String str, JSONObject jSONObject) {
        try {
            int length;
            JSONArray optJSONArray = jSONObject.optJSONArray("values");
            if (optJSONArray != null) {
                length = optJSONArray.length();
            } else {
                length = 1;
            }
            m.c(b, c(str, "session"), m.d(b, c(str, "session"), 0) + ((long) length));
        } catch (Throwable e) {
            j.a("PMM", "sessionMonitor exception", e);
        }
    }

    private static void f(String str, JSONObject jSONObject) {
        try {
            int length;
            JSONArray optJSONArray = jSONObject.optJSONArray("values");
            if (optJSONArray != null) {
                length = optJSONArray.length();
            } else {
                length = 1;
            }
            m.c(b, str + c(str, "pa"), m.d(b, c(str, "pa"), 0) + ((long) length));
        } catch (Throwable e) {
            j.a("PMM", "paMonitor exception", e);
        }
    }

    private static String c(String str, String str2) {
        return str + "-" + str2;
    }

    private static JSONObject a(StatEventPojo statEventPojo) {
        JSONObject jSONObject = new JSONObject();
        if (statEventPojo != null) {
            try {
                jSONObject.put("category", statEventPojo.mCategory);
                jSONObject.put("key", statEventPojo.mKey);
            } catch (Throwable e) {
                j.a("PMM", "pojoToJson exception", e);
            }
        }
        return jSONObject;
    }

    private static void c() {
        try {
            if (b != null) {
                m.b(b);
                m.c(b, "monitor_start", System.currentTimeMillis());
            }
        } catch (Throwable e) {
            j.a("PMM", "cleanMonitor exception", e);
        }
    }

    private static long b(String str) {
        try {
            if (b != null) {
                return m.d(b, str, 0);
            }
            return 0;
        } catch (Throwable e) {
            j.a("PMM", "getMonitor exception", e);
            return 0;
        }
    }

    private static void a(String str, Map<String, Long> map) {
        try {
            long b = b("c-" + str);
            long b2 = b("w-" + str);
            long b3 = b("p-" + str);
            long b4 = b("u-" + str);
            long b5 = b("d-" + str);
            long b6 = b("ed-" + str);
            if (b != 0 || b2 != 0 || b3 != 0 || b4 != 0 || b5 != 0) {
                map.put("c-" + str, Long.valueOf(b));
                map.put("w-" + str, Long.valueOf(b2));
                map.put("p-" + str, Long.valueOf(b3));
                map.put("u-" + str, Long.valueOf(b4));
                map.put("d-" + str, Long.valueOf(b5));
                if (b6 != 0) {
                    map.put("ed-" + str, Long.valueOf(b6));
                }
            } else if (b6 != 0) {
                map.put("ed-" + str, Long.valueOf(b6));
            }
        } catch (Throwable e) {
            j.a("PMM", "fillMonitorCounterMap exception", e);
        }
    }

    private static boolean a(int i, String str) {
        switch (i) {
            case 1:
                try {
                    return URLStatsRecorder.isRecordEnabled();
                } catch (Throwable e) {
                    j.a("PMM", "checkSetting exception", e);
                    return false;
                }
            case 2:
                return CustomSettings.isUseSystemUploadingService();
            case 3:
                return CustomSettings.isUseSystemStatService();
            case 4:
                return j.a();
            case 5:
                return MiStatInterface.isABTestInitialized();
            case 6:
                return b.a();
            case 7:
                return BuildSetting.isTestNetworkEnabled();
            case 8:
                return BuildSetting.isSelfStats();
            case 9:
                return h.b();
            case 10:
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                return str.toLowerCase().startsWith("https");
            case 11:
                return BuildSetting.isRespectUEP();
            default:
                return false;
        }
    }
}

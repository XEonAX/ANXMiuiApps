package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.BuildSetting;
import com.xiaomi.mistatistic.sdk.controller.asyncjobs.a;
import com.xiaomi.mistatistic.sdk.controller.l.b;
import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: HttpEventController */
public class i {
    private static volatile i a = null;
    private HttpEventFilter b = new HttpEventFilter() {
        public HttpEvent onEvent(HttpEvent httpEvent) {
            Object url = httpEvent.getUrl();
            if (TextUtils.isEmpty(url)) {
                return null;
            }
            httpEvent.setUrl(url.split("\\?")[0]);
            return httpEvent;
        }
    };
    private List<HttpEvent> c = new LinkedList();
    private Handler d = new Handler(e.d()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1023:
                    if (i.this.c()) {
                        try {
                            List b = i.this.b();
                            int size = b.size();
                            if (size > 0) {
                                for (int i = 0; i < size; i += 30) {
                                    List subList;
                                    if (i + 30 >= size) {
                                        subList = b.subList(i, size);
                                    } else {
                                        subList = b.subList(i, i + 30);
                                    }
                                    i.this.a(subList, new b() {
                                        public void a(String str) {
                                            Object obj = null;
                                            j.a("HEC", "http data complete, result=" + str);
                                            try {
                                                if (!TextUtils.isEmpty(str)) {
                                                    JSONObject jSONObject = new JSONObject(str);
                                                    if ("ok".equals(jSONObject.getString("status"))) {
                                                        i.this.a(jSONObject);
                                                        obj = 1;
                                                    }
                                                }
                                                if (obj != null) {
                                                    synchronized (i.this.c) {
                                                        i.this.c.removeAll(subList);
                                                    }
                                                }
                                            } catch (Throwable e) {
                                                j.a("HEC", "upload events response exception:", e);
                                            }
                                        }
                                    });
                                }
                                return;
                            }
                            return;
                        } catch (Throwable e) {
                            j.a("HEC", "HttpEventController handleMessage exception", e);
                            return;
                        }
                    } else if (i.this.d()) {
                        try {
                            i.this.a(new JSONArray().toString(), new b() {
                                public void a(String str) {
                                    j.a("HEC", String.format("upload empty http events result: %s", new Object[]{str}));
                                }
                            });
                            return;
                        } catch (Throwable e2) {
                            j.a("HEC", "HttpEventController handleMessage exception", e2);
                            return;
                        }
                    } else {
                        return;
                    }
                default:
                    return;
            }
        }
    };

    public static i a() {
        if (a == null) {
            synchronized (i.class) {
                if (a == null) {
                    a = new i();
                }
            }
        }
        return a;
    }

    private i() {
    }

    public List<HttpEvent> b() {
        List linkedList;
        synchronized (this.c) {
            linkedList = new LinkedList(this.c);
        }
        return linkedList;
    }

    public boolean c() {
        Context a = d.a();
        if (System.currentTimeMillis() <= m.a(a, "rt_ban_time", 0) || Math.random() * 10000.0d > ((double) m.a(a, "rt_upload_rate", 10000))) {
            return false;
        }
        return true;
    }

    public boolean d() {
        return System.currentTimeMillis() - m.a(d.a(), "rt_update_time", 0) > 86400000;
    }

    public void a(HttpEvent httpEvent) {
        Context a = d.a();
        if (a == null) {
            j.a("HEC", "add http event without initialization.");
        } else if (BuildSetting.isDisabled(a)) {
            j.a("HEC", "disabled the http event upload");
        } else if (!a(httpEvent.getUrl()) || BuildSetting.isSelfStats()) {
            if (!(this.b == null || httpEvent.getUrl().equals(f()))) {
                httpEvent = this.b.onEvent(httpEvent);
            }
            if (httpEvent != null && !TextUtils.isEmpty(httpEvent.getUrl())) {
                synchronized (this.c) {
                    this.c.add(httpEvent);
                    if (this.c.size() > 100) {
                        this.c.remove(0);
                    }
                }
                if (!this.d.hasMessages(1023) && !httpEvent.getUrl().equals(f())) {
                    a.a();
                    this.d.sendEmptyMessageDelayed(1023, e());
                }
            }
        }
    }

    private long e() {
        return m.a(d.a(), "rt_upload_delay", 300000);
    }

    private String f() {
        return BuildSetting.isTestNetworkEnabled() ? "http://test.data.mistat.xiaomi.srv/realtime_network" : "https://data.mistat.xiaomi.com/realtime_network";
    }

    private boolean a(String str) {
        Context a = d.a();
        if (str.equals(f()) || str.equals("https://data.mistat.xiaomi.com/micrash") || str.equals("https://data.mistat.xiaomi.com/mistats") || str.equals("http://data.mistat.xiaomi.com/mistats/v2") || str.equals("http://abtest.mistat.xiaomi.com/experiments") || str.equals("http://data.mistat.xiaomi.com/getconfig") || str.equals("https://dev.mi.com/mistats/xmstats/event/dynamic/upload") || str.equals("https://data.mistat.xiaomi.com/realtime_network") || str.equals(t.a(a, "https://data.mistat.xiaomi.com/micrash")) || str.equals(t.a(a, "https://data.mistat.xiaomi.com/mistats")) || str.equals(t.a(a, "http://data.mistat.xiaomi.com/mistats/v2")) || str.equals(t.a(a, "http://abtest.mistat.xiaomi.com/experiments")) || str.equals(t.a(a, "http://data.mistat.xiaomi.com/getconfig")) || str.equals(t.a(a, "https://dev.mi.com/mistats/xmstats/event/dynamic/upload")) || str.equals(t.a(a, "https://data.mistat.xiaomi.com/realtime_network"))) {
            return true;
        }
        return false;
    }

    private void a(List<HttpEvent> list, b bVar) throws IOException, JSONException {
        Map hashMap = new HashMap();
        if (list != null && !list.isEmpty()) {
            for (HttpEvent httpEvent : list) {
                CharSequence url = httpEvent.getUrl();
                if (!TextUtils.isEmpty(url)) {
                    if (hashMap.containsKey(url)) {
                        ((List) hashMap.get(url)).add(httpEvent);
                    } else {
                        hashMap.put(url, new ArrayList());
                        ((List) hashMap.get(url)).add(httpEvent);
                    }
                }
            }
            if (!hashMap.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (String str : hashMap.keySet()) {
                    JSONArray jSONArray2 = new JSONArray();
                    for (HttpEvent toJSON : (List) hashMap.get(str)) {
                        jSONArray2.put(toJSON.toJSON());
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("url", str);
                    jSONObject.put("data", jSONArray2);
                    jSONArray.put(jSONObject);
                }
                a(jSONArray.toString(), bVar);
            }
        }
    }

    private void a(String str, b bVar) throws IOException {
        if (s.a().b(5)) {
            Map treeMap = new TreeMap();
            String f = f();
            Context a = d.a();
            t.a(a, f, treeMap);
            treeMap.put("app_package", d.g());
            treeMap.put("device_uuid", g.a(a));
            treeMap.put("device_os", "android" + VERSION.SDK_INT);
            treeMap.put("device_model", Build.MODEL);
            treeMap.put("app_version", d.e());
            treeMap.put("app_channel", d.d());
            treeMap.put("time", String.valueOf(System.currentTimeMillis()));
            treeMap.put("net_value", str);
            l.a(f, treeMap, bVar);
        }
    }

    private void a(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("data")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            int optInt = jSONObject2.optInt("sample_rate", 10000);
            int optInt2 = jSONObject2.optInt("delay", 300000);
            long optLong = jSONObject2.optLong("ban_time", 0);
            Context a = d.a();
            m.b(a, "rt_upload_rate", optInt);
            m.b(a, "rt_upload_delay", (long) optInt2);
            m.b(a, "rt_ban_time", optLong);
            m.b(a, "rt_update_time", System.currentTimeMillis());
        }
    }
}

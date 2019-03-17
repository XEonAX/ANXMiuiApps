package com.alibaba.mtl.appmonitor.d;

import android.content.Context;
import com.alibaba.mtl.appmonitor.a.f;
import com.alibaba.mtl.appmonitor.f.b;
import com.alibaba.mtl.log.d.i;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* compiled from: SampleRules */
public class j {
    private static final String TAG = null;
    private static j a;
    private String A;
    private int r;
    private Map<f, g> t = new HashMap();

    private j() {
        for (f fVar : f.a()) {
            if (fVar == f.ALARM) {
                this.t.put(fVar, new f(fVar, fVar.e()));
            } else {
                this.t.put(fVar, new g(fVar, fVar.e()));
            }
        }
    }

    public static j a() {
        if (a == null) {
            synchronized (j.class) {
                if (a == null) {
                    a = new j();
                }
            }
        }
        return a;
    }

    public void a(Context context) {
        j();
    }

    public static boolean a(f fVar, String str, String str2) {
        return a().b(fVar, str, str2, null);
    }

    public static boolean a(f fVar, String str, String str2, Map<String, String> map) {
        return a().b(fVar, str, str2, (Map) map);
    }

    public static boolean a(String str, String str2, Boolean bool, Map<String, String> map) {
        return a().b(str, str2, bool, (Map) map);
    }

    public boolean b(f fVar, String str, String str2, Map<String, String> map) {
        g gVar = (g) this.t.get(fVar);
        if (gVar != null) {
            return gVar.a(this.r, str, str2, map);
        }
        return false;
    }

    public boolean b(String str, String str2, Boolean bool, Map<String, String> map) {
        g gVar = (g) this.t.get(f.ALARM);
        if (gVar == null || !(gVar instanceof f)) {
            return false;
        }
        return ((f) gVar).a(this.r, str, str2, bool, map);
    }

    public void j() {
        this.r = new Random(System.currentTimeMillis()).nextInt(10000);
    }

    /* JADX WARNING: Missing block: B:12:?, code:
            r2 = new org.json.JSONObject(r11);
            r3 = com.alibaba.mtl.appmonitor.a.f.a();
            r4 = r3.length;
            r1 = 0;
     */
    /* JADX WARNING: Missing block: B:13:0x0031, code:
            if (r1 >= r4) goto L_0x0061;
     */
    /* JADX WARNING: Missing block: B:14:0x0033, code:
            r5 = r3[r1];
            r6 = r2.optJSONObject(r5.toString());
            r0 = (com.alibaba.mtl.appmonitor.d.g) r10.t.get(r5);
     */
    /* JADX WARNING: Missing block: B:15:0x0045, code:
            if (r6 == null) goto L_0x005a;
     */
    /* JADX WARNING: Missing block: B:16:0x0047, code:
            if (r0 == null) goto L_0x005a;
     */
    /* JADX WARNING: Missing block: B:17:0x0049, code:
            com.alibaba.mtl.log.d.i.a(TAG, r5, r6);
            r0.b(r6);
     */
    /* JADX WARNING: Missing block: B:18:0x005a, code:
            r1 = r1 + 1;
     */
    /* JADX WARNING: Missing block: B:24:?, code:
            r10.A = r11;
     */
    /* JADX WARNING: Missing block: B:32:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:33:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:34:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(String str) {
        i.a("SampleRules", "config:", str);
        synchronized (this) {
            if (b.d(str) || (this.A != null && this.A.equals(str))) {
            }
        }
    }

    public void a(f fVar, int i) {
        g gVar = (g) this.t.get(fVar);
        if (gVar != null) {
            gVar.setSampling(i);
        }
    }
}

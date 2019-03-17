package com.alibaba.mtl.log.a;

import com.alibaba.mtl.log.d.e;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.l;
import com.alibaba.mtl.log.d.r;
import com.alibaba.mtl.log.d.t;
import java.util.HashMap;
import java.util.Map;

/* compiled from: GcConfigChannelMgr */
public class b {
    private static String P = "adashxgc.ut.taobao.com";
    private static b a = new b();

    /* compiled from: GcConfigChannelMgr */
    class a implements Runnable {
        a() {
        }

        public void run() {
            int i = 0;
            if (l.isConnected()) {
                while (true) {
                    int i2 = i;
                    if (i2 < 8) {
                        Map hashMap = new HashMap();
                        String b = a.b("b01n15");
                        String b2 = a.b("b01na");
                        hashMap.put("_b01n15", b);
                        hashMap.put("_b01na", b2);
                        try {
                            i.a("ConfigMgr", "config:" + t.b(b.i(), hashMap, null));
                            com.alibaba.mtl.log.d.e.a a = e.a(1, r0, null, false);
                            if (a.data != null) {
                                a.h(new String(a.data, 0, a.data.length));
                                a.p();
                                return;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        try {
                            Thread.sleep(10000);
                        } catch (Exception e2) {
                        }
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private static String i() {
        return "https://" + P + "/rest/gc2";
    }

    public static b a() {
        return a;
    }

    public void q() {
        r.a().b(new a());
    }
}

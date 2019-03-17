package com.kingsoft.iciba.powerwordocrjar;

import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

public class h implements Callback {
    static String a = "NetManage";
    private static h b;
    private Vector c = new Vector();
    private boolean d = false;
    private i e = new i(this);
    private ConcurrentHashMap f = new ConcurrentHashMap();
    private Object g = new Object();

    private h() {
    }

    public static synchronized h a() {
        h hVar;
        synchronized (h.class) {
            if (b == null) {
                b = new h();
                b.e.start();
            }
            hVar = b;
        }
        return hVar;
    }

    private void a(j jVar) {
        Log.d(a, "onRequestFailed()  ..");
        switch (jVar.a) {
            case 0:
                String str = "";
                synchronized (this.g) {
                    for (Object obj : this.f.keySet()) {
                        try {
                            ((e) this.f.get(obj)).a(jVar, str);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                return;
            default:
                return;
        }
    }

    private void a(j jVar, String str, int i, boolean z) {
        Log.d(a, "onRequestFinished()  ..requestEntry._type:" + jVar.a);
        Log.d(a, "onRequestFinished()  ..registerMap:" + this.f.toString());
        switch (jVar.a) {
            case 0:
                synchronized (this.g) {
                    for (Integer intValue : this.f.keySet()) {
                        int intValue2 = intValue.intValue();
                        if (intValue2 == i) {
                            ((e) this.f.get(Integer.valueOf(intValue2))).a(jVar, str);
                        }
                    }
                }
                return;
            default:
                return;
        }
    }

    public void a(j jVar, int i, boolean z) {
        this.e.a(jVar, i, z);
    }

    public void a(Integer num, e eVar) {
        Log.d(a, "registerNet()  key:" + num + ", net:" + eVar);
        synchronized (this.g) {
            this.f.put(num, eVar);
        }
    }

    /* JADX WARNING: Missing block: B:18:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(Integer num, e eVar) {
        Log.d(a, "unRegisterNet()  key:" + num + ", net:" + eVar);
        if (eVar != null) {
            synchronized (this.g) {
                if (this.f.get(num) == null) {
                } else if (((e) this.f.get(num)).equals(eVar)) {
                    this.f.remove(num);
                }
            }
        }
    }

    public boolean handleMessage(Message message) {
        int i = message.what;
        return false;
    }
}

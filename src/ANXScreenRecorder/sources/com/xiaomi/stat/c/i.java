package com.xiaomi.stat.c;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.stat.C0001b;
import com.xiaomi.stat.C0003d;
import com.xiaomi.stat.I;
import com.xiaomi.stat.a.b;
import com.xiaomi.stat.a.c;
import com.xiaomi.stat.b.f;
import com.xiaomi.stat.b.h;
import com.xiaomi.stat.d.d;
import com.xiaomi.stat.d.e;
import com.xiaomi.stat.d.j;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.l;
import com.xiaomi.stat.d.m;
import com.xiaomi.stat.d.r;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class i {
    private static final String a = "3.0";
    private static final String b = "UploaderEngine";
    private static final String c = "code";
    private static final String d = "UTF-8";
    private static final String e = "mistat";
    private static final String f = "uploader";
    private static final String g = "3.0.6";
    private static final String h = "Android";
    private static final int i = 200;
    private static final int j = 1;
    private static final int k = -1;
    private static final int l = 3;
    private static volatile i m;
    private final byte[] n = new byte[0];
    private FileLock o;
    private FileChannel p;
    private g q;
    private a r;

    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 1) {
                i.this.f();
            }
        }
    }

    public static i a() {
        if (m == null) {
            synchronized (i.class) {
                if (m == null) {
                    m = new i();
                }
            }
        }
        return m;
    }

    private i() {
        e();
    }

    private void e() {
        HandlerThread handlerThread = new HandlerThread("mi_analytics_uploader_worker");
        handlerThread.start();
        this.r = new a(handlerThread.getLooper());
        this.q = new g(handlerThread.getLooper());
    }

    public void b() {
        this.q.b();
        c();
    }

    public void c() {
        if (!l.a()) {
            k.b("UploaderEngine postToServer network is not connected ");
        } else if (C0001b.a() && C0001b.b()) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            a(obtain);
        } else {
            k.b("UploaderEngine postToServer statistic disable or network disable access! ");
        }
    }

    private void a(Message message) {
        synchronized (this.n) {
            if (this.r == null || this.q == null) {
                e();
            }
            this.r.sendMessage(message);
        }
    }

    public static byte[] a(String str) {
        OutputStream gZIPOutputStream;
        Exception e;
        Throwable th;
        byte[] bArr = null;
        OutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(str.getBytes(d).length);
            try {
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            } catch (Exception e2) {
                e = e2;
                gZIPOutputStream = bArr;
                try {
                    k.e("UploaderEngine zipData failed! " + e.toString());
                    j.a(byteArrayOutputStream);
                    j.a(gZIPOutputStream);
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    j.a(byteArrayOutputStream);
                    j.a(gZIPOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                gZIPOutputStream = bArr;
                th = th3;
                j.a(byteArrayOutputStream);
                j.a(gZIPOutputStream);
                throw th;
            }
            try {
                gZIPOutputStream.write(str.getBytes(d));
                gZIPOutputStream.finish();
                bArr = byteArrayOutputStream.toByteArray();
                j.a(byteArrayOutputStream);
                j.a(gZIPOutputStream);
            } catch (Exception e3) {
                e = e3;
                k.e("UploaderEngine zipData failed! " + e.toString());
                j.a(byteArrayOutputStream);
                j.a(gZIPOutputStream);
                return bArr;
            }
        } catch (Exception e4) {
            e = e4;
            gZIPOutputStream = bArr;
            byteArrayOutputStream = bArr;
            k.e("UploaderEngine zipData failed! " + e.toString());
            j.a(byteArrayOutputStream);
            j.a(gZIPOutputStream);
            return bArr;
        } catch (Throwable th32) {
            gZIPOutputStream = bArr;
            byteArrayOutputStream = bArr;
            th = th32;
            j.a(byteArrayOutputStream);
            j.a(gZIPOutputStream);
            throw th;
        }
        return bArr;
    }

    private byte[] a(byte[] bArr) {
        return h.a().a(bArr);
    }

    private String b(byte[] bArr) {
        return d.a(bArr);
    }

    private void f() {
        if (h()) {
            if (C0001b.e()) {
                b(true);
                b(false);
            } else {
                a(c(false), com.xiaomi.stat.b.d.a().c());
            }
            i();
        }
    }

    private void b(boolean z) {
        a(c(z), com.xiaomi.stat.b.d.a().a(z));
    }

    private void a(b[] bVarArr, String str) {
        if (bVarArr.length == 0) {
            k.c(b, "privacy policy or network state not matched");
            return;
        }
        com.xiaomi.stat.a.k a = c.a().a(bVarArr);
        AtomicInteger atomicInteger = new AtomicInteger();
        boolean z = a != null ? a.c : true;
        k.b(b + a);
        com.xiaomi.stat.a.k kVar = a;
        boolean z2 = z;
        z = false;
        while (kVar != null) {
            boolean z3;
            ArrayList arrayList = kVar.b;
            try {
                String a2 = a(kVar.a, str);
                if (k.a()) {
                    k.b("UploaderEngine payload:" + a2);
                }
                a2 = b(a(a(a2)));
                if (k.a()) {
                    k.b("UploaderEngine encodePayload " + a2);
                }
                a2 = c.a(f.a().c(), c(a2), true);
                if (k.a()) {
                    k.b("UploaderEngine sendDataToServer response: " + a2);
                }
                if (TextUtils.isEmpty(a2)) {
                    z = false;
                } else {
                    z = b(a2);
                }
                z3 = z;
            } catch (Exception e) {
                z3 = false;
            }
            if (z3) {
                c.a().a(arrayList);
            } else {
                atomicInteger.addAndGet(1);
            }
            k.b("UploaderEngine deleteData= " + z3 + " retryCount.get()= " + atomicInteger.get());
            if (!z2) {
                if (!z3 && atomicInteger.get() > 3) {
                    z = z3;
                    break;
                }
                com.xiaomi.stat.a.k a3 = c.a().a(bVarArr);
                if (a3 != null) {
                    z = a3.c;
                } else {
                    z = z2;
                }
                z2 = z;
                z = z3;
                kVar = a3;
            } else {
                z = z3;
                break;
            }
        }
        if (this.q != null) {
            this.q.b(z);
        }
    }

    private boolean b(String str) {
        try {
            int optInt = new JSONObject(str).optInt(c);
            if (optInt == i) {
                return true;
            }
            if (optInt == b.b || optInt == b.d || optInt == b.e || optInt == b.f || optInt == b.g || optInt == b.k) {
                h.a().a(true);
                com.xiaomi.stat.b.d.a().b();
                return false;
            } else if (optInt != b.m) {
                return true;
            } else {
                h.a().a(true);
                com.xiaomi.stat.b.d.a().b();
                return true;
            }
        } catch (Throwable e) {
            k.e(b, "parseUploadingResult exception ", e);
            return false;
        }
    }

    private b[] c(boolean z) {
        ArrayList g = g();
        int size = g.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            String str = (String) g.get(i);
            int a = a(new f(str, z).a());
            if (a != -1) {
                arrayList.add(new b(str, a, z));
            }
        }
        b d = d(z);
        if (d != null) {
            arrayList.add(d);
        }
        return (b[]) arrayList.toArray(new b[arrayList.size()]);
    }

    private b d(boolean z) {
        int a = new f(z).a();
        k.b("UploaderEngine createMainAppFilter: " + a);
        int a2 = a(a);
        if (a2 != -1) {
            return new b(null, a2, z);
        }
        return null;
    }

    private int a(int i) {
        if (i == 1) {
            return -1;
        }
        if (i == 3) {
            return 0;
        }
        return 1;
    }

    private ArrayList<String> g() {
        int length;
        int i = 0;
        String[] o = C0001b.o();
        if (o != null) {
            length = o.length;
        } else {
            length = 0;
        }
        ArrayList<String> arrayList = new ArrayList();
        while (i < length) {
            if (!TextUtils.isEmpty(o[i])) {
                arrayList.add(o[i]);
            }
            i++;
        }
        return arrayList;
    }

    private HashMap<String, String> c(String str) {
        HashMap<String, String> hashMap = new HashMap();
        hashMap.put("ai", I.b());
        hashMap.put(C0003d.b, "3.0.6");
        hashMap.put(C0003d.c, a);
        hashMap.put(C0003d.d, m.g());
        hashMap.put(C0003d.e, str);
        hashMap.put(C0003d.ak, h.a().c());
        hashMap.put(C0003d.g, h.a().b());
        return hashMap;
    }

    private String a(JSONArray jSONArray, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(C0003d.h, str);
            a(str, jSONObject);
            jSONObject.put(C0003d.I, e.d());
            jSONObject.put("rc", m.h());
            jSONObject.put(C0003d.j, com.xiaomi.stat.d.c.b());
            jSONObject.put(C0003d.k, C0001b.t());
            jSONObject.put(C0003d.l, h);
            jSONObject.put(C0003d.Z, m.a(I.a()));
            jSONObject.put(C0003d.m, this.q != null ? this.q.a() : 0);
            jSONObject.put(C0003d.n, String.valueOf(r.b()));
            jSONObject.put(C0003d.o, m.e());
            jSONObject.put(C0003d.p, a.a(I.b()));
            String[] o = C0001b.o();
            if (o != null && o.length > 0) {
                jSONObject.put(C0003d.v, a(o));
            }
            jSONObject.put(C0003d.q, m.d());
            jSONObject.put("n", l.b(I.a()));
            jSONObject.put(C0003d.t, C0001b.h());
            jSONObject.put(C0003d.u, jSONArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    private void a(String str, JSONObject jSONObject) {
        try {
            if (!C0001b.e() && TextUtils.isEmpty(str)) {
                Context a = I.a();
                jSONObject.put(C0003d.C, e.b(a));
                jSONObject.put(C0003d.J, e.k(a));
                jSONObject.put(C0003d.L, e.n(a));
                jSONObject.put(C0003d.O, e.q(a));
                jSONObject.put("ai", e.p(a));
            }
        } catch (Exception e) {
        }
    }

    private JSONArray a(String[] strArr) {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < strArr.length; i++) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(strArr[i], a.a(strArr[i]));
                jSONArray.put(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONArray;
    }

    public synchronized void d() {
        if (this.q != null) {
            this.q.c();
        }
    }

    public void a(boolean z) {
        if (this.q != null) {
            this.q.a(z);
        }
    }

    private boolean h() {
        boolean z = false;
        File file = new File(I.a().getFilesDir(), e);
        if (!file.exists()) {
            file.mkdir();
        }
        try {
            this.p = new FileOutputStream(new File(file, f)).getChannel();
            try {
                this.o = this.p.tryLock();
                if (this.o != null) {
                    k.c("UploaderEngine acquire lock for uploader");
                    z = true;
                    if (this.o == null) {
                        try {
                            this.p.close();
                            this.p = null;
                        } catch (IOException e) {
                        }
                    }
                } else {
                    k.c("UploaderEngine acquire lock for uploader failed");
                    if (this.o == null) {
                        try {
                            this.p.close();
                            this.p = null;
                        } catch (IOException e2) {
                        }
                    }
                }
            } catch (IOException e3) {
                k.c("UploaderEngine acquire lock for uploader failed with " + e3);
                if (this.o == null) {
                    try {
                        this.p.close();
                        this.p = null;
                    } catch (IOException e4) {
                    }
                }
            } catch (Throwable th) {
                if (this.o == null) {
                    try {
                        this.p.close();
                        this.p = null;
                    } catch (IOException e5) {
                    }
                }
            }
        } catch (FileNotFoundException e6) {
            k.c("UploaderEngine acquire lock for uploader failed with " + e6);
        }
        return z;
    }

    private void i() {
        try {
            if (this.o != null) {
                this.o.release();
                this.o = null;
            }
            if (this.p != null) {
                this.p.close();
                this.p = null;
            }
            k.c("UploaderEngine releaseLock lock for uploader");
        } catch (IOException e) {
            k.c("UploaderEngine releaseLock lock for uploader failed with " + e);
        }
    }
}

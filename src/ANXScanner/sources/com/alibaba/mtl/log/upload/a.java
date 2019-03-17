package com.alibaba.mtl.log.upload;

import android.os.SystemClock;
import android.text.TextUtils;
import com.alibaba.mtl.log.a.d;
import com.alibaba.mtl.log.c.c;
import com.alibaba.mtl.log.d.e;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.k;
import com.alibaba.mtl.log.d.l;
import com.alibaba.mtl.log.d.n;
import com.alibaba.mtl.log.d.t;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.zip.GZIPOutputStream;

/* compiled from: UploadTask */
public abstract class a implements Runnable {
    static int A = 0;
    private static volatile boolean G = false;
    private static boolean H = false;
    int B = -1;
    int C = 0;
    float a = 200.0f;

    public abstract void H();

    public abstract void I();

    public void run() {
        try {
            J();
            H();
        } catch (Throwable th) {
        }
    }

    public static boolean isRunning() {
        return G;
    }

    /* JADX WARNING: Removed duplicated region for block: B:81:0x022f A:{Splitter: B:52:0x012e, ExcHandler: all (th java.lang.Throwable)} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:76:0x0221, code:
            r2 = move-exception;
     */
    /* JADX WARNING: Missing block: B:78:?, code:
            com.alibaba.mtl.log.d.i.a("UploadTask", "thread sleep interrupted", r2);
     */
    /* JADX WARNING: Missing block: B:82:0x0230, code:
            com.alibaba.mtl.log.d.k.release();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void J() {
        i.a("UploadTask", "Upload");
        if (!com.alibaba.mtl.log.a.s) {
            i.a("UploadTask", "Upload is disabled");
        } else if (l.isConnected() && !H && !G) {
            G = true;
            int i = 0;
            Map b = d.a().b();
            int i2 = 0;
            while (i2 < 3) {
                if (!k.c(com.alibaba.mtl.log.a.getContext())) {
                    i.a("UploadTask", "Other Process is Uploading, break");
                    break;
                }
                Object obj;
                int i3;
                List a;
                c.a().store();
                List list = null;
                if (b == null || b.size() <= 0) {
                    obj = null;
                    i3 = i;
                } else {
                    int i4 = i;
                    while (i4 < b.size()) {
                        com.alibaba.mtl.log.a.c cVar = (com.alibaba.mtl.log.a.c) b.get(i4 + "");
                        String str = null;
                        if (cVar.a != null && cVar.a.size() > 0) {
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("eventId").append(" in (");
                            i = 0;
                            while (true) {
                                i3 = i;
                                if (i3 >= cVar.a.size()) {
                                    break;
                                }
                                if (i3 != 0) {
                                    stringBuilder.append(" , ");
                                }
                                stringBuilder.append((String) cVar.a.get(i3));
                                i = i3 + 1;
                            }
                            stringBuilder.append(" ) ");
                            str = stringBuilder.toString();
                        }
                        a = c.a().a(str, g());
                        if (a.size() > 0) {
                            i3 = i4;
                            obj = cVar.host;
                            list = a;
                            break;
                        }
                        i4++;
                        list = a;
                    }
                    i3 = i4;
                    obj = null;
                }
                if (list == null || (list != null && list.size() == 0)) {
                    a = c.a().a(null, g());
                } else {
                    a = list;
                }
                if (a == null || a.size() == 0) {
                    G = false;
                    break;
                }
                int b2 = b(a);
                Map a2 = a(a);
                if (a2 == null || a2.size() == 0) {
                    G = false;
                    break;
                }
                try {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    String g = com.alibaba.mtl.log.a.a.g();
                    if (!TextUtils.isEmpty(obj)) {
                        g = "http://" + obj + "/rest/sur";
                    }
                    com.alibaba.mtl.log.d.a.a a3 = a(t.a(g, null, a2), a2);
                    boolean z = a3.I;
                    a(Boolean.valueOf(z), SystemClock.elapsedRealtime() - elapsedRealtime);
                    if (!z) {
                        com.alibaba.mtl.log.b.a.d(a.size() - b2);
                        com.alibaba.mtl.log.b.a.t();
                        if (!a3.g()) {
                            if (a3.h()) {
                                H = true;
                                k.release();
                                break;
                            }
                        }
                        k.release();
                        break;
                    }
                    int a4 = c.a().a(a);
                    if (a4 < a.size() - b2) {
                        I();
                    }
                    com.alibaba.mtl.log.b.a.a(a, a4);
                    com.alibaba.mtl.log.b.a.s();
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    i.a("UploadTask", "logs.size():", Integer.valueOf(a.size()), " selfMonitorLogCount:", Integer.valueOf(b2));
                    i.a("UploadTask", "upload isSendSuccess:", Boolean.valueOf(z), " consume:", Long.valueOf(r12 - elapsedRealtime), " delete consume:", Long.valueOf(elapsedRealtime2 - r12));
                    Thread.sleep((long) new Random().nextInt(5000));
                    k.release();
                } catch (Throwable th) {
                }
                i2++;
                i = i3;
            }
            G = false;
            k.release();
        }
    }

    private int b(List<com.alibaba.mtl.log.model.a> list) {
        if (list == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = ((com.alibaba.mtl.log.model.a) list.get(i2)).S;
            if (str != null && "6005".equalsIgnoreCase(str.toString())) {
                i++;
            }
        }
        return i;
    }

    private int g() {
        if (this.B == -1) {
            String t = l.t();
            if ("wifi".equalsIgnoreCase(t)) {
                this.B = 20;
            } else if ("4G".equalsIgnoreCase(t)) {
                this.B = 16;
            } else if ("3G".equalsIgnoreCase(t)) {
                this.B = 12;
            } else {
                this.B = 8;
            }
        }
        return this.B;
    }

    private com.alibaba.mtl.log.d.a.a a(String str, Map<String, Object> map) {
        if (str != null) {
            byte[] bArr = e.a(2, str, map, false).data;
            i.a("UploadTask", "url:", str);
            if (bArr != null) {
                String str2;
                try {
                    str2 = new String(bArr, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    str2 = null;
                }
                if (str2 != null) {
                    i.a("UploadTask", "result:", str2);
                    return com.alibaba.mtl.log.d.a.a(str2);
                }
            }
        }
        return com.alibaba.mtl.log.d.a.a.a;
    }

    private int a(Boolean bool, long j) {
        if (j < 0) {
            return this.B;
        }
        float f = ((float) this.C) / ((float) j);
        if (!bool.booleanValue()) {
            this.B /= 2;
            A++;
        } else if (j > 45000) {
            return this.B;
        } else {
            this.B = (int) ((((double) (f * 45000.0f)) / ((double) this.a)) - ((double) A));
        }
        if (this.B < 1) {
            this.B = 1;
            A = 0;
        } else if (this.B > 350) {
            this.B = 350;
        }
        i.a("UploadTask", "winsize:", Integer.valueOf(this.B));
        return this.B;
    }

    private Map<String, Object> a(List<com.alibaba.mtl.log.model.a> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            List a = a((com.alibaba.mtl.log.model.a) list.get(i));
            if (a != null) {
                for (int i2 = 0; i2 < a.size(); i2++) {
                    StringBuilder stringBuilder = (StringBuilder) hashMap.get(a.get(i2));
                    if (stringBuilder == null) {
                        stringBuilder = new StringBuilder();
                        hashMap.put(a.get(i2), stringBuilder);
                    } else {
                        stringBuilder.append("\n");
                    }
                    stringBuilder.append(((com.alibaba.mtl.log.model.a) list.get(i)).getContent());
                }
            }
        }
        HashMap hashMap2 = new HashMap();
        this.C = 0;
        for (String str : hashMap.keySet()) {
            Object a2 = a(((StringBuilder) hashMap.get(str)).toString());
            hashMap2.put(str, a2);
            this.C += a2.length;
        }
        this.a = ((float) this.C) / ((float) list.size());
        i.a("UploadTask", "averagePackageSize:", Float.valueOf(this.a));
        return hashMap2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0031 A:{SYNTHETIC, Splitter: B:17:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003b A:{SYNTHETIC, Splitter: B:23:0x003b} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] a(String str) {
        IOException e;
        byte[] a;
        Throwable th;
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream;
        try {
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(str.getBytes("UTF-8"));
                gZIPOutputStream.flush();
                if (gZIPOutputStream != null) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Exception e2) {
                    }
                }
            } catch (IOException e3) {
                e = e3;
                try {
                    e.printStackTrace();
                    if (gZIPOutputStream != null) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception e4) {
                        }
                    }
                    a = n.a(byteArrayOutputStream.toByteArray(), "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK");
                    byteArrayOutputStream.close();
                    return a;
                } catch (Throwable th2) {
                    th = th2;
                    if (gZIPOutputStream != null) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception e5) {
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e6) {
            e = e6;
            gZIPOutputStream = null;
            e.printStackTrace();
            if (gZIPOutputStream != null) {
            }
            a = n.a(byteArrayOutputStream.toByteArray(), "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK");
            byteArrayOutputStream.close();
            return a;
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream = null;
            if (gZIPOutputStream != null) {
            }
            throw th;
        }
        a = n.a(byteArrayOutputStream.toByteArray(), "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK");
        try {
            byteArrayOutputStream.close();
        } catch (Exception e7) {
        }
        return a;
    }

    private List<String> a(com.alibaba.mtl.log.model.a aVar) {
        return com.alibaba.mtl.log.a.a.a(aVar.S);
    }
}

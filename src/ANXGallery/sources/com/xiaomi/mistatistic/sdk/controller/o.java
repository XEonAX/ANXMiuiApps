package com.xiaomi.mistatistic.sdk.controller;

import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.controller.asyncjobs.b;
import com.xiaomi.mistatistic.sdk.controller.asyncjobs.c;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: RemoteDataUploadManager */
public class o {
    private static AtomicBoolean a = new AtomicBoolean(false);
    private static int b = 0;

    /* compiled from: RemoteDataUploadManager */
    public class a implements com.xiaomi.mistatistic.sdk.controller.e.a {
        public void execute() {
            o.this.a(false);
        }
    }

    public o(int i) {
        b = i;
        if (i == 1) {
            j.a("RDUM", "new job to upload ALL events");
        } else if (i == 2) {
            j.a("RDUM", "new job to upload BASIC events");
        }
    }

    public void a() {
        a(true);
    }

    public void a(boolean z) {
        try {
            e();
            if (!CustomSettings.isDataUploadingEnabled()) {
                j.d("RDUM", "Upload is disabled by customer.");
            } else if (!s.a().b(b)) {
            } else {
                if (b != 2 && !f()) {
                    j.d("RDUM", "upload is NOT allowed by the remote server.");
                } else if (a.compareAndSet(false, true)) {
                    j.a("RDUM", "Start the uploading job ...");
                    h hVar = new h();
                    b(false);
                    if (hVar.e()) {
                        b(true);
                    }
                    s.a().d();
                } else if (z) {
                    j.a("RDUM", String.format("sUploading = %s, trigger uploading job with delay %d", new Object[]{Boolean.valueOf(a.get()), Long.valueOf(10000)}));
                    e.a().a(new a(), 10000);
                }
            }
        } catch (Throwable e) {
            j.a("RDUM", "triggerUploadingJob exception", e);
        }
    }

    public static boolean b() {
        return a.get();
    }

    private void e() {
        try {
            h hVar = new h();
            long currentTimeMillis = System.currentTimeMillis() - 259200000;
            List e = hVar.e(currentTimeMillis);
            hVar.f(currentTimeMillis);
            n.a("ed", e);
        } catch (Throwable e2) {
            j.a("RDUM", "deleteExpiredEvents exception", e2);
        }
    }

    private void b(boolean z) {
        e.a().a(new b(b, s.a().e(), z, new com.xiaomi.mistatistic.sdk.controller.asyncjobs.b.a() {
            public void a(String str, long j, long j2, int i, boolean z) {
                if (TextUtils.isEmpty(str)) {
                    o.a.set(false);
                    j.a("RDUM", String.format("packing completed with empty data, set Uploading %b", new Object[]{Boolean.valueOf(o.a.get())}));
                    return;
                }
                n.a("p", str);
                o.this.a(str, j, j2, i, z);
            }
        }));
    }

    private void a(String str, long j, long j2, int i, boolean z) {
        final long j3 = j;
        final long j4 = j2;
        e.b().a(new c(b, str, new com.xiaomi.mistatistic.sdk.controller.asyncjobs.c.a() {
            public void a(boolean z, String str, boolean z2) {
                if (z) {
                    n.a("u", str);
                    o.this.a(j3, j4, str, z2);
                    return;
                }
                o.a.set(false);
                j.a("RDUM", String.format("upload failed, set Uploading %b", new Object[]{Boolean.valueOf(o.a.get())}));
            }
        }, i, z));
    }

    private void a(long j, long j2, String str, boolean z) {
        final boolean z2 = z;
        final long j3 = j;
        final long j4 = j2;
        final String str2 = str;
        e.a().a(new com.xiaomi.mistatistic.sdk.controller.e.a() {
            public void execute() {
                try {
                    h hVar = new h();
                    hVar.a(Boolean.valueOf(z2));
                    hVar.a(j3, j4, o.b);
                    n.a("d", str2);
                    n.a();
                } catch (Throwable th) {
                    j.a("RDUM", "doDeleting exception: ", th);
                }
                o.a.set(false);
                j.a("RDUM", String.format("deleting done and uploading job is finished, set Uploading %b", new Object[]{Boolean.valueOf(o.a.get())}));
            }
        });
    }

    public static void a(long j) {
        long currentTimeMillis = System.currentTimeMillis() + j;
        m.b(d.a(), "next_upload_ts", currentTimeMillis);
        s.a().a(currentTimeMillis);
        j.a("RDUM", String.format("update next upload time to %d according to server delay %dms", new Object[]{Long.valueOf(currentTimeMillis), Long.valueOf(j)}));
    }

    private static boolean f() {
        return System.currentTimeMillis() > m.a(d.a(), "next_upload_ts", 0);
    }
}

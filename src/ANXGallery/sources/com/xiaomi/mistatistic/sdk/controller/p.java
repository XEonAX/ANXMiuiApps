package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.controller.e.a;
import com.xiaomi.mistatistic.sdk.data.i;
import com.xiaomi.mistatistic.sdk.data.j;
import com.xiaomi.mistatistic.sdk.data.l;
import com.xiaomi.mistatistic.sdk.data.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SessionManager */
public class p {
    private static final List<i> a = new ArrayList();
    private static volatile p b = null;
    private static long c = 30000;
    private Handler d = new Handler(e.c()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 31415927:
                    Context a = d.a();
                    long a2 = m.a(a, "session_begin", 0);
                    long a3 = m.a(a, "last_deactivate", 0);
                    String a4 = m.a(a, "pv_path", "");
                    if (a2 > 0 && a3 > a2) {
                        p.this.a(a, a2, a3);
                    }
                    if (!TextUtils.isEmpty(a4)) {
                        p.this.a(a, a4, a2);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    public static p a() {
        if (b == null) {
            synchronized (p.class) {
                if (b == null) {
                    b = new p();
                }
            }
        }
        return b;
    }

    private p() {
    }

    public void a(final String str, final String str2) {
        if (f.a(d.a()).b()) {
            this.d.removeMessages(31415927);
            e.a().a(new a() {
                public void execute() {
                    p.this.b(str, str2);
                }
            });
            return;
        }
        j.c("Session manager V1 is disabled.");
    }

    private void b(String str, String str2) {
        try {
            String str3;
            long currentTimeMillis = System.currentTimeMillis();
            Context a = d.a();
            long a2 = m.a(a, "session_begin", 0);
            long a3 = m.a(a, "last_deactivate", 0);
            String a4 = m.a(a, "pv_path", "");
            if (a2 <= 0) {
                m.b(a, "session_begin", currentTimeMillis);
                a(a, currentTimeMillis);
            } else if (a3 <= 0) {
                m.b(a, "session_begin", currentTimeMillis);
                a(a, currentTimeMillis);
                if (!TextUtils.isEmpty(a4)) {
                    a(a, a4, a2);
                    a4 = "";
                }
            }
            if (a3 <= 0 || currentTimeMillis - a3 <= c) {
                str3 = a4;
            } else {
                a(a, a2, a3);
                if (TextUtils.isEmpty(a4)) {
                    str3 = a4;
                } else {
                    a(a, a4, a2);
                    str3 = "";
                }
                m.b(a, "session_begin", currentTimeMillis);
                a(a, currentTimeMillis);
            }
            if (!(str3.endsWith(str) && TextUtils.isEmpty(str2))) {
                m.b(a, "pv_path", c(str3, str));
                String str4 = "source_path";
                m.b(a, str4, c(m.a(a, "source_path", ""), str2));
            }
            a.add(new i(str, Long.valueOf(currentTimeMillis)));
        } catch (Throwable e) {
            j.a("processActActivated exception: ", e);
        }
    }

    public void a(final String str) {
        if (f.a(d.a()).b()) {
            e.a().a(new a() {
                public void execute() {
                    p.this.b(str);
                }
            });
            this.d.sendEmptyMessageDelayed(31415927, c);
            return;
        }
        j.c("Session manager V1 is disabled.");
    }

    private void b(String str) {
        try {
            Context a = d.a();
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            m.b(a, "last_deactivate", valueOf.longValue());
            if (!a.isEmpty()) {
                int size;
                if (TextUtils.isEmpty(str)) {
                    size = a.size() - 1;
                } else {
                    size = a.size() - 1;
                    while (size >= 0) {
                        if (TextUtils.equals(((i) a.get(size)).b(), str)) {
                            break;
                        }
                        size--;
                    }
                    size = -1;
                }
                if (size >= 0) {
                    i iVar = (i) a.get(size);
                    CharSequence b = iVar.b();
                    long a2 = iVar.a();
                    long longValue = valueOf.longValue() - a2;
                    if (!TextUtils.isEmpty(b) && a2 > 0 && longValue > 0) {
                        iVar.a(Long.valueOf(longValue));
                        LocalEventRecorder.insertEvent(iVar);
                        a.remove(size);
                    }
                }
            }
        } catch (Throwable e) {
            j.a("processActDeativated exception: ", e);
        }
    }

    private void a(Context context, long j, long j2) {
        String c = l.c(context);
        if (TextUtils.isEmpty(c)) {
            c = "NULL";
        }
        LocalEventRecorder.insertEvent(new l(j, j2, c));
        m.b(context, "session_begin", 0);
        m.b(context, "last_deactivate", 0);
    }

    private void a(Context context, String str, long j) {
        if (!TextUtils.isEmpty(str)) {
            LocalEventRecorder.insertEvent(new j(str, m.a(context, "source_path", ""), j));
            m.b(context, "source_path", "");
            m.b(context, "pv_path", "");
        }
    }

    private void a(Context context, long j) {
        LocalEventRecorder.insertEvent(new m(j, 0));
    }

    private String c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return "," + str2;
    }
}

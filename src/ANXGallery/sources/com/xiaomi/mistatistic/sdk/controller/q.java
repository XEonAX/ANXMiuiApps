package com.xiaomi.mistatistic.sdk.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.controller.e.a;
import com.xiaomi.mistatistic.sdk.data.k;

/* compiled from: SessionManagerV2 */
public class q {
    private static volatile q a = null;
    private static boolean b = false;
    private Handler c = new Handler(e.c()) {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 100:
                    m.b(d.a(), "action_auto_end", System.currentTimeMillis());
                    q.this.c.sendEmptyMessageDelayed(100, 15000);
                    return;
                default:
                    return;
            }
        }
    };

    public static q a() {
        if (a == null) {
            synchronized (q.class) {
                if (a == null) {
                    a = new q();
                }
            }
        }
        return a;
    }

    private q() {
    }

    public void a(final String str) {
        e.a().a(new a() {
            public void execute() {
                if (f.a(d.a()).a()) {
                    q.this.c(str);
                } else {
                    j.c("PA is disabled.");
                }
            }
        });
    }

    private void c(String str) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Context a = d.a();
            long a2 = m.a(a, "action_begin", 0);
            long a3 = m.a(a, "action_end", 0);
            long a4 = m.a(a, "action_auto_end", 0);
            Object a5 = m.a(a, "action_name", "");
            if (!TextUtils.isEmpty(a5) && a2 > 0 && a3 == 0) {
                j.a("SMV2", "Record the last unusual PA event with auto-end.");
                a(a5, a2, a4, true);
            }
            if (!b) {
                b = true;
                if (!TextUtils.isEmpty(a5) && a2 > 0 && a3 > 0) {
                    boolean j = new h().j(a2);
                    j.a("SMV2", "check the last pa event whether been inserted to db. actionBeginTs =" + a2 + " isInserted = " + j);
                    if (!j) {
                        j.a("SMV2", "Record the last unusual PA event without auto-end.");
                        a(a5, a2, a3, false);
                    }
                }
            }
            m.b(a, "action_begin", currentTimeMillis);
            m.b(a, "action_end", 0);
            m.b(a, "action_auto_end", 0);
            m.b(a, "action_name", str);
            this.c.sendEmptyMessageDelayed(100, 15000);
        } catch (Throwable e) {
            j.a("processActActivated exception: ", e);
        }
    }

    public void b(final String str) {
        e.a().a(new a() {
            public void execute() {
                if (f.a(d.a()).a()) {
                    q.this.d(str);
                } else {
                    j.c("PA is disabled.");
                }
            }
        });
    }

    private void d(String str) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Context a = d.a();
            long a2 = m.a(a, "action_begin", 0);
            Object a3 = m.a(a, "action_name", "");
            this.c.removeMessages(100);
            if (str.equals(a3)) {
                m.b(a, "action_end", currentTimeMillis);
                if (!TextUtils.isEmpty(a3) && a2 > 0) {
                    a(a3, a2, currentTimeMillis, false);
                    return;
                }
                return;
            }
            j.d("SMV2", "The actName of recordPageEnd is NOT equal to actName of recordPageStart.");
            b();
        } catch (Throwable e) {
            j.a("processActDeactivated exception: ", e);
        }
    }

    private void b() {
        Context a = d.a();
        m.b(a, "action_begin", 0);
        m.b(a, "action_end", 0);
        m.b(a, "action_auto_end", 0);
        m.b(a, "action_name", "");
    }

    private void a(String str, long j, long j2, boolean z) {
        String c = l.c(d.a());
        if (TextUtils.isEmpty(c)) {
            c = "NULL";
        }
        LocalEventRecorder.insertEvent(new k(str, j, j2, z, c));
    }
}

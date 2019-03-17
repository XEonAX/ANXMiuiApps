package com.alibaba.mtl.log.c;

import com.alibaba.baichuan.trade.biz.applink.adapter.AppLinkConstants;
import com.alibaba.mtl.log.d.i;
import com.alibaba.mtl.log.d.r;
import com.alibaba.mtl.log.upload.UploadEngine;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: LogStoreMgr */
public class c {
    private static c a;
    /* renamed from: a */
    private a f58a = new b(com.alibaba.mtl.log.a.getContext());
    private Runnable b = new Runnable() {
        public void run() {
            c.this.store();
        }
    };
    private List<com.alibaba.mtl.log.model.a> l = new CopyOnWriteArrayList();

    /* compiled from: LogStoreMgr */
    class a implements Runnable {
        a() {
        }

        public void run() {
            c.this.a;
            if (c.this.a.count() > 9000) {
                c.this.G();
            }
        }
    }

    private c() {
        UploadEngine.getInstance().start();
        r.a().b(new a());
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (a == null) {
                a = new c();
            }
            cVar = a;
        }
        return cVar;
    }

    public void a(com.alibaba.mtl.log.model.a aVar) {
        i.a("LogStoreMgr", "[add] :", aVar.W);
        com.alibaba.mtl.log.b.a.l(aVar.S);
        this.l.add(aVar);
        if (this.l.size() >= 100) {
            r.a().f(1);
            r.a().a(1, this.b, 0);
        } else if (!r.a().b(1)) {
            r.a().a(1, this.b, 5000);
        }
    }

    public int a(List<com.alibaba.mtl.log.model.a> list) {
        i.a("LogStoreMgr", list);
        return this.a.a((List) list);
    }

    public List<com.alibaba.mtl.log.model.a> a(String str, int i) {
        i.a("LogStoreMgr", "[get]", this.a.a(str, i));
        return this.a.a(str, i);
    }

    public synchronized void store() {
        i.a("LogStoreMgr", "[store]");
        List list = null;
        try {
            synchronized (this.l) {
                if (this.l.size() > 0) {
                    list = new ArrayList(this.l);
                    this.l.clear();
                }
            }
            if (list != null) {
                if (list.size() > 0) {
                    this.a.a(list);
                }
            }
        } catch (Throwable th) {
        }
    }

    public void clear() {
        i.a("LogStoreMgr", "[clear]");
        this.a.clear();
        this.l.clear();
    }

    private void F() {
        Calendar instance = Calendar.getInstance();
        instance.add(5, -3);
        this.a.c(AppLinkConstants.TIME, String.valueOf(instance.getTimeInMillis()));
    }

    private void G() {
        this.a.e(1000);
    }
}

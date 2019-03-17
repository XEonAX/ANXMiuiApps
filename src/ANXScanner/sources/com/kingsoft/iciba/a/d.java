package com.kingsoft.iciba.a;

import android.content.Context;
import android.util.Log;
import com.alibaba.baichuan.trade.biz.monitor.InitMonitorPoint;

final class d implements Runnable {
    private /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public final void run() {
        try {
            this.a.d();
            if (this.a.d != null && this.a.e != null && this.a.f != null) {
                this.a.e.getMethod(InitMonitorPoint.MONITOR_POINT, new Class[]{Context.class, Long.TYPE}).invoke(this.a.f, new Object[]{this.a.d, Long.valueOf(this.a.c)});
            }
        } catch (Throwable e) {
            Log.e(c.a, "Init help class failed", e);
        }
    }
}

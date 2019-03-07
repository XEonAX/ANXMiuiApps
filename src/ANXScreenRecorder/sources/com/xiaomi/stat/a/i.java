package com.xiaomi.stat.a;

import android.database.DatabaseUtils;
import java.util.concurrent.Callable;

class i implements Callable<Long> {
    final /* synthetic */ c a;

    i(c cVar) {
        this.a = cVar;
    }

    /* renamed from: a */
    public Long call() {
        return Long.valueOf(DatabaseUtils.queryNumEntries(this.a.l.getReadableDatabase(), j.b));
    }
}

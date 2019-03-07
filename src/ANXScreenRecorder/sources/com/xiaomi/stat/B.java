package com.xiaomi.stat;

import android.database.Cursor;
import java.util.concurrent.Callable;

class B implements Callable<Cursor> {
    final /* synthetic */ A a;

    B(A a) {
        this.a = a;
    }

    /* renamed from: a */
    public Cursor call() throws Exception {
        try {
            return this.a.f.getWritableDatabase().query(a.b, null, null, null, null, null, null);
        } catch (Exception e) {
            return null;
        }
    }
}

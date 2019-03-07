package com.xiaomi.stat.a;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.xiaomi.stat.I;

class h implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ c b;

    h(c cVar, String str) {
        this.b = cVar;
        this.a = str;
    }

    public void run() {
        String str;
        String[] strArr;
        SQLiteDatabase writableDatabase = this.b.l.getWritableDatabase();
        if (TextUtils.equals(this.a, I.b())) {
            str = "sub is null";
            strArr = null;
        } else {
            str = "sub = ?";
            strArr = new String[]{this.a};
        }
        writableDatabase.delete(j.b, str, strArr);
    }
}

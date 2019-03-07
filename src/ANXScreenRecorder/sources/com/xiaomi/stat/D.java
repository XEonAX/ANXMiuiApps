package com.xiaomi.stat;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.xiaomi.stat.d.k;

class D implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ A c;

    D(A a, String str, String str2) {
        this.c = a;
        this.a = str;
        this.b = str2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0099  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        Cursor query;
        Object e;
        Throwable th;
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = this.c.f.getWritableDatabase();
            if (TextUtils.isEmpty(this.a)) {
                writableDatabase.delete(a.b, "pref_key=?", new String[]{this.b});
                if (cursor != null) {
                    cursor.close();
                    return;
                }
                return;
            }
            query = writableDatabase.query(a.b, null, "pref_key=?", new String[]{this.b}, null, null, null);
            try {
                Object obj;
                if (query.getCount() > 0) {
                    obj = null;
                } else {
                    int obj2 = 1;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put(a.c, this.b);
                contentValues.put(a.d, this.a);
                if (obj2 != null) {
                    writableDatabase.insert(a.b, null, contentValues);
                } else {
                    writableDatabase.update(a.b, contentValues, "pref_key=?", new String[]{this.b});
                }
                if (query != null) {
                    query.close();
                    return;
                }
                return;
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            query = cursor;
        } catch (Throwable th2) {
            th = th2;
            query = cursor;
            if (query != null) {
                query.close();
            }
            throw th;
        }
        try {
            k.c("MiStatPref", "update pref db failed with " + e);
            if (query != null) {
                query.close();
            }
        } catch (Throwable th3) {
            th = th3;
            if (query != null) {
            }
            throw th;
        }
    }
}

package com.xiaomi.stat.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.xiaomi.stat.H;
import com.xiaomi.stat.a.l.a;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.r;
import java.util.Calendar;

class g implements Runnable {
    final /* synthetic */ c a;

    g(c cVar) {
        this.a = cVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x013b  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x013b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        Object e;
        Cursor cursor;
        Throwable th;
        Cursor query;
        try {
            SQLiteDatabase writableDatabase = this.a.l.getWritableDatabase();
            Calendar instance = Calendar.getInstance();
            instance.setTimeInMillis(r.b());
            instance.set(6, instance.get(6) - 7);
            instance.set(11, 0);
            instance.set(12, 0);
            instance.set(13, 0);
            String str = "ts < ? and e != ?";
            String[] strArr = new String[]{Long.toString(instance.getTimeInMillis()), a.m};
            query = writableDatabase.query(j.b, new String[]{"ts"}, str, strArr, null, null, "ts ASC");
            try {
                int count = query.getCount();
                if (count != 0) {
                    H h = new H();
                    h.putInt(a.x, count);
                    k.c("EventManager", "delete obsolete events total number " + count);
                    int columnIndex = query.getColumnIndex("ts");
                    String str2 = null;
                    count = 0;
                    while (query.moveToNext()) {
                        instance.setTimeInMillis(query.getLong(columnIndex));
                        int i = instance.get(1);
                        int i2 = instance.get(2) + 1;
                        int i3 = instance.get(5);
                        CharSequence format = String.format("%4d%02d%02d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
                        if (TextUtils.equals(str2, format)) {
                            count++;
                            Object format2 = str2;
                        } else {
                            if (str2 != null) {
                                h.putInt(a.y + str2, count);
                            }
                            count = 1;
                        }
                        CharSequence str22 = format2;
                    }
                    if (str22 != null) {
                        h.putInt(a.y + str22, count);
                    }
                    this.a.b(l.a(h));
                    writableDatabase.delete(j.b, str, strArr);
                }
                if (query != null) {
                    query.close();
                }
            } catch (Exception e2) {
                e = e2;
                cursor = query;
                try {
                    k.c("EventManager", "remove obsolete events failed with " + e);
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    query = cursor;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (query != null) {
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            query = null;
            if (query != null) {
            }
            throw th;
        }
    }
}

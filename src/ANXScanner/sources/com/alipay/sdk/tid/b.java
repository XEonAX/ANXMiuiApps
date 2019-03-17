package com.alipay.sdk.tid;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.alipay.sdk.util.a;

public final class b {
    private static b c;
    public String a;
    public String b;

    private b() {
    }

    private String b() {
        return this.a;
    }

    private void a(String str) {
        this.a = str;
    }

    private String c() {
        return this.b;
    }

    private void b(String str) {
        this.b = str;
    }

    private void a(Context context) {
        a aVar = new a(context);
        try {
            aVar.a(a.a(context).a(), a.a(context).b(), this.a, this.b);
        } catch (Exception e) {
        } finally {
            aVar.close();
        }
    }

    private boolean d() {
        return TextUtils.isEmpty(this.a);
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (c == null) {
                c = new b();
                Context context = com.alipay.sdk.sys.b.a().a;
                a aVar = new a(context);
                String a = a.a(context).a();
                String b = a.a(context).b();
                c.a = aVar.a(a, b);
                c.b = aVar.b(a, b);
                if (TextUtils.isEmpty(c.b)) {
                    b bVar2 = c;
                    String toHexString = Long.toHexString(System.currentTimeMillis());
                    if (toHexString.length() > 10) {
                        toHexString = toHexString.substring(toHexString.length() - 10);
                    }
                    bVar2.b = toHexString;
                }
                aVar.a(a, b, c.a, c.b);
            }
            bVar = c;
        }
        return bVar;
    }

    private static void e() {
        Context context = com.alipay.sdk.sys.b.a().a;
        String a = a.a(context).a();
        String b = a.a(context).b();
        a aVar = new a(context);
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = aVar.getWritableDatabase();
            aVar.a(sQLiteDatabase, a, b, "", "");
            a.a(sQLiteDatabase, a.c(a, b));
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Exception e) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                sQLiteDatabase.close();
            }
        }
        aVar.close();
    }

    private static String f() {
        String toHexString = Long.toHexString(System.currentTimeMillis());
        if (toHexString.length() > 10) {
            return toHexString.substring(toHexString.length() - 10);
        }
        return toHexString;
    }
}

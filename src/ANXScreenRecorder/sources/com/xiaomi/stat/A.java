package com.xiaomi.stat;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.xiaomi.stat.d.k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;

public class A {
    private static final String a = "MiStatPref";
    private static final String b = "true";
    private static final String c = "false";
    private static A d;
    private Map<String, String> e = new HashMap();
    private SQLiteOpenHelper f;

    private static class a extends SQLiteOpenHelper {
        public static final String a = "mistat_pf";
        public static final String b = "pref";
        public static final String c = "pref_key";
        public static final String d = "pref_value";
        private static final int e = 1;
        private static final String f = "_id";
        private static final String g = "CREATE TABLE pref (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,pref_key TEXT,pref_value TEXT)";

        public a(Context context) {
            super(context, a, null, 1);
        }

        public void onCreate(SQLiteDatabase db) {
            db.execSQL(g);
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        }
    }

    public static A a() {
        if (d == null) {
            synchronized (A.class) {
                if (d == null) {
                    d = new A();
                }
            }
        }
        return d;
    }

    private A() {
        Context a = I.a();
        this.f = new a(a);
        b();
        c(a.getDatabasePath(a.a).getAbsolutePath());
    }

    private void b() {
        Object futureTask = new FutureTask(new B(this));
        try {
            C0002c.a(futureTask);
            Cursor cursor = null;
            try {
                cursor = (Cursor) futureTask.get();
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
            }
            if (cursor != null) {
                this.e.clear();
                try {
                    k.c(a, "load pref from db");
                    int columnIndex = cursor.getColumnIndex(a.c);
                    int columnIndex2 = cursor.getColumnIndex(a.d);
                    while (cursor.moveToNext()) {
                        String string = cursor.getString(columnIndex);
                        String string2 = cursor.getString(columnIndex2);
                        this.e.put(string, string2);
                        k.c(a, "key=" + string + " ,value=" + string2);
                    }
                } catch (Exception e3) {
                } finally {
                    cursor.close();
                }
            }
        } catch (RejectedExecutionException e4) {
            k.c(a, "load data execute failed with " + e4);
        }
    }

    private void c(String str) {
        new C(this, str).startWatching();
    }

    public int a(String str, int i) {
        synchronized (this) {
            if (this.e.containsKey(str)) {
                try {
                    i = Integer.valueOf((String) this.e.get(str)).intValue();
                } catch (NumberFormatException e) {
                }
            }
        }
        return i;
    }

    public float a(String str, float f) {
        synchronized (this) {
            if (this.e.containsKey(str)) {
                try {
                    f = Float.valueOf((String) this.e.get(str)).floatValue();
                } catch (NumberFormatException e) {
                }
            }
        }
        return f;
    }

    public String a(String str, String str2) {
        synchronized (this) {
            if (this.e.containsKey(str)) {
                String str3 = (String) this.e.get(str);
                return str3;
            }
            return str2;
        }
    }

    public long a(String str, long j) {
        synchronized (this) {
            if (this.e.containsKey(str)) {
                try {
                    j = Long.valueOf((String) this.e.get(str)).longValue();
                } catch (NumberFormatException e) {
                }
            }
        }
        return j;
    }

    public boolean a(String str, boolean z) {
        synchronized (this) {
            if (this.e.containsKey(str)) {
                String str2 = (String) this.e.get(str);
                if (b.equalsIgnoreCase(str2)) {
                    z = true;
                } else if (c.equalsIgnoreCase(str2)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public void b(String str, int i) {
        c(str, Integer.toString(i));
    }

    public void b(String str, float f) {
        c(str, Float.toString(f));
    }

    public void b(String str, String str2) {
        c(str, str2);
    }

    public void b(String str, long j) {
        c(str, Long.toString(j));
    }

    public void b(String str, boolean z) {
        c(str, Boolean.toString(z));
    }

    private void c(String str, String str2) {
        synchronized (this) {
            Object obj = 1;
            if (!TextUtils.isEmpty(str2)) {
                this.e.put(str, str2);
            } else if (this.e.containsKey(str)) {
                this.e.remove(str);
            } else {
                obj = null;
            }
            k.c(a, "put value: key=" + str + " ,value=" + str2);
            if (obj == null) {
                return;
            }
            Object futureTask = new FutureTask(new D(this, str2, str), null);
            try {
                C0002c.a(futureTask);
                try {
                    futureTask.get();
                } catch (InterruptedException e) {
                } catch (ExecutionException e2) {
                }
            } catch (RejectedExecutionException e3) {
                k.c(a, "execute failed with " + e3);
            }
        }
    }

    public boolean a(String str) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.e.containsKey(str);
        }
        return containsKey;
    }

    public void b(String str) {
        b(str, null);
    }
}

package com.xiaomi.stat.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.stat.C0000a;
import com.xiaomi.stat.C0002c;
import com.xiaomi.stat.I;
import com.xiaomi.stat.MiStatParams;
import com.xiaomi.stat.a.l.a;
import com.xiaomi.stat.d.k;
import com.xiaomi.stat.d.l;
import com.xiaomi.stat.d.m;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c {
    private static final String a = "EventManager";
    private static final int b = 10;
    private static final int c = 0;
    private static final int d = 300;
    private static final int e = 122880;
    private static final int f = 55;
    private static final int g = 2;
    private static final String h = "priority DESC, _id ASC";
    private static final int i = 7;
    private static final long j = 52428800;
    private static c k;
    private a l;
    private File m;

    public static c a() {
        if (k == null) {
            synchronized (c.class) {
                if (k == null) {
                    k = new c();
                }
            }
        }
        return k;
    }

    private c() {
        Context a = I.a();
        this.l = new a(a);
        this.m = a.getDatabasePath(j.a);
    }

    public void a(l lVar) {
        C0002c.a(new d(this, lVar));
        k.c(a, "add event: name=" + lVar.a);
    }

    private void b(l lVar) {
        int i = 0;
        d();
        SQLiteDatabase writableDatabase = this.l.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("e", lVar.a);
        contentValues.put("eg", lVar.b);
        contentValues.put("tp", lVar.c);
        contentValues.put("ts", Long.valueOf(lVar.e));
        if (c(lVar)) {
            a(lVar.d);
        }
        contentValues.put("ps", lVar.d.toJsonString());
        contentValues.put(j.i, lVar.f);
        contentValues.put(j.j, Integer.valueOf(lVar.g ? 1 : 0));
        boolean equals = TextUtils.equals(lVar.b, a.h);
        String str = j.k;
        if (equals) {
            i = 10;
        }
        contentValues.put(str, Integer.valueOf(i));
        writableDatabase.insert(j.b, null, contentValues);
    }

    private boolean c(l lVar) {
        return !lVar.c.startsWith(a.w);
    }

    private void a(MiStatParams miStatParams) {
        miStatParams.putString(a.n, com.xiaomi.stat.d.c.b());
        miStatParams.putString(a.o, C0000a.g);
        miStatParams.putString(a.p, m.c());
        miStatParams.putString(a.q, m.d());
        miStatParams.putString(a.r, l.b(I.a()));
        miStatParams.putString(a.s, m.a(I.a()));
        miStatParams.putString(a.t, Build.MANUFACTURER);
        miStatParams.putString(a.u, Build.MODEL);
        miStatParams.putString(a.v, m.b());
    }

    public k a(b[] bVarArr) {
        Object futureTask = new FutureTask(new e(this, bVarArr));
        C0002c.a(futureTask);
        try {
            return (k) futureTask.get();
        } catch (InterruptedException e) {
            return null;
        } catch (ExecutionException e2) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x0160  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private k b(b[] bVarArr) {
        Exception e;
        Throwable th;
        String str = null;
        Cursor query;
        try {
            Object obj;
            if (bVarArr.length == 1) {
                str = bVarArr[0].a();
                obj = null;
            } else {
                int obj2 = 1;
            }
            query = this.l.getReadableDatabase().query(j.b, null, str, null, null, null, h);
            try {
                int columnIndex = query.getColumnIndex(j.c);
                int columnIndex2 = query.getColumnIndex("e");
                int columnIndex3 = query.getColumnIndex("eg");
                int columnIndex4 = query.getColumnIndex("tp");
                int columnIndex5 = query.getColumnIndex("ts");
                int columnIndex6 = query.getColumnIndex("ps");
                int columnIndex7 = query.getColumnIndex(j.i);
                int columnIndex8 = query.getColumnIndex(j.j);
                JSONArray jSONArray = new JSONArray();
                ArrayList arrayList = new ArrayList();
                int i = 0;
                boolean z = true;
                while (query.moveToNext()) {
                    long j = query.getLong(columnIndex);
                    Object string = query.getString(columnIndex2);
                    String string2 = query.getString(columnIndex3);
                    String string3 = query.getString(columnIndex4);
                    long j2 = query.getLong(columnIndex5);
                    String string4 = query.getString(columnIndex6);
                    String string5 = query.getString(columnIndex7);
                    boolean z2 = query.getInt(columnIndex8) == 1;
                    if (obj2 == null || a(bVarArr, string5, string2, z2)) {
                        i += (string4.length() * 2) + f;
                        if (!TextUtils.isEmpty(string)) {
                            i += string.length() * 2;
                        }
                        if (!TextUtils.isEmpty(string2)) {
                            i += string2.length() * 2;
                        }
                        if (i > e) {
                            z = false;
                            break;
                        }
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("e", string);
                            jSONObject.put("eg", string2);
                            jSONObject.put("tp", string3);
                            jSONObject.put("ts", j2);
                            jSONObject.put(a.g, j);
                            jSONObject.put("ps", new JSONObject(string4));
                            jSONArray.put(jSONObject);
                            arrayList.add(Long.valueOf(j));
                        } catch (JSONException e2) {
                        }
                        if (arrayList.size() >= d) {
                            z = query.isLast();
                            break;
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    k kVar = new k(jSONArray, arrayList, z);
                    if (query == null) {
                        return kVar;
                    }
                    query.close();
                    return kVar;
                }
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            e = e4;
            query = null;
            try {
                k.b(a, e.toString());
                if (query != null) {
                    query.close();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
            }
            throw th;
        }
    }

    private boolean a(b[] bVarArr, String str, String str2, boolean z) {
        for (b a : bVarArr) {
            if (a.a(str, str2, z)) {
                return true;
            }
        }
        return false;
    }

    public void a(ArrayList<Long> arrayList) {
        Object futureTask = new FutureTask(new f(this, arrayList), null);
        C0002c.a(futureTask);
        try {
            futureTask.get();
        } catch (InterruptedException e) {
        } catch (ExecutionException e2) {
        }
    }

    private void b(ArrayList<Long> arrayList) {
        if (arrayList != null && arrayList.size() != 0) {
            try {
                SQLiteDatabase writableDatabase = this.l.getWritableDatabase();
                StringBuilder stringBuilder = new StringBuilder(((Long.toString(((Long) arrayList.get(0)).longValue()).length() + 1) * arrayList.size()) + 16);
                stringBuilder.append(j.c).append(" in (");
                stringBuilder.append(arrayList.get(0));
                int size = arrayList.size();
                for (int i = 1; i < size; i++) {
                    stringBuilder.append(",").append(arrayList.get(i));
                }
                stringBuilder.append(")");
                k.c(a, "deleted events number " + writableDatabase.delete(j.b, stringBuilder.toString(), null));
            } catch (Exception e) {
            }
        }
    }

    public void b() {
        C0002c.a(new g(this));
    }

    private void d() {
        if (this.m.exists() && this.m.length() >= j) {
            k.e(a, "database too big: " + this.m.length());
            this.l.getWritableDatabase().delete(j.b, null, null);
        }
    }

    public void a(String str) {
        C0002c.a(new h(this, str));
    }

    public long c() {
        Object futureTask = new FutureTask(new i(this));
        C0002c.a(futureTask);
        try {
            return ((Long) futureTask.get()).longValue();
        } catch (InterruptedException e) {
            return -1;
        } catch (ExecutionException e2) {
            return -1;
        }
    }
}

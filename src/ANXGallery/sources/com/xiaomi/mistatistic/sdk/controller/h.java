package com.xiaomi.mistatistic.sdk.controller;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.IBinder;
import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.ArrayList;
import java.util.List;

/* compiled from: EventDAO */
public class h {
    public static boolean a = false;
    private static String b = "";
    private static volatile k c;
    private boolean d = false;
    private com.xiaomi.mistatistic.sdk.a e = null;
    private boolean f = false;
    private ServiceConnection g = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            h.this.f = true;
            h.this.e = com.xiaomi.mistatistic.sdk.a.a.a(iBinder);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            h.this.f = false;
            h.this.e = null;
        }
    };

    /* compiled from: EventDAO */
    private static class a {
        private static final k a = new k(d.a());
    }

    public static void a() {
        c = g();
    }

    public static boolean b() {
        return a;
    }

    public void a(Boolean bool) {
        this.d = bool.booleanValue();
    }

    private void f() {
        if (!this.f) {
            try {
                Context a = d.a();
                Intent intent = new Intent(a, Class.forName(b));
                a.startService(intent);
                if (this.e != null) {
                    j.b("DAO", "unbind service before bind it again!");
                    a.unbindService(this.g);
                }
                a.bindService(intent, this.g, 1);
            } catch (Throwable e) {
                j.a("DAO", "ensureServiceBinded exception", e);
            }
        }
    }

    public StatEventPojo a(String str, String str2) {
        if (!a) {
            return b(str, str2);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    StatEventPojo a = this.e.a(str, str2);
                    j.b("DAO", "process query, result is: " + a);
                    return a;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return null;
        } catch (Throwable e) {
            j.a("DAO", "queryCustomEvent exception", e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x005b A:{SYNTHETIC, Splitter: B:32:0x005b} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0062  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public StatEventPojo b(String str, String str2) {
        StatEventPojo a;
        Throwable e;
        Cursor cursor = null;
        synchronized (g()) {
            Cursor query;
            try {
                query = c.getReadableDatabase().query("mistat_event", null, "category=? AND key=?", new String[]{str, str2}, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            a = a(query);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            j.a("DAO", "queryCustomEvent exception", e);
                            if (query != null) {
                                query.close();
                            }
                            if (c != null) {
                                c.close();
                            }
                            return a;
                        } catch (Throwable th) {
                            e = th;
                            cursor = query;
                            if (cursor != null) {
                            }
                            if (c != null) {
                            }
                            throw e;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                if (c != null) {
                    c.close();
                }
            } catch (Exception e3) {
                e = e3;
                query = null;
            } catch (Throwable th2) {
                e = th2;
                if (cursor != null) {
                    cursor.close();
                }
                if (c != null) {
                    c.close();
                }
                throw e;
            }
        }
        return a;
    }

    public void a(StatEventPojo statEventPojo) {
        if (a) {
            try {
                Intent intent = new Intent(d.a(), Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 1);
                intent.putExtra("StatEventPojo", statEventPojo);
                d.a().startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "insertNewEvent exception", e);
                return;
            }
        }
        b(statEventPojo);
    }

    public void b(StatEventPojo statEventPojo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("category", statEventPojo.mCategory);
        contentValues.put("key", TextUtils.isEmpty(statEventPojo.mKey) ? "" : statEventPojo.mKey);
        contentValues.put("ts", Long.valueOf(statEventPojo.mTimeStamp));
        contentValues.put(nexExportFormat.TAG_FORMAT_TYPE, TextUtils.isEmpty(statEventPojo.mType) ? "" : statEventPojo.mType);
        contentValues.put("value", TextUtils.isEmpty(statEventPojo.mValue) ? "" : statEventPojo.mValue);
        contentValues.put("extra", TextUtils.isEmpty(statEventPojo.mExtra) ? "" : statEventPojo.mExtra);
        contentValues.put("anonymous", Integer.valueOf(statEventPojo.mAnonymous));
        synchronized (g()) {
            try {
                c.getWritableDatabase().insert("mistat_event", "", contentValues);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", String.format("Error to insert data into DB, key= %s", new Object[]{statEventPojo.mKey}), e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public void a(String str, String str2, String str3) {
        if (a) {
            try {
                Intent intent = new Intent(d.a(), Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 2);
                intent.putExtra("key", str);
                intent.putExtra("category", str2);
                intent.putExtra("newValue", str3);
                d.a().startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "updateEventByKeyAndCategory exception", e);
                return;
            }
        }
        b(str, str2, str3);
    }

    public void b(String str, String str2, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str3);
        synchronized (g()) {
            try {
                c.getWritableDatabase().update("mistat_event", contentValues, "category=? AND key=?", new String[]{str2, str});
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", "Error to update data from DB, key=" + str, e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public List<StatEventPojo> a(long j) {
        int i = 0;
        if (!a) {
            return b(j);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    List<StatEventPojo> a = this.e.a(j);
                    String str = "DAO";
                    String str2 = "process getAll, result size is : %d";
                    Object[] objArr = new Object[1];
                    if (a != null) {
                        i = a.size();
                    }
                    objArr[0] = Integer.valueOf(i);
                    j.b(str, String.format(str2, objArr));
                    return a;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return new ArrayList();
        } catch (Throwable e) {
            j.a("DAO", "getAllEventOrderByTimestampDescend exception", e);
            return new ArrayList();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0089 A:{SYNTHETIC, Splitter: B:25:0x0089} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x009e A:{SYNTHETIC, Splitter: B:31:0x009e} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00a5  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00d3 A:{SYNTHETIC, Splitter: B:57:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00d3 A:{SYNTHETIC, Splitter: B:57:0x00d3} */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00da  */
    /* JADX WARNING: Missing block: B:71:?, code:
            return r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public List<StatEventPojo> b(long j) {
        Throwable e;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        synchronized (g()) {
            Cursor query;
            try {
                SQLiteDatabase readableDatabase = c.getReadableDatabase();
                if (readableDatabase == null) {
                    if (null != null) {
                        cursor.close();
                    }
                    if (c != null) {
                        c.close();
                    }
                } else {
                    query = readableDatabase.query("mistat_event", null, "ts < ? ", new String[]{String.valueOf(j)}, null, null, "ts DESC", String.valueOf(500));
                    if (query != null) {
                        try {
                            if (query.moveToLast()) {
                                String valueOf;
                                long j2 = query.getLong(query.getColumnIndex("ts"));
                                query.close();
                                String str = "ts<? AND ts>=? AND anonymous=?";
                                String[] strArr = new String[3];
                                strArr[0] = String.valueOf(j);
                                strArr[1] = String.valueOf(j2);
                                if (this.d) {
                                    valueOf = String.valueOf(1);
                                } else {
                                    valueOf = String.valueOf(0);
                                }
                                strArr[2] = valueOf;
                                cursor = readableDatabase.query("mistat_event", null, str, strArr, null, null, "ts DESC");
                                if (cursor != null) {
                                    try {
                                        if (cursor.moveToFirst()) {
                                            do {
                                                arrayList.add(a(cursor));
                                            } while (cursor.moveToNext());
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        try {
                                            j.a("DAO", "Error while reading data from DB", e);
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (c != null) {
                                                c.close();
                                            }
                                            return arrayList;
                                        } catch (Throwable th) {
                                            e = th;
                                            query = cursor;
                                            if (query != null) {
                                                query.close();
                                            }
                                            if (c != null) {
                                                c.close();
                                            }
                                            throw e;
                                        }
                                    }
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (c != null) {
                                    c.close();
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            cursor = query;
                        } catch (Throwable th2) {
                            e = th2;
                            if (query != null) {
                            }
                            if (c != null) {
                            }
                            throw e;
                        }
                    }
                    cursor = query;
                    if (cursor != null) {
                    }
                    if (cursor != null) {
                    }
                    if (c != null) {
                    }
                }
            } catch (Exception e4) {
                e = e4;
                cursor = null;
            } catch (Throwable th3) {
                e = th3;
                query = null;
                if (query != null) {
                }
                if (c != null) {
                }
                throw e;
            }
        }
    }

    public List<StatEventPojo> c(long j) {
        int i = 0;
        if (!a) {
            return d(j);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    List<StatEventPojo> c = this.e.c(j);
                    String str = "DAO";
                    String str2 = "process getBasicEventsOrderByTsDescend, result size is : %d";
                    Object[] objArr = new Object[1];
                    if (c != null) {
                        i = c.size();
                    }
                    objArr[0] = Integer.valueOf(i);
                    j.b(str, String.format(str2, objArr));
                    return c;
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return new ArrayList();
        } catch (Throwable e) {
            j.a("DAO", "getBasicEventsOrderByTsDescend exception", e);
            return new ArrayList();
        }
    }

    public List<StatEventPojo> d(long j) {
        Throwable e;
        Cursor cursor = null;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        synchronized (g()) {
            try {
                SQLiteDatabase readableDatabase = c.getReadableDatabase();
                if (readableDatabase == null) {
                    cursor2.close();
                    c.close();
                    return arrayList;
                }
                String valueOf;
                String str = "mistat_event";
                String str2 = "category IN (?, ?, ?, ?, ?, ?, ?) AND anonymous=?";
                String[] strArr = new String[8];
                strArr[0] = String.valueOf("mistat_basic");
                strArr[1] = String.valueOf("mistat_pt");
                strArr[2] = String.valueOf("mistat_pv");
                strArr[3] = String.valueOf("mistat_session");
                strArr[4] = String.valueOf("mistat_pa");
                strArr[5] = String.valueOf("mistat_session_extra");
                strArr[6] = String.valueOf("mistat_monitor");
                if (this.d) {
                    valueOf = String.valueOf(1);
                } else {
                    valueOf = String.valueOf(0);
                }
                strArr[7] = valueOf;
                cursor2 = readableDatabase.query(str, null, str2, strArr, null, null, "ts DESC", String.valueOf(500));
                if (cursor2 != null) {
                    try {
                        if (cursor2.moveToFirst()) {
                            do {
                                arrayList.add(a(cursor2));
                            } while (cursor2.moveToNext());
                        }
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            j.a("DAO", "Error while getBasicEventsOrderByTsDescendImpl", e);
                            cursor2.close();
                            c.close();
                            return arrayList;
                        } catch (Throwable th) {
                            e = th;
                            cursor = cursor2;
                            cursor.close();
                            c.close();
                            throw e;
                        }
                    }
                }
                cursor2.close();
                c.close();
            } catch (Exception e3) {
                e = e3;
                cursor2 = null;
            } catch (Throwable th2) {
                e = th2;
                cursor.close();
                c.close();
                throw e;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x009a A:{SYNTHETIC, Splitter: B:44:0x009a} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00a1  */
    /* JADX WARNING: Missing block: B:54:?, code:
            return r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public List<StatEventPojo> e(long j) {
        Throwable e;
        Cursor cursor = null;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        synchronized (g()) {
            try {
                SQLiteDatabase readableDatabase = c.getReadableDatabase();
                if (readableDatabase == null) {
                    if (null != null) {
                        cursor2.close();
                    }
                    if (c != null) {
                        c.close();
                    }
                } else {
                    cursor2 = readableDatabase.query("mistat_event", null, "ts <= ? AND category = ? OR category = ? OR category = ? OR category = ? OR category = ? ", new String[]{String.valueOf(j), "mistat_basic", "mistat_pa", "mistat_session", "mistat_pv", "mistat_pt"}, null, null, null, null);
                    if (cursor2 != null) {
                        try {
                            if (cursor2.moveToFirst()) {
                                do {
                                    arrayList.add(a(cursor2));
                                } while (cursor2.moveToNext());
                            }
                        } catch (Exception e2) {
                            e = e2;
                            try {
                                j.a("DAO", "getExpiredEvents", e);
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                if (c != null) {
                                    c.close();
                                }
                                return arrayList;
                            } catch (Throwable th) {
                                e = th;
                                cursor = cursor2;
                                if (cursor != null) {
                                }
                                if (c != null) {
                                }
                                throw e;
                            }
                        }
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (c != null) {
                        c.close();
                    }
                }
            } catch (Exception e3) {
                e = e3;
                cursor2 = null;
            } catch (Throwable th2) {
                e = th2;
                if (cursor != null) {
                    cursor.close();
                }
                if (c != null) {
                    c.close();
                }
                throw e;
            }
        }
    }

    public void f(long j) {
        if (a) {
            try {
                Intent intent = new Intent(d.a(), Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 3);
                intent.putExtra("timeStamp", j);
                d.a().startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "deleteExpiredEvents", e);
                return;
            }
        }
        g(j);
    }

    public void g(long j) {
        synchronized (g()) {
            try {
                int delete = c.getWritableDatabase().delete("mistat_event", "ts <= ? AND category <> ? ", new String[]{String.valueOf(j), "mistat_monitor"});
                if (delete > 0) {
                    MiStatInterface.recordCalculateEvent("quality_monitor", "delete_old_events", (long) delete);
                }
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", "Error while deleting out-of-date data from DB", e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public int a(int i) {
        if (!a) {
            return b(i);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    j.b("DAO", String.format("process getEventCount, result is: %d", new Object[]{Integer.valueOf(this.e.a(i))}));
                    return this.e.a(i);
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return 0;
        } catch (Throwable e) {
            j.a("DAO", "getEventCount", e);
            return 0;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x00c9 A:{SYNTHETIC, Splitter: B:44:0x00c9} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00d0  */
    /* JADX WARNING: Missing block: B:54:?, code:
            return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int b(int i) {
        Throwable e;
        Cursor cursor = null;
        synchronized (g()) {
            Cursor query;
            try {
                SQLiteDatabase readableDatabase = c.getReadableDatabase();
                if (i == 1) {
                    query = readableDatabase.query("mistat_event", new String[]{"count(*)"}, null, null, null, null, null);
                } else if (i == 2) {
                    query = readableDatabase.query("mistat_event", new String[]{"count(*)"}, "category IN (?, ?, ?, ?, ?, ?, ?)", new String[]{String.valueOf("mistat_basic"), String.valueOf("mistat_pt"), String.valueOf("mistat_pv"), String.valueOf("mistat_session"), String.valueOf("mistat_pa"), String.valueOf("mistat_session_extra"), String.valueOf("mistat_monitor")}, null, null, null, null);
                } else {
                    query = null;
                }
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            int i2 = query.getInt(0);
                            if (query != null) {
                                query.close();
                            }
                            if (c != null) {
                                c.close();
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        try {
                            j.a("DAO", "Error while getting count from DB", e);
                            if (query != null) {
                                query.close();
                            }
                            if (c != null) {
                                c.close();
                            }
                            return 0;
                        } catch (Throwable th) {
                            e = th;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (c != null) {
                                c.close();
                            }
                            throw e;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                if (c != null) {
                    c.close();
                }
            } catch (Exception e3) {
                e = e3;
                query = null;
            } catch (Throwable th2) {
                e = th2;
                if (cursor != null) {
                }
                if (c != null) {
                }
                throw e;
            }
        }
    }

    private static StatEventPojo a(Cursor cursor) {
        StatEventPojo statEventPojo = new StatEventPojo();
        long j = cursor.getLong(2);
        String string = cursor.getString(4);
        String string2 = cursor.getString(5);
        String string3 = cursor.getString(1);
        String string4 = cursor.getString(3);
        String string5 = cursor.getString(6);
        int i = cursor.getInt(7);
        statEventPojo.mCategory = string3;
        statEventPojo.mKey = string4;
        statEventPojo.mValue = string;
        statEventPojo.mTimeStamp = j;
        statEventPojo.mType = string2;
        statEventPojo.mExtra = string5;
        statEventPojo.mAnonymous = i;
        return statEventPojo;
    }

    public void a(long j, long j2, int i) {
        if (a) {
            try {
                Context a = d.a();
                Intent intent = new Intent(a, Class.forName(b));
                intent.putExtra(nexExportFormat.TAG_FORMAT_TYPE, 5);
                intent.putExtra("startTime", j);
                intent.putExtra("endTime", j2);
                intent.putExtra("eventType", i);
                a.startService(intent);
                return;
            } catch (Throwable e) {
                j.a("DAO", "deleteEventsByStartAndEndTS", e);
                return;
            }
        }
        b(j, j2, i);
    }

    public void b(long j, long j2, int i) {
        synchronized (g()) {
            try {
                j.a("DAO", "deleteEventsByStartAndEndTS, start:%d, end:%d", Long.valueOf(j), Long.valueOf(j2));
                SQLiteDatabase writableDatabase = c.getWritableDatabase();
                String str;
                String str2;
                String[] strArr;
                if (i == 1) {
                    str = "mistat_event";
                    str2 = "ts<=? AND ts>=? AND anonymous=?";
                    strArr = new String[3];
                    strArr[0] = String.valueOf(j2);
                    strArr[1] = String.valueOf(j);
                    strArr[2] = this.d ? String.valueOf(1) : String.valueOf(0);
                    writableDatabase.delete(str, str2, strArr);
                } else if (i == 2) {
                    str = "mistat_event";
                    str2 = "ts<=? AND ts>=? AND category IN (?, ?, ?, ?, ?, ?, ?) AND anonymous=?";
                    strArr = new String[10];
                    strArr[0] = String.valueOf(j2);
                    strArr[1] = String.valueOf(j);
                    strArr[2] = String.valueOf("mistat_basic");
                    strArr[3] = String.valueOf("mistat_pt");
                    strArr[4] = String.valueOf("mistat_pv");
                    strArr[5] = String.valueOf("mistat_session");
                    strArr[6] = String.valueOf("mistat_pa");
                    strArr[7] = String.valueOf("mistat_session_extra");
                    strArr[8] = String.valueOf("mistat_monitor");
                    strArr[9] = this.d ? String.valueOf(1) : String.valueOf(0);
                    writableDatabase.delete(str, str2, strArr);
                }
                if (c != null) {
                    c.close();
                }
            } catch (Throwable e) {
                j.a("DAO", "Error while deleting event by ts from DB", e);
                if (c != null) {
                    c.close();
                }
            } catch (Throwable th) {
                if (c != null) {
                    c.close();
                }
            }
        }
    }

    public boolean j(long j) {
        if (!a) {
            return k(j);
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    j.b("DAO", String.format("process queryPaEventByTs , result is: %b", new Object[]{Boolean.valueOf(this.e.b(j))}));
                    return this.e.b(j);
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return false;
        } catch (Throwable e) {
            j.a("DAO", "queryPaEventByTs", e);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0072 A:{SYNTHETIC, Splitter: B:38:0x0072} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0079  */
    /* JADX WARNING: Missing block: B:47:?, code:
            return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean k(long j) {
        Cursor query;
        Throwable e;
        Cursor cursor = null;
        synchronized (g()) {
            try {
                query = c.getReadableDatabase().query("mistat_event", null, "ts=? AND category=?", new String[]{String.valueOf(j), "mistat_pa"}, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            if (query != null) {
                                query.close();
                            }
                            if (c != null) {
                                c.close();
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
                if (query != null) {
                    query.close();
                }
                if (c != null) {
                    c.close();
                }
            } catch (Exception e3) {
                e = e3;
                query = null;
            } catch (Throwable th) {
                e = th;
                if (cursor != null) {
                    cursor.close();
                }
                if (c != null) {
                    c.close();
                }
                throw e;
            }
        }
        try {
            j.a("DAO", "queryPaEventByTsImpl exception", e);
            if (query != null) {
                query.close();
            }
            if (c != null) {
                c.close();
            }
            return false;
        } catch (Throwable th2) {
            e = th2;
            cursor = query;
            if (cursor != null) {
            }
            if (c != null) {
            }
            throw e;
        }
    }

    public boolean c() {
        if (!a) {
            return d();
        }
        f();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            do {
                if (this.f && this.e != null) {
                    j.b("DAO", String.format("process hasMonitorEvent , result is: %b", new Object[]{Boolean.valueOf(this.e.a())}));
                    return this.e.a();
                }
            } while (System.currentTimeMillis() - currentTimeMillis <= 1000);
            return false;
        } catch (Throwable e) {
            j.a("DAO", "hasMonitorEvent", e);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x006a A:{SYNTHETIC, Splitter: B:38:0x006a} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0071  */
    /* JADX WARNING: Missing block: B:47:?, code:
            return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean d() {
        Cursor query;
        Throwable e;
        Cursor cursor = null;
        synchronized (g()) {
            try {
                query = c.getReadableDatabase().query("mistat_event", null, "category=?", new String[]{"mistat_monitor"}, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            if (query != null) {
                                query.close();
                            }
                            if (c != null) {
                                c.close();
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
                if (query != null) {
                    query.close();
                }
                if (c != null) {
                    c.close();
                }
            } catch (Exception e3) {
                e = e3;
                query = null;
            } catch (Throwable th) {
                e = th;
                if (cursor != null) {
                    cursor.close();
                }
                if (c != null) {
                    c.close();
                }
                throw e;
            }
        }
        try {
            j.a("DAO", "hasMonitorEventImpl exception", e);
            if (query != null) {
                query.close();
            }
            if (c != null) {
                c.close();
            }
            return false;
        } catch (Throwable th2) {
            e = th2;
            cursor = query;
            if (cursor != null) {
            }
            if (c != null) {
            }
            throw e;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0038 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003f A:{Catch:{ Exception -> 0x0046, all -> 0x005f }} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0062 A:{Catch:{ Exception -> 0x0046, all -> 0x005f }} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0069 A:{Catch:{ Exception -> 0x0046, all -> 0x005f }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean e() {
        Cursor query;
        boolean z;
        Throwable e;
        Cursor cursor = null;
        synchronized (g()) {
            try {
                query = c.getReadableDatabase().query("mistat_event", null, "anonymous=?", new String[]{String.valueOf(1)}, null, null, "ts DESC", String.valueOf(500));
                if (query != null) {
                    try {
                        if (query.moveToLast()) {
                            z = true;
                            if (query != null) {
                                query.close();
                            }
                            if (c != null) {
                                c.close();
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
                z = false;
                if (query != null) {
                }
                if (c != null) {
                }
            } catch (Exception e3) {
                e = e3;
                query = null;
            } catch (Throwable th) {
                e = th;
                if (cursor != null) {
                }
                if (c != null) {
                }
                throw e;
            }
        }
        return z;
        try {
            j.a("DAO", "Error while isExistAnonymousData from DB", e);
            if (query != null) {
                query.close();
            }
            if (c != null) {
                c.close();
                z = false;
            } else {
                z = false;
            }
            return z;
        } catch (Throwable th2) {
            e = th2;
            cursor = query;
            if (cursor != null) {
                cursor.close();
            }
            if (c != null) {
                c.close();
            }
            throw e;
        }
    }

    private static k g() {
        if (c == null) {
            c = a.a;
        }
        return c;
    }
}

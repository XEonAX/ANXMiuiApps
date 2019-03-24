package com.miui.internal.analytics;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

class a {
    private static final String TAG = "AnalyticsDatabaseHelper";
    private static final int VERSION = 2;
    private static final String i = "analytics.db";
    private static final String j = "analytics";
    private static final String k = "create table analytics (_id integer primary key autoincrement,_time datetime,_status integer,package text,type integer,event_id text,param text,time text,value text)";
    private static final String l = "insert into analytics values (null, datetime('now'), 0, ?, ?, ?, ?, ?, ?)";
    private static final String m = "delete from analytics where _time < datetime('now', '-7 days')";
    private static final String n = "update analytics set _status = 0";
    private static final String o = "update analytics set _status = 1 where (_time < datetime(date(datetime('now'))))";
    private static final String p = "delete from analytics where _status = 1";
    private static final String q = "select * from analytics where _status = 1";
    private static final SoftReferenceSingleton<a> s = new DatabaseHelper$2();
    private SQLiteOpenHelper r;

    /* synthetic */ a(DatabaseHelper$1 databaseHelper$1) {
        this();
    }

    private a() {
        this.r = new DatabaseHelper$1(this, AppConstants.getCurrentApplication(), i, null, 2);
    }

    public static a a() {
        return (a) s.get();
    }

    public void a(String str, Integer num, String str2, String str3, String str4, String str5) {
        try {
            SQLiteDatabase writableDatabase = this.r.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.execSQL(l, new Object[]{str, num, str2, str3, str4, str5});
            }
        } catch (Throwable e) {
            Log.e(TAG, String.format("database:%s is not writable!", new Object[]{this.r.getDatabaseName()}), e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0073  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0047 A:{ExcHandler: all (th java.lang.Throwable), Splitter: B:3:0x0009} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:14:0x0047, code:
            r9 = th;
     */
    /* JADX WARNING: Missing block: B:15:0x0049, code:
            r9 = e;
     */
    /* JADX WARNING: Missing block: B:16:0x004a, code:
            r7 = r1;
            r1 = null;
     */
    /* JADX WARNING: Missing block: B:25:0x006c, code:
            r0.endTransaction();
     */
    /* JADX WARNING: Missing block: B:28:0x0073, code:
            r1.endTransaction();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Cursor a(String str) {
        Cursor cursor;
        Throwable e;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = this.r.getWritableDatabase();
            Cursor rawQuery;
            try {
                writableDatabase.beginTransaction();
                writableDatabase.execSQL(m);
                writableDatabase.execSQL(n);
                String str2 = o;
                if (str != null) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("update analytics set _status = 1 where (_time < datetime(date(datetime('now')))) and (");
                    stringBuilder.append(str);
                    stringBuilder.append(")");
                    str2 = stringBuilder.toString();
                }
                writableDatabase.execSQL(str2);
                rawQuery = writableDatabase.rawQuery(q, null);
                writableDatabase.setTransactionSuccessful();
                if (writableDatabase == null) {
                    return rawQuery;
                }
                writableDatabase.endTransaction();
                return rawQuery;
            } catch (Throwable e2) {
                SQLiteDatabase sQLiteDatabase2 = writableDatabase;
                cursor = rawQuery;
                e = e2;
                sQLiteDatabase = sQLiteDatabase2;
                try {
                    Log.e(TAG, String.format("can't read database:%s", new Object[]{this.r.getDatabaseName()}), e);
                    if (sQLiteDatabase != null) {
                    }
                    return cursor;
                } catch (Throwable th) {
                    e = th;
                    writableDatabase = sQLiteDatabase;
                    if (writableDatabase != null) {
                    }
                    throw e;
                }
            } catch (Throwable th2) {
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
            Log.e(TAG, String.format("can't read database:%s", new Object[]{this.r.getDatabaseName()}), e);
            if (sQLiteDatabase != null) {
            }
            return cursor;
        }
    }

    public void b() {
        try {
            SQLiteDatabase writableDatabase = this.r.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.execSQL(p);
            }
        } catch (Throwable e) {
            Log.e(TAG, String.format("can't delete from database:%s", new Object[]{this.r.getDatabaseName()}), e);
        }
    }
}

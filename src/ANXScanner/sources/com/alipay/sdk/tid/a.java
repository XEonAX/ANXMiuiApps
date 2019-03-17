package com.alipay.sdk.tid;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.alipay.sdk.encrypt.b;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class a extends SQLiteOpenHelper {
    private static final String a = "msp.db";
    private static final int b = 1;
    private WeakReference<Context> c;

    public a(Context context) {
        super(context, a, null, 1);
        this.c = new WeakReference(context);
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("drop table if exists tb_tid");
        onCreate(sQLiteDatabase);
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* JADX WARNING: Missing block: B:43:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:45:?, code:
            return;
     */
    /* JADX WARNING: Missing block: B:47:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(String str, String str2, String str3, String str4) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            if (a(sQLiteDatabase, str, str2)) {
                a(sQLiteDatabase, str, str2, str3, str4);
            } else {
                String a = b.a(1, str3, com.alipay.sdk.util.a.c((Context) this.c.get()));
                sQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{c(str, str2), a, str4});
                Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
                if (rawQuery.getCount() <= 14) {
                    rawQuery.close();
                } else {
                    int i;
                    int count = rawQuery.getCount() - 14;
                    String[] strArr = new String[count];
                    if (rawQuery.moveToFirst()) {
                        i = 0;
                        do {
                            strArr[i] = rawQuery.getString(0);
                            i++;
                            if (!rawQuery.moveToNext()) {
                                break;
                            }
                        } while (count > i);
                    }
                    rawQuery.close();
                    for (i = 0; i < count; i++) {
                        if (!TextUtils.isEmpty(strArr[i])) {
                            a(sQLiteDatabase, strArr[i]);
                        }
                    }
                }
            }
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
    }

    /* JADX WARNING: Failed to extract finally block: empty outs */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(String str, String str2) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            sQLiteDatabase = getWritableDatabase();
            a(sQLiteDatabase, str, str2, "", "");
            a(sQLiteDatabase, c(str, str2));
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
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x004e  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:45:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0065  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final String a(String str, String str2) {
        Throwable th;
        String str3 = null;
        String str4 = "select tid from tb_tid where name=?";
        SQLiteDatabase readableDatabase;
        Cursor rawQuery;
        try {
            readableDatabase = getReadableDatabase();
            try {
                rawQuery = readableDatabase.rawQuery(str4, new String[]{c(str, str2)});
                try {
                    if (rawQuery.moveToFirst()) {
                        str3 = rawQuery.getString(0);
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (readableDatabase == null || !readableDatabase.isOpen()) {
                        str4 = str3;
                    } else {
                        readableDatabase.close();
                        str4 = str3;
                    }
                } catch (Exception e) {
                    if (rawQuery != null) {
                    }
                    if (readableDatabase == null) {
                    }
                    str4 = null;
                    if (TextUtils.isEmpty(str4)) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (rawQuery != null) {
                    }
                    readableDatabase.close();
                    throw th;
                }
            } catch (Exception e2) {
                rawQuery = null;
            } catch (Throwable th3) {
                Throwable th4 = th3;
                rawQuery = null;
                th = th4;
                if (rawQuery != null) {
                }
                readableDatabase.close();
                throw th;
            }
        } catch (Exception e3) {
            rawQuery = null;
            readableDatabase = null;
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (readableDatabase == null && readableDatabase.isOpen()) {
                readableDatabase.close();
                str4 = null;
            } else {
                str4 = null;
            }
            if (TextUtils.isEmpty(str4)) {
            }
        } catch (Throwable th32) {
            readableDatabase = null;
            th = th32;
            rawQuery = null;
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (readableDatabase != null && readableDatabase.isOpen()) {
                readableDatabase.close();
            }
            throw th;
        }
        return TextUtils.isEmpty(str4) ? b.a(2, str4, com.alipay.sdk.util.a.c((Context) this.c.get())) : str4;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x005d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private long e(String str, String str2) {
        Throwable th;
        Cursor cursor = null;
        long j = 0;
        String str3 = "select dt from tb_tid where name=?";
        SQLiteDatabase readableDatabase;
        try {
            readableDatabase = getReadableDatabase();
            try {
                cursor = readableDatabase.rawQuery(str3, new String[]{c(str, str2)});
                if (cursor.moveToFirst()) {
                    j = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).parse(cursor.getString(0)).getTime();
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
            } catch (Exception e) {
                if (cursor != null) {
                    cursor.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
                return j;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            readableDatabase = cursor;
            if (cursor != null) {
            }
            readableDatabase.close();
            return j;
        } catch (Throwable th3) {
            th = th3;
            readableDatabase = cursor;
            if (cursor != null) {
            }
            readableDatabase.close();
            throw th;
        }
        return j;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0063  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private List<String> a() {
        SQLiteDatabase sQLiteDatabase;
        Throwable th;
        Cursor cursor = null;
        List<String> arrayList = new ArrayList();
        SQLiteDatabase readableDatabase;
        Cursor rawQuery;
        try {
            readableDatabase = getReadableDatabase();
            try {
                rawQuery = readableDatabase.rawQuery("select tid from tb_tid", null);
                while (rawQuery.moveToNext()) {
                    try {
                        Object string = rawQuery.getString(0);
                        if (!TextUtils.isEmpty(string)) {
                            arrayList.add(b.a(2, string, com.alipay.sdk.util.a.c((Context) this.c.get())));
                        }
                    } catch (Exception e) {
                        cursor = rawQuery;
                        sQLiteDatabase = readableDatabase;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            sQLiteDatabase.close();
                        }
                        return arrayList;
                    } catch (Throwable th2) {
                        th = th2;
                        if (rawQuery != null) {
                        }
                        readableDatabase.close();
                        throw th;
                    }
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
            } catch (Exception e2) {
                sQLiteDatabase = readableDatabase;
            } catch (Throwable th3) {
                Throwable th4 = th3;
                rawQuery = null;
                th = th4;
                if (rawQuery != null) {
                    rawQuery.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            sQLiteDatabase = null;
        } catch (Throwable th32) {
            readableDatabase = null;
            th = th32;
            rawQuery = null;
            if (rawQuery != null) {
            }
            readableDatabase.close();
            throw th;
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x004c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final String b(String str, String str2) {
        Throwable th;
        String str3 = null;
        String str4 = "select key_tid from tb_tid where name=?";
        SQLiteDatabase readableDatabase;
        Cursor rawQuery;
        try {
            readableDatabase = getReadableDatabase();
            try {
                rawQuery = readableDatabase.rawQuery(str4, new String[]{c(str, str2)});
                try {
                    if (rawQuery.moveToFirst()) {
                        str3 = rawQuery.getString(0);
                    }
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    if (readableDatabase != null && readableDatabase.isOpen()) {
                        readableDatabase.close();
                    }
                } catch (Exception e) {
                    if (rawQuery != null) {
                    }
                    readableDatabase.close();
                    return str3;
                } catch (Throwable th2) {
                    th = th2;
                    if (rawQuery != null) {
                    }
                    readableDatabase.close();
                    throw th;
                }
            } catch (Exception e2) {
                rawQuery = null;
            } catch (Throwable th3) {
                Throwable th4 = th3;
                rawQuery = null;
                th = th4;
                if (rawQuery != null) {
                }
                readableDatabase.close();
                throw th;
            }
        } catch (Exception e3) {
            rawQuery = null;
            readableDatabase = null;
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (readableDatabase != null && readableDatabase.isOpen()) {
                readableDatabase.close();
            }
            return str3;
        } catch (Throwable th32) {
            readableDatabase = null;
            th = th32;
            rawQuery = null;
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (readableDatabase != null && readableDatabase.isOpen()) {
                readableDatabase.close();
            }
            throw th;
        }
        return str3;
    }

    private static boolean a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        int i;
        Cursor cursor = null;
        try {
            int i2;
            cursor = sQLiteDatabase.rawQuery("select count(*) from tb_tid where name=?", new String[]{c(str, str2)});
            if (cursor.moveToFirst()) {
                i2 = cursor.getInt(0);
            } else {
                i2 = 0;
            }
            if (cursor != null) {
                cursor.close();
                i = i2;
            } else {
                i = i2;
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
                i = 0;
            } else {
                i = 0;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
        }
        if (i > 0) {
            return true;
        }
        return false;
    }

    static String c(String str, String str2) {
        return str + str2;
    }

    private void b(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        int i = 0;
        String a = b.a(1, str3, com.alipay.sdk.util.a.c((Context) this.c.get()));
        sQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{c(str, str2), a, str4});
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i2 = 0;
            do {
                strArr[i2] = rawQuery.getString(0);
                i2++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i2);
        }
        rawQuery.close();
        while (i < count) {
            if (!TextUtils.isEmpty(strArr[i])) {
                a(sQLiteDatabase, strArr[i]);
            }
            i++;
        }
    }

    final void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        sQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", new Object[]{b.a(1, str3, com.alipay.sdk.util.a.c((Context) this.c.get())), str4, c(str, str2)});
    }

    static void a(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.delete("tb_tid", "name=?", new String[]{str});
        } catch (Exception e) {
        }
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        int i = 0;
        Cursor rawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (rawQuery.getCount() <= 14) {
            rawQuery.close();
            return;
        }
        int count = rawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (rawQuery.moveToFirst()) {
            int i2 = 0;
            do {
                strArr[i2] = rawQuery.getString(0);
                i2++;
                if (!rawQuery.moveToNext()) {
                    break;
                }
            } while (count > i2);
        }
        rawQuery.close();
        while (i < count) {
            if (!TextUtils.isEmpty(strArr[i])) {
                a(sQLiteDatabase, strArr[i]);
            }
            i++;
        }
    }
}

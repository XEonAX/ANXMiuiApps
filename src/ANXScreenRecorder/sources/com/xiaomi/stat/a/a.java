package com.xiaomi.stat.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class a extends SQLiteOpenHelper {
    private static final String a = "mistat_ev";
    private static final int b = 1;
    private static final String c = "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,e TEXT,eg TEXT,tp TEXT,ps TEXT,ts INTEGER,sub TEXT,is_am INTEGER,priority INTEGER)";

    public a(Context context) {
        super(context, "mistat_ev", null, 1);
    }

    public void onCreate(SQLiteDatabase db) {
        db.execSQL(c);
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    }
}

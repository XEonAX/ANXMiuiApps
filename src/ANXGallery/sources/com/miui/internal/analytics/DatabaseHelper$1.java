package com.miui.internal.analytics;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

class DatabaseHelper$1 extends SQLiteOpenHelper {
    final /* synthetic */ a t;

    DatabaseHelper$1(a aVar, Context context, String str, CursorFactory cursorFactory, int i) {
        this.t = aVar;
        super(context, str, cursorFactory, i);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table analytics (_id integer primary key autoincrement,_time datetime,_status integer,package text,type integer,event_id text,param text,time text,value text)");
    }
}

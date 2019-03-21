package com.xiaomi.push.providers;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.xiaomi.channel.commonutils.logger.MyLog;

public class TrafficDatabaseHelper extends SQLiteOpenHelper {
    private static int DATABASE_VERSION = 1;
    public static final Object DataBaseLock = new Object();
    private static final String[] TRAFFIC_Columns = new String[]{"package_name", "TEXT", "message_ts", " LONG DEFAULT 0 ", "bytes", " LONG DEFAULT 0 ", "network_type", " INT DEFAULT -1 ", "rcv", " INT DEFAULT -1 ", "imsi", "TEXT"};

    public TrafficDatabaseHelper(Context context) {
        super(context, "traffic.db", null, DATABASE_VERSION);
    }

    public void onCreate(SQLiteDatabase db) {
        synchronized (DataBaseLock) {
            try {
                createTrafficTable(db);
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
    }

    private void createTrafficTable(SQLiteDatabase db) {
        StringBuilder builder = new StringBuilder("CREATE TABLE traffic(_id INTEGER  PRIMARY KEY ,");
        for (int i = 0; i < TRAFFIC_Columns.length - 1; i += 2) {
            if (i != 0) {
                builder.append(",");
            }
            builder.append(TRAFFIC_Columns[i]).append(" ").append(TRAFFIC_Columns[i + 1]);
        }
        builder.append(");");
        db.execSQL(builder.toString());
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    }
}

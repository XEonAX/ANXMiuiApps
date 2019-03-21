package com.xiaomi.push.service;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.channel.commonutils.logger.MyLog;
import java.util.concurrent.atomic.AtomicInteger;

public class GeoFenceDatabaseHelper extends SQLiteOpenHelper {
    private static final String[] GEOFENCING_Columns = new String[]{"name", "TEXT NOT NULL", "appId", "INTEGER NOT NULL", "package_name", "TEXT NOT NULL", "create_time", "INTEGER NOT NULL", nexExportFormat.TAG_FORMAT_TYPE, "TEXT NOT NULL", "center_longtitude", "TEXT", "center_lantitude", "TEXT", "circle_radius", "REAL", "polygon_point", "TEXT", "coordinate_provider", "TEXT NOT NULL", "current_status", "TEXT NOT NULL"};
    private static final String[] GEOFENCING_MESSAGE_Columns = new String[]{"message_id", "TEXT NOT NULL", "geo_id", "TEXT NOT NULL", "content", "BLOB NOT NULL", "action", "INTEGER NOT NULL", "deadline", "INTEGER NOT NULL"};
    private static GeoFenceDatabaseHelper sInstance;
    private final String TAG = "GeoFenceDatabaseHelper.";
    private SQLiteDatabase mDatabase;
    public final Object mDatabaseLock = new Object();
    private AtomicInteger mOpenCounter = new AtomicInteger();

    public GeoFenceDatabaseHelper(Context context) {
        super(context, "geofencing.db", null, 1);
    }

    public static GeoFenceDatabaseHelper getInstance(Context context) {
        if (sInstance == null) {
            synchronized (GeoFenceDatabaseHelper.class) {
                if (sInstance == null) {
                    sInstance = new GeoFenceDatabaseHelper(context);
                }
            }
        }
        return sInstance;
    }

    public void onCreate(SQLiteDatabase db) {
        synchronized (this.mDatabaseLock) {
            try {
                createGeoFencingTable(db);
                createGeoMessageTable(db);
                MyLog.v("GeoFenceDatabaseHelper. create tables");
            } catch (Throwable e) {
                MyLog.e(e);
            }
        }
    }

    private void createGeoFencingTable(SQLiteDatabase db) {
        try {
            StringBuilder builder = new StringBuilder("CREATE TABLE geofence(id TEXT PRIMARY KEY ,");
            for (int i = 0; i < GEOFENCING_Columns.length - 1; i += 2) {
                if (i != 0) {
                    builder.append(",");
                }
                builder.append(GEOFENCING_Columns[i]).append(" ").append(GEOFENCING_Columns[i + 1]);
            }
            builder.append(");");
            db.execSQL(builder.toString());
        } catch (SQLException e) {
            MyLog.e(e.toString());
        }
    }

    private void createGeoMessageTable(SQLiteDatabase db) {
        try {
            StringBuilder builder = new StringBuilder("CREATE TABLE geoMessage(");
            for (int i = 0; i < GEOFENCING_MESSAGE_Columns.length - 1; i += 2) {
                if (i != 0) {
                    builder.append(",");
                }
                builder.append(GEOFENCING_MESSAGE_Columns[i]).append(" ").append(GEOFENCING_Columns[i + 1]);
            }
            builder.append(",PRIMARY KEY(message_id,geo_id));");
            db.execSQL(builder.toString());
        } catch (SQLException e) {
            MyLog.e(e.toString());
        }
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    }

    public synchronized SQLiteDatabase openDatabase() {
        if (this.mOpenCounter.incrementAndGet() == 1) {
            this.mDatabase = getWritableDatabase();
        }
        return this.mDatabase;
    }

    public synchronized void closeDatabase() {
        if (this.mOpenCounter.decrementAndGet() == 0) {
            this.mDatabase.close();
        }
    }
}

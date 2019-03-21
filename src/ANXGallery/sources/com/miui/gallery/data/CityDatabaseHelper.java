package com.miui.gallery.data;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.miui.gallery.data.CityDatabaseUtils.PolygonHelper;
import com.miui.gallery.provider.GalleryDBHelper.TableColumn;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.portJava.Polygon;
import com.miui.gallery.util.portJava.Rectangle;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

class CityDatabaseHelper extends SQLiteOpenHelper {
    private static final String[] PROJECTION = new String[]{"*"};
    public static final ArrayList<TableColumn> sCityBoundaryColumns = new ArrayList();
    private final SQLiteDatabase mSqliteDatabase = openDB();

    public static class CityBoundRect {
        public BoundRect[] boundRects;
        public String cityId;

        public static class BoundRect implements Serializable {
            public static int FLAG_ADD = 1;
            public static int FlAG_MINUS = 2;
            private static final long serialVersionUID = 1;
            public Rectangle boundRect;
            public int flag;

            public String toString() {
                return "BoundRect flag:" + this.flag + "  BoundRect:" + (this.boundRect != null ? this.boundRect.toString() : "null");
            }
        }

        /* synthetic */ CityBoundRect(String x0, BoundRect[] x1, AnonymousClass1 x2) {
            this(x0, x1);
        }

        private CityBoundRect(String cityId, BoundRect[] boundRects) {
            this.cityId = cityId;
            this.boundRects = boundRects;
        }

        public boolean containsIntCoordinate(int intLatitude, int intLongitude) {
            if (this.boundRects == null) {
                return false;
            }
            for (BoundRect boundRect : this.boundRects) {
                if (boundRect.flag == BoundRect.FLAG_ADD && boundRect.boundRect.contains(intLatitude, intLongitude)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class CityBoundRectList extends HashMap<String, CityBoundRect> {
    }

    public static class CityBoundary {
        public Boundary[] boundaries;
        public String cityId;

        public static class Boundary implements Serializable {
            public static int FLAG_ADD = 1;
            public static int FlAG_MINUS = 2;
            private static final long serialVersionUID = 1;
            public Polygon boundary;
            public int flag;

            public String toString() {
                return "Boundary flag:" + this.flag + "  boundray:" + (this.boundary != null ? this.boundary.xpoints[0] + "," + this.boundary.ypoints[0] : "null");
            }
        }

        /* synthetic */ CityBoundary(String x0, Boundary[] x1, AnonymousClass1 x2) {
            this(x0, x1);
        }

        public boolean containsIntCoordinate(int intLatitude, int intLongitude) {
            boolean inAddedBoundary = false;
            for (Boundary boundary : this.boundaries) {
                if (boundary.flag == Boundary.FLAG_ADD) {
                    if (!inAddedBoundary) {
                        inAddedBoundary = boundary.boundary.contains(intLatitude, intLongitude);
                    }
                } else if (boundary.flag == Boundary.FlAG_MINUS && boundary.boundary.contains(intLatitude, intLongitude)) {
                    return false;
                }
            }
            return inAddedBoundary;
        }

        private CityBoundary(String cityId, Boundary[] boundaries) {
            this.cityId = cityId;
            this.boundaries = boundaries;
        }
    }

    public static class CityBoundaryColumn extends TableColumn {
        CityBoundaryColumn(String name, String columType) {
            super(name, columType);
        }
    }

    public static class CityBoundaryList extends ConcurrentHashMap<String, CityBoundary> {
    }

    static {
        sCityBoundaryColumns.add(new CityBoundaryColumn("cityid", "text"));
        sCityBoundaryColumns.add(new CityBoundaryColumn("boundary", "blob"));
        sCityBoundaryColumns.add(new CityBoundaryColumn("rect", "blob"));
    }

    public CityDatabaseHelper(Context context, String databaseName) {
        super(context, databaseName, null, 1);
    }

    public void onCreate(SQLiteDatabase db) {
        Log.e("CityDatabaseHelper", "should not create: city.db is a readonly database");
    }

    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.e("CityDatabaseHelper", "should not upgrade: city.db is a readonly database");
    }

    public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.e("CityDatabaseHelper", "should not downgrade: city.db is a readonly database");
    }

    public boolean isDbOpened() {
        return this.mSqliteDatabase != null && this.mSqliteDatabase.isOpen();
    }

    private SQLiteDatabase openDB() {
        SQLiteDatabase sqliteDatabase = null;
        try {
            return getReadableDatabase();
        } catch (Exception e) {
            e.printStackTrace();
            return sqliteDatabase;
        }
    }

    public CityBoundRectList loadCityBoundRects() {
        if (!isDbOpened()) {
            return null;
        }
        return (CityBoundRectList) SafeDBUtil.safeQuery(this.mSqliteDatabase, "cityBoundary", new String[]{"cityid", "rect"}, null, null, null, new QueryHandler<CityBoundRectList>() {
            public CityBoundRectList handle(Cursor cursor) {
                if (cursor == null) {
                    Log.e("CityDatabaseHelper", "loadCityBoundRects fails, the returned cursor is null");
                    return null;
                }
                CityBoundRectList result = new CityBoundRectList();
                int cityIDIndex = cursor.getColumnIndex("cityid");
                int cityRectIndex = cursor.getColumnIndex("rect");
                while (cursor.moveToNext()) {
                    String cityId = cursor.getString(cityIDIndex);
                    result.put(cityId, new CityBoundRect(cityId, (BoundRect[]) PolygonHelper.parseFromByteArray(cursor.getBlob(cityRectIndex)), null));
                }
                return result;
            }
        });
    }

    public CityBoundaryList queryCityBoundary(ArrayList<String> cityIds) {
        if (!isDbOpened() || cityIds.isEmpty()) {
            return null;
        }
        StringBuilder where = new StringBuilder();
        where.append("cityid IN(");
        for (int i = 0; i < cityIds.size(); i++) {
            if (i > 0) {
                where.append(',');
            }
            where.append("\"" + ((String) cityIds.get(i)) + "\"");
        }
        where.append(')');
        return (CityBoundaryList) SafeDBUtil.safeQuery(this.mSqliteDatabase, "cityBoundary", PROJECTION, where.toString(), null, null, new QueryHandler<CityBoundaryList>() {
            public CityBoundaryList handle(Cursor cursor) {
                CityBoundaryList result = new CityBoundaryList();
                if (cursor == null) {
                    Log.e("CityDatabaseHelper", "queryCityBoundary fails, the returned cursor is null");
                } else {
                    while (cursor.moveToNext()) {
                        String cityId = cursor.getString(0);
                        result.put(cityId, new CityBoundary(cityId, (Boundary[]) PolygonHelper.parseFromByteArray(cursor.getBlob(1)), null));
                    }
                }
                return result;
            }
        });
    }
}

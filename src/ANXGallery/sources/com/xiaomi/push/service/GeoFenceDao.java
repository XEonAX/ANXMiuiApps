package com.xiaomi.push.service;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.nexstreaming.nexeditorsdk.nexExportFormat;
import com.xiaomi.channel.commonutils.logger.MyLog;
import com.xiaomi.channel.commonutils.misc.ThreadUtils;
import com.xiaomi.xmpush.thrift.CoordinateProvider;
import com.xiaomi.xmpush.thrift.GeoFencing;
import com.xiaomi.xmpush.thrift.GeoType;
import com.xiaomi.xmpush.thrift.Location;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GeoFenceDao {
    private static String TAG = "GeoFenceDao.";
    private static volatile GeoFenceDao sInstance;
    private Context mContext;

    private GeoFenceDao(Context context) {
        this.mContext = context;
    }

    public static GeoFenceDao getInstance(Context context) {
        if (sInstance == null) {
            synchronized (GeoFenceDao.class) {
                if (sInstance == null) {
                    sInstance = new GeoFenceDao(context);
                }
            }
        }
        return sInstance;
    }

    public synchronized ArrayList<GeoFencing> findAllGeoFencing() {
        ArrayList<GeoFencing> geoFencings;
        ThreadUtils.checkNotUIThread(false);
        try {
            Cursor c = queryTheCursor(GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase());
            geoFencings = new ArrayList();
            if (c != null) {
                while (c.moveToNext()) {
                    try {
                        GeoFencing geoFencingTemp = new GeoFencing();
                        geoFencingTemp.setId(c.getString(c.getColumnIndex("id")));
                        geoFencingTemp.setName(c.getString(c.getColumnIndex("name")));
                        geoFencingTemp.setAppId((long) c.getInt(c.getColumnIndex("appId")));
                        geoFencingTemp.setPackageName(c.getString(c.getColumnIndex("package_name")));
                        geoFencingTemp.setCreateTime((long) c.getInt(c.getColumnIndex("create_time")));
                        GeoType geoTypeTemp = generateGeoType(c);
                        if (geoTypeTemp == null) {
                            MyLog.v(TAG + "findAllGeoFencing: geo type null");
                        } else {
                            geoFencingTemp.setType(geoTypeTemp);
                            if (TextUtils.equals("Circle", geoTypeTemp.name())) {
                                geoFencingTemp.setCircleCenter(generateCenterLocation(c));
                                geoFencingTemp.setCircleRadius(c.getDouble(c.getColumnIndex("circle_radius")));
                            } else if (TextUtils.equals("Polygon", geoTypeTemp.name())) {
                                ArrayList<Location> points = generatePolygon(c);
                                if (points == null || points.size() < 3) {
                                    MyLog.v(TAG + "findAllGeoFencing: geo points null or size<3");
                                } else {
                                    geoFencingTemp.setPolygonPoints(points);
                                }
                            }
                            CoordinateProvider provider = generateCoordinateProvider(c);
                            if (provider == null) {
                                MyLog.v(TAG + "findAllGeoFencing: geo Coordinate Provider null ");
                            } else {
                                geoFencingTemp.setCoordinateProvider(provider);
                                geoFencings.add(geoFencingTemp);
                            }
                        }
                    } catch (Exception e) {
                        MyLog.e(e.toString());
                    }
                }
                c.close();
            }
            GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
        } catch (Exception e2) {
            MyLog.e(e2.toString());
            geoFencings = null;
        }
        return geoFencings;
    }

    public synchronized GeoFencing findGeoFencingById(String id) {
        GeoFencing geoFencing;
        ThreadUtils.checkNotUIThread(false);
        try {
            Iterator it = findAllGeoFencing().iterator();
            while (it.hasNext()) {
                geoFencing = (GeoFencing) it.next();
                if (TextUtils.equals(geoFencing.getId(), id)) {
                    break;
                }
            }
            geoFencing = null;
        } catch (Exception e) {
            MyLog.e(e.toString());
            geoFencing = null;
        }
        return geoFencing;
    }

    public synchronized String findGeoStatueByGeoId(String geoID) {
        String currentStatue;
        ThreadUtils.checkNotUIThread(false);
        try {
            Cursor c = queryTheCursor(GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase());
            if (c != null) {
                while (c.moveToNext()) {
                    if (TextUtils.equals(c.getString(c.getColumnIndex("id")), geoID)) {
                        currentStatue = c.getString(c.getColumnIndex("current_status"));
                        MyLog.v(TAG + "findGeoStatueByGeoId: geo current statue is " + currentStatue + " geoId:" + geoID);
                        c.close();
                        break;
                    }
                }
                c.close();
            }
            GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
            currentStatue = "Unknown";
        } catch (Exception e) {
            MyLog.e(e.toString());
            currentStatue = "Unknown";
        }
        return currentStatue;
    }

    public synchronized int updateGeoStatueByGeoid(String geoID, String status) {
        int result;
        ThreadUtils.checkNotUIThread(false);
        try {
            if ("Enter".equals(status) || "Leave".equals(status) || "Unknown".equals(status)) {
                ContentValues values = new ContentValues();
                values.put("current_status", status);
                result = GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase().update("geofence", values, "id=?", new String[]{geoID});
                GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
            } else {
                result = 0;
            }
        } catch (Exception e) {
            MyLog.e(e.toString());
            result = 0;
        }
        return result;
    }

    public synchronized long insertGeoFencing(GeoFencing geoFencing) {
        long result;
        ThreadUtils.checkNotUIThread(false);
        try {
            ContentValues geoValues = new ContentValues();
            geoValues.put("id", geoFencing.getId());
            geoValues.put("appId", Long.valueOf(geoFencing.getAppId()));
            geoValues.put("name", geoFencing.getName());
            geoValues.put("package_name", geoFencing.getPackageName());
            geoValues.put("create_time", Long.valueOf(geoFencing.getCreateTime()));
            geoValues.put(nexExportFormat.TAG_FORMAT_TYPE, geoFencing.getType().name());
            geoValues.put("center_longtitude", String.valueOf(geoFencing.getCircleCenter().getLongitude()));
            geoValues.put("center_lantitude", String.valueOf(geoFencing.getCircleCenter().getLatitude()));
            geoValues.put("circle_radius", Double.valueOf(geoFencing.getCircleRadius()));
            geoValues.put("polygon_point", generatePointsJSONStr(geoFencing.getPolygonPoints()));
            geoValues.put("coordinate_provider", geoFencing.getCoordinateProvider().name());
            geoValues.put("current_status", "Unknown");
            result = GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase().insert("geofence", null, geoValues);
            GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
        } catch (Exception e) {
            MyLog.e(e.toString());
            result = -1;
        }
        return result;
    }

    public synchronized int deleteGeoFencingByGeoId(String geoId) {
        int result;
        ThreadUtils.checkNotUIThread(false);
        try {
            if (findGeoFencingById(geoId) != null) {
                result = GeoFenceDatabaseHelper.getInstance(this.mContext).openDatabase().delete("geofence", "id = ?", new String[]{geoId});
                GeoFenceDatabaseHelper.getInstance(this.mContext).closeDatabase();
            } else {
                result = 0;
            }
        } catch (Exception e) {
            MyLog.e(e.toString());
            result = 0;
        }
        return result;
    }

    private synchronized String generatePointsJSONStr(List<Location> points) {
        String str = null;
        synchronized (this) {
            if (points != null) {
                if (points.size() >= 3) {
                    JSONArray pointsArray = new JSONArray();
                    try {
                        for (Location point : points) {
                            if (point != null) {
                                JSONObject pointObject = new JSONObject();
                                pointObject.put("point_lantitude", point.getLatitude());
                                pointObject.put("point_longtitude", point.getLongitude());
                                pointsArray.put(pointObject);
                            }
                        }
                        str = pointsArray.toString();
                    } catch (JSONException e) {
                        MyLog.e(e.toString());
                    }
                }
            }
            MyLog.w(TAG + " points unvalidated");
        }
        return str;
    }

    private synchronized GeoType generateGeoType(Cursor c) {
        GeoType type;
        try {
            for (GeoType type2 : GeoType.values()) {
                if (TextUtils.equals(c.getString(c.getColumnIndex(nexExportFormat.TAG_FORMAT_TYPE)), type2.name())) {
                    break;
                }
            }
            type2 = null;
        } catch (Exception e) {
            MyLog.e(e.toString());
            type2 = null;
        }
        return type2;
    }

    private synchronized Location generateCenterLocation(Cursor c) {
        Location center;
        center = new Location();
        try {
            center.setLatitude(Double.parseDouble(c.getString(c.getColumnIndex("center_lantitude"))));
            center.setLongitude(Double.parseDouble(c.getString(c.getColumnIndex("center_longtitude"))));
        } catch (Exception e) {
            MyLog.e(e.toString());
            center = null;
        }
        return center;
    }

    private synchronized ArrayList<Location> generatePolygon(Cursor c) {
        ArrayList<Location> points;
        points = new ArrayList();
        try {
            JSONArray pointsArray = new JSONArray(c.getString(c.getColumnIndex("polygon_points")));
            for (int i = 0; i < pointsArray.length(); i++) {
                Location point = new Location();
                JSONObject pointObject = (JSONObject) pointsArray.get(i);
                point.setLatitude(pointObject.getDouble("point_lantitude"));
                point.setLongitude(pointObject.getDouble("point_longtitude"));
                points.add(point);
            }
        } catch (JSONException e) {
            MyLog.e(e.toString());
            points = null;
        }
        return points;
    }

    private synchronized CoordinateProvider generateCoordinateProvider(Cursor c) {
        CoordinateProvider valueOf;
        try {
            valueOf = CoordinateProvider.valueOf(c.getString(c.getColumnIndex("coordinate_provider")));
        } catch (IllegalArgumentException e) {
            MyLog.e(e.toString());
            valueOf = null;
        }
        return valueOf;
    }

    private synchronized Cursor queryTheCursor(SQLiteDatabase db) {
        Cursor query;
        ThreadUtils.checkNotUIThread(false);
        try {
            query = db.query("geofence", null, null, null, null, null, null);
        } catch (Exception e) {
            query = null;
        }
        return query;
    }
}

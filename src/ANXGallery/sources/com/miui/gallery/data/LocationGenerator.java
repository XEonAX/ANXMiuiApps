package com.miui.gallery.data;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryContract.ShareImage;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;

public class LocationGenerator {
    private static LocationGenerator sInstance;
    private String[] CLOUD_PROJECTION = new String[]{"_id", "exifGPSLatitude", "exifGPSLatitudeRef", "exifGPSLongitude", "exifGPSLongitudeRef", "fileName"};
    private Future mFuture;

    private LocationGenerator() {
    }

    public static synchronized LocationGenerator getInstance() {
        LocationGenerator locationGenerator;
        synchronized (LocationGenerator.class) {
            if (sInstance == null) {
                sInstance = new LocationGenerator();
            }
            locationGenerator = sInstance;
        }
        return locationGenerator;
    }

    public synchronized void generate(final Context context) {
        if (this.mFuture == null || this.mFuture.isDone()) {
            this.mFuture = ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    SafeDBUtil.safeQuery(context, Cloud.CLOUD_URI, LocationGenerator.this.CLOUD_PROJECTION, null, null, null, new QueryHandler<Void>() {
                        public Void handle(Cursor cursor) {
                            if (cursor != null) {
                                while (cursor.moveToNext()) {
                                    int id = cursor.getInt(0);
                                    String latitude = cursor.getString(1);
                                    String latitudeRef = cursor.getString(2);
                                    String longitude = cursor.getString(3);
                                    String longitudeRef = cursor.getString(4);
                                    String location = null;
                                    String appName = FileUtils.getPackageNameFromScreenshotFileName(context, cursor.getString(5));
                                    if (!TextUtils.isEmpty(appName)) {
                                        location = appName;
                                    } else if (!(TextUtils.isEmpty(latitude) || TextUtils.isEmpty(longitude))) {
                                        location = CitySearcher.getInstance().decode(new Coordinate(latitude, latitudeRef, longitude, longitudeRef));
                                        location = LocationUtil.isLocationValidate(location) ? LocationUtil.getCityNameFromRes(context, location) : null;
                                    }
                                    SafeDBUtil.safeUpdate(context, Cloud.CLOUD_URI, LocationGenerator.this.toValues(location), "_id=?", new String[]{String.valueOf(id)});
                                }
                            }
                            return null;
                        }
                    });
                    SafeDBUtil.safeQuery(context, ShareImage.SHARE_URI, LocationGenerator.this.CLOUD_PROJECTION, null, null, null, new QueryHandler<Void>() {
                        public Void handle(Cursor cursor) {
                            if (cursor != null) {
                                while (cursor.moveToNext()) {
                                    int id = cursor.getInt(0);
                                    String latitude = cursor.getString(1);
                                    String latitudeRef = cursor.getString(2);
                                    String longitude = cursor.getString(3);
                                    String longitudeRef = cursor.getString(4);
                                    String location = null;
                                    String appName = FileUtils.getPackageNameFromScreenshotFileName(context, cursor.getString(5));
                                    if (!TextUtils.isEmpty(appName)) {
                                        location = appName;
                                    } else if (!(TextUtils.isEmpty(latitude) || TextUtils.isEmpty(longitude))) {
                                        location = CitySearcher.getInstance().decode(new Coordinate(latitude, latitudeRef, longitude, longitudeRef));
                                        location = LocationUtil.isLocationValidate(location) ? LocationUtil.getCityNameFromRes(context, location) : null;
                                    }
                                    SafeDBUtil.safeUpdate(context, ShareImage.SHARE_URI, LocationGenerator.this.toValues(location), "_id=?", new String[]{String.valueOf(id)});
                                }
                            }
                            return null;
                        }
                    });
                    LocationGenerator.this.release();
                    context.getContentResolver().notifyChange(Media.URI, null, false);
                    return null;
                }
            });
        }
    }

    private ContentValues toValues(String location) {
        ContentValues values = new ContentValues();
        if (TextUtils.isEmpty(location)) {
            values.putNull("location");
        } else {
            values.put("location", location);
        }
        return values;
    }

    public synchronized void release() {
        if (this.mFuture != null) {
            this.mFuture.cancel();
        }
        sInstance = null;
    }
}

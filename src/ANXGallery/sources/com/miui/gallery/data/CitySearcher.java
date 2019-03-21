package com.miui.gallery.data;

import android.content.Context;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.data.CityDatabaseHelper.CityBoundRect;
import com.miui.gallery.data.CityDatabaseHelper.CityBoundRectList;
import com.miui.gallery.data.CityDatabaseHelper.CityBoundary;
import com.miui.gallery.data.CityDatabaseHelper.CityBoundaryList;
import com.miui.gallery.util.Log;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import miui.util.IOUtils;

public class CitySearcher {
    private static CitySearcher sThis;
    CityBoundRectList mCityBoundRects;
    CityBoundaryList mCityBoundaries = new CityBoundaryList();
    private CityDatabaseHelper mDbHelper;
    PhotoGpsCache mPhotoGpsCache = new PhotoGpsCache();

    private static class DataBaseFileLoader {
        private Context mContext;
        private String mDataBasePath;

        public DataBaseFileLoader(Context context) {
            this.mContext = context;
            this.mDataBasePath = context.getApplicationInfo().dataDir + "/databases";
        }

        public String loadFile() {
            if (isFileCopied() || copyFile()) {
                return this.mDataBasePath + "/" + "city.db";
            }
            return "/data/miui/gallery/city.db";
        }

        private boolean copyFile() {
            Throwable e;
            Throwable th;
            File dataBaseDir = new File(this.mDataBasePath);
            File dbFile = new File(dataBaseDir, "city.db");
            File md5File = new File(dataBaseDir, "city.db.md5");
            try {
                if (!dataBaseDir.exists()) {
                    dataBaseDir.mkdirs();
                }
                if (dbFile.exists() && !dbFile.delete()) {
                    return false;
                }
                if (md5File.exists() && !md5File.delete()) {
                    return false;
                }
                InputStream is = null;
                OutputStream os = null;
                try {
                    is = this.mContext.getAssets().open("city.db");
                    OutputStream os2 = new FileOutputStream(dbFile);
                    try {
                        IOUtils.copy(is, os2);
                        IOUtils.closeQuietly(is);
                        IoUtils.closeSilently(os2);
                        try {
                            is = this.mContext.getAssets().open("city.db.md5");
                            os = new FileOutputStream(md5File);
                            try {
                                IOUtils.copy(is, os);
                                IOUtils.closeQuietly(is);
                                IoUtils.closeSilently(os);
                                return true;
                            } catch (IOException e2) {
                                e = e2;
                                try {
                                    Log.w("DataBaseFileLoader", e);
                                    IOUtils.closeQuietly(is);
                                    IoUtils.closeSilently(os);
                                    return false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    IOUtils.closeQuietly(is);
                                    IoUtils.closeSilently(os);
                                    throw th;
                                }
                            }
                        } catch (IOException e3) {
                            e = e3;
                            os = os2;
                            Log.w("DataBaseFileLoader", e);
                            IOUtils.closeQuietly(is);
                            IoUtils.closeSilently(os);
                            return false;
                        } catch (Throwable th3) {
                            th = th3;
                            os = os2;
                            IOUtils.closeQuietly(is);
                            IoUtils.closeSilently(os);
                            throw th;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        os = os2;
                        try {
                            Log.w("DataBaseFileLoader", e);
                            IOUtils.closeQuietly(is);
                            IoUtils.closeSilently(os);
                            return false;
                        } catch (Throwable th4) {
                            th = th4;
                            IOUtils.closeQuietly(is);
                            IoUtils.closeSilently(os);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        os = os2;
                        IOUtils.closeQuietly(is);
                        IoUtils.closeSilently(os);
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                    Log.w("DataBaseFileLoader", e);
                    IOUtils.closeQuietly(is);
                    IoUtils.closeSilently(os);
                    return false;
                }
            } catch (Throwable e6) {
                Log.w("DataBaseFileLoader", e6);
                return false;
            }
        }

        private boolean isFileCopied() {
            Throwable e;
            Throwable th;
            boolean z = false;
            if (new File(this.mDataBasePath, "city.db").exists()) {
                File md5File = new File(this.mDataBasePath, "city.db.md5");
                if (md5File.exists()) {
                    InputStream dstIn = null;
                    InputStream srcIn = null;
                    try {
                        InputStream dstIn2 = new FileInputStream(md5File);
                        try {
                            srcIn = this.mContext.getAssets().open("city.db.md5");
                            z = compareStream(dstIn2, srcIn);
                            IOUtils.closeQuietly(dstIn2);
                            IOUtils.closeQuietly(srcIn);
                        } catch (IOException e2) {
                            e = e2;
                            dstIn = dstIn2;
                            try {
                                Log.w("DataBaseFileLoader", e);
                                IOUtils.closeQuietly(dstIn);
                                IOUtils.closeQuietly(srcIn);
                                return z;
                            } catch (Throwable th2) {
                                th = th2;
                                IOUtils.closeQuietly(dstIn);
                                IOUtils.closeQuietly(srcIn);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            dstIn = dstIn2;
                            IOUtils.closeQuietly(dstIn);
                            IOUtils.closeQuietly(srcIn);
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        Log.w("DataBaseFileLoader", e);
                        IOUtils.closeQuietly(dstIn);
                        IOUtils.closeQuietly(srcIn);
                        return z;
                    }
                }
            }
            return z;
        }

        private boolean compareStream(InputStream input1, InputStream input2) throws IOException {
            if (!(input1 instanceof BufferedInputStream)) {
                input1 = new BufferedInputStream(input1);
            }
            if (!(input2 instanceof BufferedInputStream)) {
                input2 = new BufferedInputStream(input2);
            }
            int data;
            do {
                data = input1.read();
                if (data == -1) {
                    if (input2.read() == -1) {
                        return true;
                    }
                    return false;
                }
            } while (data == input2.read());
            return false;
        }
    }

    public static class PhotoGpsCache extends HashMap<String, String> {
        public static String makeKey(Coordinate coordinate) {
            if (coordinate == null || !coordinate.isValid()) {
                return "";
            }
            return "" + coordinate.latitude + "," + coordinate.longitude;
        }
    }

    private CitySearcher() {
        openDB(GalleryApp.sGetAndroidContext());
    }

    public static synchronized CitySearcher getInstance() {
        CitySearcher citySearcher;
        synchronized (CitySearcher.class) {
            if (sThis == null) {
                sThis = new CitySearcher();
            }
            citySearcher = sThis;
        }
        return citySearcher;
    }

    private synchronized void appendBoundaryList(CityBoundaryList newBoundaries) {
        if (newBoundaries.size() >= 10) {
            this.mCityBoundaries = newBoundaries;
        } else {
            if (newBoundaries.size() + this.mCityBoundaries.size() > 10) {
                Queue<String> oldCityIds = new ArrayDeque();
                for (String oldCityId : this.mCityBoundaries.keySet()) {
                    if (!newBoundaries.containsKey(oldCityId)) {
                        oldCityIds.add(oldCityId);
                    }
                }
                while (!oldCityIds.isEmpty() && newBoundaries.size() + oldCityIds.size() > 10) {
                    this.mCityBoundaries.remove(oldCityIds.poll());
                }
            }
            this.mCityBoundaries.putAll(newBoundaries);
        }
    }

    private CityBoundaryList findBoundaries(CityBoundRectList cityBoundRects) {
        CityBoundaryList result = new CityBoundaryList();
        ArrayList<String> cityIds = new ArrayList();
        for (String cityId : cityBoundRects.keySet()) {
            CityBoundary boundary = (CityBoundary) this.mCityBoundaries.get(cityId);
            if (boundary == null) {
                cityIds.add(cityId);
            } else {
                result.put(cityId, boundary);
            }
        }
        CityBoundaryList boundariesFromDb = this.mDbHelper.queryCityBoundary(cityIds);
        if (!(boundariesFromDb == null || boundariesFromDb.isEmpty())) {
            result.putAll(boundariesFromDb);
        }
        return result;
    }

    private String findInBoundRects(int intLatitude, int intLongitude, CityBoundRectList boundRects) {
        if (boundRects == null || boundRects.isEmpty()) {
            return null;
        }
        CityBoundaryList boundaries = findBoundaries(boundRects);
        if (boundaries == null || boundaries.isEmpty()) {
            return null;
        }
        appendBoundaryList(boundaries);
        for (CityBoundary boundary : boundaries.values()) {
            if (boundary.containsIntCoordinate(intLatitude, intLongitude)) {
                return boundary.cityId;
            }
        }
        return null;
    }

    public String decode(Coordinate coordinate) {
        if (coordinate != null && isDBOpened()) {
            try {
                String gpsCacheKey = PhotoGpsCache.makeKey(coordinate);
                String cityId = (String) this.mPhotoGpsCache.get(gpsCacheKey);
                if (!TextUtils.isEmpty(cityId)) {
                    return cityId;
                }
                int intLatitude = LocationUtil.convertIntLat(coordinate.latitude);
                int intLongitude = LocationUtil.convertIntLat(coordinate.longitude);
                for (CityBoundary boundary : this.mCityBoundaries.values()) {
                    if (boundary.containsIntCoordinate(intLatitude, intLongitude)) {
                        return boundary.cityId;
                    }
                }
                CityBoundRectList allBoundRects = getCityBoundRects();
                CityBoundRectList boundRects = new CityBoundRectList();
                for (CityBoundRect boundRect : allBoundRects.values()) {
                    if (boundRect.containsIntCoordinate(intLatitude, intLongitude)) {
                        boundRects.put(boundRect.cityId, boundRect);
                    }
                }
                cityId = findInBoundRects(intLatitude, intLongitude, boundRects);
                if (!TextUtils.isEmpty(cityId)) {
                    this.mPhotoGpsCache.put(gpsCacheKey, cityId);
                    return cityId;
                }
            } catch (Throwable e) {
                Log.w("CitySearcher", e);
            }
        }
        return null;
    }

    private synchronized CityBoundRectList getCityBoundRects() {
        CityBoundRectList cityBoundRectList;
        if (this.mCityBoundRects != null) {
            cityBoundRectList = this.mCityBoundRects;
        } else if (this.mDbHelper == null) {
            cityBoundRectList = null;
        } else {
            this.mCityBoundRects = this.mDbHelper.loadCityBoundRects();
            cityBoundRectList = this.mCityBoundRects;
        }
        return cityBoundRectList;
    }

    public synchronized boolean openDB(Context context) {
        boolean isDbOpened;
        if (this.mDbHelper != null) {
            isDbOpened = this.mDbHelper.isDbOpened();
        } else {
            this.mDbHelper = new CityDatabaseHelper(context, new DataBaseFileLoader(context).loadFile());
            isDbOpened = this.mDbHelper.isDbOpened();
        }
        return isDbOpened;
    }

    public synchronized void preLoadData() {
        if (isDBOpened()) {
            getCityBoundRects();
        }
    }

    private synchronized boolean isDBOpened() {
        boolean z;
        z = this.mDbHelper != null && this.mDbHelper.isDbOpened();
        return z;
    }
}

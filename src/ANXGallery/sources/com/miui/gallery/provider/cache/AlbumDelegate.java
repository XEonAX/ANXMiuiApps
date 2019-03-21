package com.miui.gallery.provider.cache;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.v4.util.LongSparseArray;
import com.miui.gallery.preference.GalleryPreferences.HiddenAlbum;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.MediaSortDateHelper;
import com.miui.gallery.provider.MediaSortDateHelper.SortDate;
import com.miui.gallery.provider.MediaSortDateHelper.SortDateProvider;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.DebugUtil;
import com.miui.gallery.util.Log;
import java.util.Map;

public class AlbumDelegate {
    private static final Object INITIALIZATION_LOCK = new Object();
    private static final String[] PROJECTION = new String[]{"_id", "attributes", "localFile"};
    private LongSparseArray<Long> mAttributes = new LongSparseArray();
    private boolean mInitialized = false;
    private LongSparseArray<SortDate> mSortDate = new LongSparseArray();

    public AlbumDelegate() {
        this.mAttributes.put(-1000, Long.valueOf(1));
    }

    public boolean isShowInHomePage(long id) {
        boolean z = true;
        long attr = ((Long) this.mAttributes.get(id, Long.valueOf(0))).longValue();
        if (!HiddenAlbum.isShowHiddenAlbum()) {
            if ((4 & attr) == 0 || (16 & attr) != 0) {
                z = false;
            }
            return z;
        } else if ((4 & attr) != 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean isHidden(long id) {
        return ((16 & ((Long) this.mAttributes.get(id, Long.valueOf(0))).longValue()) == 0 || HiddenAlbum.isShowHiddenAlbum()) ? false : true;
    }

    public boolean isAutoUpload(long id) {
        return (1 & ((Long) this.mAttributes.get(id, Long.valueOf(0))).longValue()) != 0;
    }

    public void load(SQLiteDatabase db) {
        synchronized (INITIALIZATION_LOCK) {
            long start = System.currentTimeMillis();
            Cursor album;
            try {
                album = db.query("cloud", PROJECTION, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND (serverType=0)", null, null, null, null);
                if (album != null) {
                    SortDateProvider sortDateProvider = MediaSortDateHelper.getSortDateProvider();
                    album.moveToFirst();
                    while (!album.isAfterLast()) {
                        long albumId = album.getLong(0);
                        this.mAttributes.put(albumId, Long.valueOf(album.getLong(1)));
                        this.mSortDate.put(albumId, sortDateProvider.getSortDateByAlbumPath(album.getString(2)));
                        album.moveToNext();
                    }
                    Log.d(".provider.cache.AlbumDelegate", "loaded %d albums from cursor[%d]", Integer.valueOf(this.mAttributes.size()), Integer.valueOf(album.getCount()));
                } else {
                    Log.e(".provider.cache.AlbumDelegate", "fill provider failed with a null cursor");
                }
                if (album != null) {
                    album.close();
                }
                Log.d(".provider.cache.AlbumDelegate", "load attributes cost: %s", Long.valueOf(System.currentTimeMillis() - start));
                this.mInitialized = true;
            } catch (SQLiteException e) {
                Map<String, String> recordParams = BaseSamplingStatHelper.generatorCommonParams();
                recordParams.put("dbversion", String.valueOf(db.getVersion()));
                recordParams.put("exception", e.getMessage() + " : " + e.getCause());
                BaseSamplingStatHelper.recordErrorEvent("db_helper", "db_mediamanager_load", recordParams);
                DebugUtil.exportDB(false);
                GalleryDBHelper.getInstance().deleteDatabase();
                throw e;
            } catch (Throwable th) {
                if (album != null) {
                    album.close();
                }
            }
        }
    }

    public SortDate getSortDate(long albumId) {
        return (SortDate) this.mSortDate.get(albumId, MediaSortDateHelper.getSortDateProvider().getDefaultSortDate());
    }

    public void update(long id, long attributes) {
        Log.d(".provider.cache.AlbumDelegate", "update album[%d] attributes", Long.valueOf(id));
        this.mAttributes.put(id, Long.valueOf(attributes));
    }

    public void insert(long id, long attributes) {
        Log.d(".provider.cache.AlbumDelegate", "insert album[%d] attributes", Long.valueOf(id));
        this.mAttributes.put(id, Long.valueOf(attributes));
    }

    public void delete(long id) {
        Log.d(".provider.cache.AlbumDelegate", "delete album[%d] attributes", Long.valueOf(id));
        this.mAttributes.delete(id);
    }

    public Long queryAttributes(long id) {
        if (this.mInitialized) {
            return (Long) this.mAttributes.get(id, Long.valueOf(0));
        }
        Long l;
        Log.d(".provider.cache.AlbumDelegate", "not initialized, wait");
        synchronized (INITIALIZATION_LOCK) {
            l = (Long) this.mAttributes.get(id, Long.valueOf(0));
        }
        return l;
    }
}

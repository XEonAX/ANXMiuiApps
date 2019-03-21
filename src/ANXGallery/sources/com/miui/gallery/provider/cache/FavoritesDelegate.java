package com.miui.gallery.provider.cache;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.common.collect.Sets;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.DebugUtil;
import com.miui.gallery.util.Log;
import java.util.Map;
import java.util.Set;

public class FavoritesDelegate {
    private static final Object INITIALIZATION_LOCK = new Object();
    private static final String[] PROJECTION = new String[]{"sha1"};
    private Set<String> mSha1Set = Sets.newConcurrentHashSet();

    public void load(SQLiteDatabase db) {
        synchronized (INITIALIZATION_LOCK) {
            long start = System.currentTimeMillis();
            Cursor cursor;
            try {
                SQLiteDatabase sQLiteDatabase = db;
                cursor = sQLiteDatabase.query("favorites", PROJECTION, "(isFavorite NOT NULL  AND isFavorite > 0) AND source = ? AND sha1 NOT NULL", new String[]{String.valueOf(1)}, null, null, null);
                if (cursor != null) {
                    cursor.moveToFirst();
                    while (!cursor.isAfterLast()) {
                        this.mSha1Set.add(cursor.getString(0));
                        cursor.moveToNext();
                    }
                    Log.d(".provider.cache.FavoritesDelegate", "loaded %d favorite sha1 from cursor [%d]", Integer.valueOf(this.mSha1Set.size()), Integer.valueOf(cursor.getCount()));
                } else {
                    Log.e(".provider.cache.FavoritesDelegate", "fill provider failed with a null cursor");
                }
                if (cursor != null) {
                    cursor.close();
                }
                Log.d(".provider.cache.FavoritesDelegate", "load favorite sha1 costs [%d]", Long.valueOf(System.currentTimeMillis() - start));
            } catch (SQLiteException e) {
                Map<String, String> recordParams = BaseSamplingStatHelper.generatorCommonParams();
                recordParams.put("dbversion", String.valueOf(db.getVersion()));
                recordParams.put("exception", e.getMessage() + " : " + e.getCause());
                BaseSamplingStatHelper.recordErrorEvent("db_helper", "db_mediamanager_load", recordParams);
                DebugUtil.exportDB(false);
                GalleryDBHelper.getInstance().deleteDatabase();
                throw e;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
    }

    public boolean isFavorite(String sha1) {
        return this.mSha1Set.contains(sha1);
    }

    public void insertToFavorites(String sha1) {
        if (!TextUtils.isEmpty(sha1)) {
            Log.d(".provider.cache.FavoritesDelegate", "insert sha1 [%s]", (Object) sha1);
            this.mSha1Set.add(sha1);
        }
    }

    public void removeFromFavorites(String sha1) {
        if (!TextUtils.isEmpty(sha1)) {
            Log.d(".provider.cache.FavoritesDelegate", "remove sha1 [%s]", (Object) sha1);
            this.mSha1Set.remove(sha1);
        }
    }
}

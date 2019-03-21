package com.miui.gallery.provider.cache;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.LruCache;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.provider.GalleryContract.Album;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.InternalContract.Cloud;
import com.miui.gallery.provider.cache.CacheItem.QueryFactory;
import com.miui.gallery.search.utils.SearchLog;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.StorageUtils;
import com.miui.gallery.util.uil.CloudUriAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SearchIconManager {
    private static final UriMatcher sIconURIMatcher = new UriMatcher(-1);
    private final ContentObserver mContentObserver = new ContentObserver(ThreadManager.getMainHandler()) {
        public void onChange(boolean selfChange) {
            ThreadManager.getMiscPool().submit(new Job<Void>() {
                public Void run(JobContext jc) {
                    SearchLog.d(".searchProvider.SearchIconManager", "On notify change, clear cache");
                    SearchIconManager.this.releaseCache();
                    return null;
                }
            });
        }
    };
    private final LruCache<String, SearchIconItem> mIconCache = new LruCache(40);
    private final Object mModifyLock = new Object();
    private final List<Uri> mObserveUris = new ArrayList();
    private final QueryFactory<SearchIconItem> mQueryFactory = new SearchIconItem.QueryFactory();

    private static class AlbumCoverIconLoader {
        private static final String[] PROJECTION = new String[]{"cover_id", "cover_path", "cover_sha1"};
        private static final String SELECTION = ("=? AND (media_count>0  OR (" + Cloud.ALIAS_USER_CREATE_ALBUM + ") OR " + "_id" + "=" + 2147483646 + ")");

        static SearchIconItem queryIcon(Uri iconUri, ContentResolver contentResolver) {
            String selection;
            String[] selectionArgs;
            SearchIconItem iconItem = null;
            String serverId = iconUri.getQueryParameter("serverId");
            String id = iconUri.getQueryParameter("id");
            if (!TextUtils.isEmpty(serverId)) {
                selection = "serverId" + SELECTION;
                selectionArgs = new String[]{serverId};
            } else if (TextUtils.isEmpty(id)) {
                SearchLog.e(".searchProvider.SearchIconManager", "No valid id found for icon uri: %s", iconUri);
                return iconItem;
            } else {
                selection = "_id" + SELECTION;
                selectionArgs = new String[]{id};
            }
            Cursor cursor = null;
            iconItem = null;
            try {
                cursor = contentResolver.query(Album.URI_ALL_EXCEPT_DELETED, PROJECTION, selection, selectionArgs, null);
                if (cursor != null && cursor.moveToFirst()) {
                    String coverPath = cursor.getString(1);
                    if (TextUtils.isEmpty(coverPath)) {
                        coverPath = StorageUtils.getPriorMicroThumbnailPath(cursor.getString(2));
                    }
                    iconItem = SearchIconManager.createIconItem(iconUri, coverPath, cursor.getLong(0), cursor.getNotificationUri());
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                SearchLog.e(".searchProvider.SearchIconManager", "Error occurred while query icon uri %s, %s", iconUri, e);
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
            return iconItem;
        }
    }

    private static class LocalImageFaceLoader {
        private static final String[] PROJECTION = new String[]{"photo_id", "microthumbfile", "thumbnailFile", "localFile", "sha1", "faceXScale", "faceYScale", "faceWScale", "faceHScale"};

        static SearchIconItem queryIcon(final Uri iconUri, Context context) {
            String serverId = iconUri.getQueryParameter("serverId");
            return (SearchIconItem) SafeDBUtil.safeQuery(context, PeopleFace.IMAGE_FACE_URI.buildUpon().appendQueryParameter("image_server_id", serverId).appendQueryParameter("serverId", iconUri.getQueryParameter("faceId")).build(), PROJECTION, null, null, null, new QueryHandler<SearchIconItem>() {
                public SearchIconItem handle(Cursor cursor) {
                    if (cursor == null || !cursor.moveToFirst()) {
                        return null;
                    }
                    String filePath = cursor.getString(2);
                    if (TextUtils.isEmpty(filePath)) {
                        filePath = cursor.getString(3);
                    }
                    if (TextUtils.isEmpty(filePath)) {
                        filePath = cursor.getString(1);
                    }
                    if (TextUtils.isEmpty(filePath)) {
                        filePath = StorageUtils.getPriorMicroThumbnailPath(cursor.getString(4));
                    }
                    SearchIconItem iconItem = SearchIconManager.createIconItem(iconUri, filePath, cursor.getLong(0), cursor.getNotificationUri());
                    iconItem.decodeRegionX = Float.valueOf(cursor.getFloat(5));
                    iconItem.decodeRegionY = Float.valueOf(cursor.getFloat(6));
                    iconItem.decodeRegionW = Float.valueOf(cursor.getFloat(7));
                    iconItem.decodeRegionH = Float.valueOf(cursor.getFloat(8));
                    return iconItem;
                }
            });
        }
    }

    private static class LocalImageIconLoader {
        private static final String[] PROJECTION = new String[]{"_id", "alias_clear_thumbnail", "sha1"};

        static SearchIconItem queryIcon(Uri iconUri, ContentResolver contentResolver) {
            String selection;
            SearchIconItem iconItem = null;
            Uri queryUri = Media.URI_ALL;
            String serverId = iconUri.getQueryParameter("serverId");
            String id = iconUri.getQueryParameter("id");
            if (!TextUtils.isEmpty(serverId)) {
                selection = String.format(Locale.US, "%s=%s", new Object[]{"serverId", serverId});
            } else if (TextUtils.isEmpty(id)) {
                SearchLog.e(".searchProvider.SearchIconManager", "No valid id found for icon uri: %s", iconUri);
                return iconItem;
            } else {
                selection = String.format(Locale.US, "%s=%s", new Object[]{"_id", id});
            }
            Cursor cursor = null;
            iconItem = null;
            try {
                cursor = contentResolver.query(queryUri, PROJECTION, selection, null, null);
                if (cursor != null && cursor.moveToFirst()) {
                    String filePath = cursor.getString(1);
                    if (TextUtils.isEmpty(filePath)) {
                        filePath = StorageUtils.getPriorMicroThumbnailPath(cursor.getString(2));
                    }
                    iconItem = SearchIconManager.createIconItem(iconUri, filePath, cursor.getLong(0), cursor.getNotificationUri());
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                SearchLog.e(".searchProvider.SearchIconManager", "Error occurred while query icon uri %s, %s", iconUri, e);
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
            return iconItem;
        }
    }

    private static class PeopleCoverIconLoader {
        private static final String[] PROJECTION = new String[]{"photo_id", "microthumbfile", "thumbnailFile", "localFile", "sha1", "exifOrientation", "faceXScale", "faceYScale", "faceWScale", "faceHScale"};

        private static SearchIconItem queryIcon(Uri iconUri, ContentResolver contentResolver) {
            SearchIconItem iconItem = null;
            String serverId = iconUri.getQueryParameter("serverId");
            String id = iconUri.getQueryParameter("id");
            Builder queryUriBuilder = PeopleFace.PEOPLE_COVER_URI.buildUpon();
            if (!TextUtils.isEmpty(serverId)) {
                queryUriBuilder.appendQueryParameter("serverId", serverId);
            } else if (TextUtils.isEmpty(id)) {
                SearchLog.w(".searchProvider.SearchIconManager", "No valid id found for uri %s", iconUri);
                return iconItem;
            } else {
                queryUriBuilder.appendQueryParameter("_id", id).build();
            }
            Cursor cursor = null;
            iconItem = null;
            try {
                cursor = contentResolver.query(queryUriBuilder.build(), PROJECTION, null, null, null);
                if (cursor != null && cursor.moveToFirst()) {
                    String localPath = cursor.getString(2);
                    if (TextUtils.isEmpty(localPath)) {
                        localPath = cursor.getString(3);
                    }
                    if (TextUtils.isEmpty(localPath)) {
                        localPath = cursor.getString(1);
                    }
                    if (TextUtils.isEmpty(localPath)) {
                        localPath = StorageUtils.getPriorMicroThumbnailPath(cursor.getString(4));
                    }
                    iconItem = SearchIconManager.createIconItem(iconUri, localPath, cursor.getLong(0), cursor.getNotificationUri());
                    iconItem.decodeRegionOrientation = cursor.getInt(5);
                    iconItem.decodeRegionX = Float.valueOf(cursor.getFloat(6));
                    iconItem.decodeRegionY = Float.valueOf(cursor.getFloat(7));
                    iconItem.decodeRegionW = Float.valueOf(cursor.getFloat(8));
                    iconItem.decodeRegionH = Float.valueOf(cursor.getFloat(9));
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Exception e) {
                SearchLog.e(".searchProvider.SearchIconManager", "Error occurred while query icon uri %s, %s", iconUri, e);
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
            }
            return iconItem;
        }
    }

    public void releaseCache() {
        synchronized (this.mModifyLock) {
            this.mIconCache.evictAll();
        }
        getContentResolver().unregisterContentObserver(this.mContentObserver);
        this.mObserveUris.clear();
    }

    public Cursor query(Uri iconUri, String[] projection, Bundle options) {
        List<SearchIconItem> result = new ArrayList(1);
        boolean useCache = true;
        if (options != null) {
            useCache = options.getBoolean("use_cache", true);
        }
        SearchIconItem iconItem = null;
        if (useCache) {
            synchronized (this.mModifyLock) {
                iconItem = (SearchIconItem) this.mIconCache.get(iconUri.toString());
            }
        }
        if (iconItem == null) {
            iconItem = queryIcon(iconUri);
        }
        if (iconItem != null) {
            result.add(iconItem);
            synchronized (this.mModifyLock) {
                this.mIconCache.put(iconUri.toString(), iconItem);
            }
            if (iconItem.notifyUri != null) {
                observerUri(iconItem.notifyUri);
            }
        }
        return new RawCursor(result, projection, this.mQueryFactory.getMapper());
    }

    private Context getContext() {
        return GalleryApp.sGetAndroidContext();
    }

    private ContentResolver getContentResolver() {
        return getContext().getContentResolver();
    }

    private void observerUri(Uri uri) {
        if (!this.mObserveUris.contains(uri)) {
            getContentResolver().registerContentObserver(uri, true, this.mContentObserver);
            this.mObserveUris.add(uri);
        }
    }

    static {
        sIconURIMatcher.addURI("people", null, 1);
        sIconURIMatcher.addURI("album", null, 2);
        sIconURIMatcher.addURI("image", null, 3);
    }

    private SearchIconItem queryIcon(Uri iconUri) {
        switch (sIconURIMatcher.match(iconUri)) {
            case 1:
                return PeopleCoverIconLoader.queryIcon(iconUri, getContentResolver());
            case 2:
                return AlbumCoverIconLoader.queryIcon(iconUri, getContentResolver());
            case 3:
                if (TextUtils.isEmpty(iconUri.getQueryParameter("faceId"))) {
                    return LocalImageIconLoader.queryIcon(iconUri, getContentResolver());
                }
                return LocalImageFaceLoader.queryIcon(iconUri, getContext());
            default:
                return null;
        }
    }

    private static SearchIconItem createIconItem(Uri iconUri, String filePath, long cloudId, Uri notifyUri) {
        SearchIconItem iconItem = new SearchIconItem();
        iconItem.iconUri = iconUri.toString();
        iconItem.filePath = filePath;
        iconItem.downloadUri = getDownloadUri(cloudId);
        iconItem.notifyUri = notifyUri;
        return iconItem;
    }

    private static String getDownloadUri(long cloudId) {
        Uri uri = CloudUriAdapter.getDownloadUri(cloudId);
        return uri == null ? null : uri.toString();
    }
}

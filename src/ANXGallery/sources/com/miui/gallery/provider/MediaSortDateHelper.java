package com.miui.gallery.provider;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.cloudcontrol.FeatureStatusObserver;
import com.miui.gallery.cloudcontrol.strategies.AlbumSortDateStrategy;
import com.miui.gallery.preference.GalleryPreferences.Album;
import com.miui.gallery.provider.GalleryContract.Cloud;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class MediaSortDateHelper {
    private static SortDateProvider sSortDateProvider = null;

    public interface SortDateProvider {
        List<Long> getAlbumIdsBySortDate(SortDate sortDate);

        List<String> getAlbumPathsBySortDate(SortDate sortDate);

        SortDate getDefaultSortDate();

        SortDate getSortDateByAlbumPath(String str);
    }

    private static class CacheBackedSortDateProvider implements SortDateProvider {
        private static final SortDate DEFAULT_SORT_DATE = SortDate.CREATE_TIME;
        private FeatureStatusObserver mFeatureStatusObserver;
        private Set<Long> mSortByModifyAlbumIds;
        private Set<String> mSortByModifyAlbumPaths = Album.getCachedSortByModifyAlbumPaths();

        CacheBackedSortDateProvider() {
            Set<String> ids = Album.getCachedSortByModifyAlbumIds();
            if (BaseMiscUtil.isValid(ids)) {
                this.mSortByModifyAlbumIds = new HashSet(ids.size());
                for (String id : ids) {
                    this.mSortByModifyAlbumIds.add(Long.valueOf(id));
                }
            }
            this.mFeatureStatusObserver = new FeatureStatusObserver() {
                public void onStatusChange(String featureName, Status oldStatus, Status newStatus) {
                    ThreadManager.getMiscPool().submit(new Job<Void>() {
                        public Void run(JobContext jc) {
                            CacheBackedSortDateProvider.updateCacheInfo();
                            return null;
                        }
                    });
                    if (CacheBackedSortDateProvider.this.mFeatureStatusObserver != null) {
                        CloudControlManager.getInstance().unregisterStatusObserver("album-sort-date", CacheBackedSortDateProvider.this.mFeatureStatusObserver);
                        CacheBackedSortDateProvider.this.mFeatureStatusObserver = null;
                    }
                }
            };
            CloudControlManager.getInstance().registerStatusObserver("album-sort-date", this.mFeatureStatusObserver);
        }

        public SortDate getSortDateByAlbumPath(String albumPath) {
            if (!BaseMiscUtil.isValid(this.mSortByModifyAlbumPaths) || TextUtils.isEmpty(albumPath)) {
                return DEFAULT_SORT_DATE;
            }
            return this.mSortByModifyAlbumPaths.contains(albumPath.toLowerCase()) ? SortDate.MODIFY_TIME : DEFAULT_SORT_DATE;
        }

        public List<String> getAlbumPathsBySortDate(SortDate sortDate) {
            if (sortDate == SortDate.MODIFY_TIME && BaseMiscUtil.isValid(this.mSortByModifyAlbumPaths)) {
                return new ArrayList(this.mSortByModifyAlbumPaths);
            }
            return new ArrayList();
        }

        public List<Long> getAlbumIdsBySortDate(SortDate sortDate) {
            if (sortDate == SortDate.MODIFY_TIME && BaseMiscUtil.isValid(this.mSortByModifyAlbumIds)) {
                return new ArrayList(this.mSortByModifyAlbumIds);
            }
            return new ArrayList();
        }

        public SortDate getDefaultSortDate() {
            return DEFAULT_SORT_DATE;
        }

        private static void updateCacheInfo() {
            AlbumSortDateStrategy sortDateStrategy = CloudControlStrategyHelper.getAlbumSortDateStrategy();
            if (sortDateStrategy == null) {
                Album.setCachedSortByModifyAlbumPaths(null);
                return;
            }
            HashSet<String> cachePathSet = new HashSet(sortDateStrategy.getAlbumPathsBySortDate(com.miui.gallery.cloudcontrol.strategies.AlbumSortDateStrategy.SortDate.DATE_MODIFIED));
            Album.setCachedSortByModifyAlbumPaths(cachePathSet);
            HashSet<String> cacheIdSet = null;
            if (BaseMiscUtil.isValid(cachePathSet)) {
                String str = null;
                cacheIdSet = (HashSet) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Cloud.CLOUD_URI, new String[]{"_id"}, String.format(Locale.US, "%s AND (%s COLLATE NOCASE IN ('%s'))", new Object[]{"(serverType=0)", "localFile", TextUtils.join("', '", cachePathSet)}), null, str, new QueryHandler<HashSet<String>>() {
                    public HashSet<String> handle(Cursor cursor) {
                        if (cursor == null || !cursor.moveToFirst()) {
                            return null;
                        }
                        HashSet<String> ids = new HashSet(cursor.getCount());
                        do {
                            ids.add(cursor.getString(0));
                        } while (cursor.moveToNext());
                        return ids;
                    }
                });
            }
            Album.setCachedSortByModifyAlbumIds(cacheIdSet);
        }
    }

    public enum SortDate {
        CREATE_TIME,
        MODIFY_TIME
    }

    public static SortDateProvider getSortDateProvider() {
        if (sSortDateProvider == null) {
            synchronized (MediaSortDateHelper.class) {
                if (sSortDateProvider == null) {
                    sSortDateProvider = createSortDateProvider();
                }
            }
        }
        return sSortDateProvider;
    }

    private static SortDateProvider createSortDateProvider() {
        return new CacheBackedSortDateProvider();
    }
}

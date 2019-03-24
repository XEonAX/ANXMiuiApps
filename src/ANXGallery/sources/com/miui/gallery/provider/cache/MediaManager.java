package com.miui.gallery.provider.cache;

import android.content.ContentValues;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import com.miui.gallery.assistant.cache.ImageFeatureCacheManager;
import com.miui.gallery.assistant.model.TinyImageFeature;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.preference.GalleryPreferences.HomePage;
import com.miui.gallery.provider.AlbumManager;
import com.miui.gallery.provider.GalleryDBHelper;
import com.miui.gallery.provider.MediaSortDateHelper;
import com.miui.gallery.provider.MediaSortDateHelper.SortDate;
import com.miui.gallery.provider.cache.MediaItem.Generator;
import com.miui.gallery.provider.cache.MediaItem.QueryFactory;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.DebugUtil;
import com.miui.gallery.util.GalleryDateUtils;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import miui.provider.ExtraTelephony.DeletableSyncColumns;

public class MediaManager extends CacheManager<MediaItem> {
    private static Comparator<MediaItem> sFeatureComparator;
    private static Comparator<MediaItem> sTimeComparator;
    private AlbumDelegate mAlbumDelegate;
    private FavoritesDelegate mFavoritesDelegate;
    private String mFirstPartIds;
    private CountDownLatch mFullLoadDoneSignal;
    private final ArrayList<InitializeListener> mInitializeListeners;
    private volatile boolean mInitialized;
    private volatile boolean mIsFullLoadDone;
    private volatile boolean mIsLoadStarted;
    private volatile boolean mIsMinimumLoadDone;
    private final Object mMinimumLoadLock;

    public interface InitializeListener {
        void onProgressUpdate();
    }

    private static class Group {
        int count;
        List<String> itemLocations;
        int start;
        String validLocation;

        private Group() {
            this.itemLocations = new LinkedList();
        }

        /* synthetic */ Group(AnonymousClass1 x0) {
            this();
        }
    }

    private class InitializeTask implements Runnable {
        private SQLiteOpenHelper mDBHelper;

        public InitializeTask(SQLiteOpenHelper DBHelper) {
            this.mDBHelper = DBHelper;
        }

        public void run() {
            Log.d(".provider.cache.MediaManager", "acquire initialize lock");
            try {
                Log.d(".provider.cache.MediaManager", "start initialize");
                SQLiteDatabase database = this.mDBHelper.getReadableDatabase();
                lockedLoadMinimumPart(database);
                Process.setThreadPriority(10);
                loadFullPart(database);
                MediaManager.this.mInitialized = true;
                MediaManager.this.mIsFullLoadDone = true;
                MediaManager.this.mFullLoadDoneSignal.countDown();
                synchronized (MediaManager.this.mInitializeListeners) {
                    MediaManager.this.mInitializeListeners.clear();
                }
            } catch (Throwable th) {
                MediaManager.this.mIsFullLoadDone = true;
                MediaManager.this.mFullLoadDoneSignal.countDown();
                synchronized (MediaManager.this.mInitializeListeners) {
                    MediaManager.this.mInitializeListeners.clear();
                }
            }
        }

        private void lockedLoadMinimumPart(SQLiteDatabase db) {
            synchronized (MediaManager.this.mMinimumLoadLock) {
                try {
                    Log.d(".provider.cache.MediaManager", "read albums");
                    MediaManager.this.mAlbumDelegate.load(db);
                    MediaManager.this.mFavoritesDelegate.load(db);
                    MediaManager.this.mFirstPartIds = HomePage.getHomePageImageIds();
                    loadMinimumPart(db);
                    MediaManager.this.mIsMinimumLoadDone = true;
                    MediaManager.this.mMinimumLoadLock.notifyAll();
                } catch (Throwable th) {
                    MediaManager.this.mIsMinimumLoadDone = true;
                    MediaManager.this.mMinimumLoadLock.notifyAll();
                }
            }
        }

        private void loadMinimumPart(SQLiteDatabase db) {
            Log.d(".provider.cache.MediaManager", "read first part");
            long start = System.currentTimeMillis();
            try {
                String selection;
                if (TextUtils.isEmpty(MediaManager.this.mFirstPartIds)) {
                    selection = "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2)";
                } else {
                    selection = String.format("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2) AND _id IN (%s)", new Object[]{MediaManager.this.mFirstPartIds});
                }
                Cursor cursor = db.query("cloud", MediaManager.this.mGenerator.getProjection(), selection, null, null, null, getLoadSortBy() + " DESC", String.valueOf(128));
                if (cursor == null) {
                    Log.e(".provider.cache.MediaManager", "fill provider failed with a null cursor");
                }
                try {
                    List<MediaItem> items = new ArrayList(64);
                    while (cursor.moveToNext()) {
                        items.add(MediaManager.this.mGenerator.from(cursor));
                    }
                    publishResult(items);
                    Log.d(".provider.cache.MediaManager", "load %d item for the first time, costs %dms", Integer.valueOf(cursor.getCount()), Long.valueOf(System.currentTimeMillis() - start));
                } finally {
                    cursor.close();
                }
            } catch (SQLiteException e) {
                Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
                params.put("dbversion", String.valueOf(db.getVersion()));
                params.put("exception", e.getMessage() + " : " + e.getCause());
                BaseSamplingStatHelper.recordErrorEvent("db_helper", "db_mediamanager_load", params);
                DebugUtil.exportDB(false);
                GalleryDBHelper.getInstance().deleteDatabase();
                throw e;
            }
        }

        private void loadFullPart(SQLiteDatabase database) {
            String selection;
            String orderBy;
            Log.d(".provider.cache.MediaManager", "start load second part");
            long begin = System.currentTimeMillis();
            ArrayList<MediaItem> list = new ArrayList();
            if (TextUtils.isEmpty(MediaManager.this.mFirstPartIds)) {
                selection = "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2)";
                orderBy = getLoadSortBy() + " DESC LIMIT -1 OFFSET " + 128;
            } else {
                selection = String.format("(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2) AND _id NOT IN (%s)", new Object[]{MediaManager.this.mFirstPartIds});
                orderBy = getLoadSortBy();
            }
            SQLiteDatabase sQLiteDatabase = database;
            Cursor cursor = sQLiteDatabase.query("cloud", MediaManager.this.mGenerator.getProjection(), selection, null, null, null, orderBy, null);
            if (cursor != null) {
                try {
                    list.ensureCapacity(4096);
                    int count = 0;
                    while (cursor.moveToNext()) {
                        list.add(MediaManager.this.mGenerator.from(cursor));
                        count++;
                        if (count == 4096 || cursor.isLast()) {
                            count = 0;
                            publishResult(list);
                            list.clear();
                        }
                    }
                    Log.d(".provider.cache.MediaManager", "load second part cost: %d. current position = %d", Long.valueOf(System.currentTimeMillis() - begin), Integer.valueOf(cursor.getPosition()));
                } finally {
                    cursor.close();
                }
            }
        }

        private void publishResult(List<MediaItem> list) {
            synchronized (MediaManager.this.mModifyLock) {
                for (MediaItem item : list) {
                    MediaManager.this.mCache.add(item);
                }
                notifyProgressUpdate();
            }
        }

        private void notifyProgressUpdate() {
            synchronized (MediaManager.this.mInitializeListeners) {
                if (MediaManager.this.mInitializeListeners.size() > 0) {
                    Iterator it = MediaManager.this.mInitializeListeners.iterator();
                    while (it.hasNext()) {
                        InitializeListener listener = (InitializeListener) it.next();
                        if (listener != null) {
                            listener.onProgressUpdate();
                        }
                    }
                }
            }
        }

        private String getLoadSortBy() {
            if (!BaseMiscUtil.isValid(MediaSortDateHelper.getSortDateProvider().getAlbumIdsBySortDate(SortDate.MODIFY_TIME))) {
                return "mixedDateTime";
            }
            return String.format(Locale.US, "(case when %s in (%s) then %s else %s end)", new Object[]{"localGroupId", TextUtils.join(",", MediaSortDateHelper.getSortDateProvider().getAlbumIdsBySortDate(SortDate.MODIFY_TIME)), "dateModified", "mixedDateTime"});
        }
    }

    private static class SingletonHolder {
        static final MediaManager INSTANCE = new MediaManager();
    }

    /* synthetic */ MediaManager(AnonymousClass1 x0) {
        this();
    }

    private MediaManager() {
        this.mIsLoadStarted = false;
        this.mIsFullLoadDone = false;
        this.mMinimumLoadLock = new Object();
        this.mIsMinimumLoadDone = false;
        this.mInitialized = false;
        this.mFullLoadDoneSignal = new CountDownLatch(1);
        this.mInitializeListeners = new ArrayList();
        this.mAlbumDelegate = new AlbumDelegate();
        this.mFavoritesDelegate = new FavoritesDelegate();
        this.mCache = new LinkedList();
        this.mGenerator = new Generator(this.mAlbumDelegate, this.mFavoritesDelegate);
        this.mQueryFactory = new QueryFactory();
    }

    public static MediaManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public synchronized void load(SQLiteOpenHelper helper) {
        if (!(this.mIsLoadStarted || this.mIsFullLoadDone)) {
            this.mIsLoadStarted = true;
            new Thread(new InitializeTask(helper)).start();
        }
    }

    public int insert(SQLiteDatabase db, String selection, String[] args) {
        SQLiteDatabase sQLiteDatabase = db;
        Cursor cursor = sQLiteDatabase.query("cloud", this.mGenerator.getProjection(), String.format("%s AND (%s)", new Object[]{"(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus='custom')) AND serverType IN (1,2)", selection}), args, null, null, null, null);
        int count = 0;
        if (cursor != null) {
            while (cursor.moveToNext()) {
                try {
                    MediaItem item = (MediaItem) this.mGenerator.from(cursor);
                    synchronized (this.mModifyLock) {
                        this.mCache.add(item);
                    }
                    count++;
                } catch (Throwable th) {
                    cursor.close();
                }
            }
            cursor.close();
        }
        return count;
    }

    public long insert(long id, ContentValues values) {
        if (isItemDeleted(values)) {
            return 0;
        }
        return super.insert(id, values);
    }

    protected ContentValues filterLogInfo(ContentValues values) {
        if (values == null) {
            return null;
        }
        ContentValues filterValues = new ContentValues(values);
        filterValues.remove("location");
        filterValues.remove("extraGPS");
        filterValues.remove("address");
        filterValues.remove("exifGPSLatitude");
        filterValues.remove("exifGPSLongitude");
        filterValues.remove("exifGPSAltitude");
        return filterValues;
    }

    public int update(String selection, String[] args, ContentValues values) {
        if (isItemDeleted(values)) {
            delete(selection, args);
        }
        return super.update(selection, args, values);
    }

    public boolean isItemDeleted(ContentValues values) {
        Integer localFlag = values.getAsInteger("localFlag");
        if (localFlag == null || !(localFlag.intValue() == 11 || localFlag.intValue() == 2)) {
            if (values.containsKey("serverStatus")) {
                String status = values.getAsString("serverStatus");
                if (DeletableSyncColumns.DELETED.equals(status) || "purged".equals(status)) {
                    Log.d(".provider.cache.MediaManager", "find a deleted server type");
                    return true;
                }
            }
            return false;
        }
        Log.d(".provider.cache.MediaManager", "find a deleted local flag");
        return true;
    }

    protected Cursor onCreateCursor(String[] projection, List<MediaItem> result, String selection, String orderBy, Bundle options) {
        AbstractCursor cursor = new RawCursor(result, projection, this.mQueryFactory.getMapper());
        if (options != null) {
            if (options.getBoolean("extra_generate_header")) {
                List<Group> groups;
                Log.d(".provider.cache.MediaManager", "caller need a header data, start generate for %d", Integer.valueOf(result.size()));
                long start = System.currentTimeMillis();
                int itemGroupBy = options.getInt("extra_media_group_by");
                if (itemGroupBy == 0) {
                    int spacePos = orderBy.indexOf(32);
                    if (spacePos <= 0) {
                        spacePos = orderBy.length();
                    }
                    String identifier = orderBy.substring(0, spacePos);
                    int orderByColumnIndex = this.mQueryFactory.getMapper().getIndex(identifier);
                    if (orderByColumnIndex < 0) {
                        throw new IllegalArgumentException(identifier + " not found");
                    }
                    final int transformedColumn = transformOrderByColumnIndex(orderByColumnIndex);
                    groups = generateGroup(result, new Comparator<MediaItem>() {
                        public int compare(MediaItem o1, MediaItem o2) {
                            if (o1.columnEquals(o2, transformedColumn)) {
                                return 0;
                            }
                            return o2.getAliasSortDate() - o1.getAliasSortDate();
                        }
                    });
                } else if (itemGroupBy == 1) {
                    groups = generateMonthItems(result);
                } else {
                    throw new IllegalArgumentException(String.format("unsupported group type %s", new Object[]{Integer.valueOf(itemGroupBy)}));
                }
                bindGroup(groups, cursor);
                Log.d(".provider.cache.MediaManager", "header[%d] generated cost %d", Integer.valueOf(itemGroupBy), Long.valueOf(System.currentTimeMillis() - start));
            }
        }
        return cursor;
    }

    private List<Group> generateGroup(List<MediaItem> result, Comparator<MediaItem> comparator) {
        MediaItem last = null;
        Integer count = Integer.valueOf(1);
        int index = 0;
        List<Group> groups = new LinkedList();
        Group tempGroup = null;
        for (MediaItem item : result) {
            if (last == null) {
                last = item;
                tempGroup = new Group();
                tempGroup.start = index;
                tempGroup.itemLocations.add(item.getLocation());
                if (!TextUtils.isEmpty(item.getLocation())) {
                    tempGroup.validLocation = item.getLocation();
                }
            } else if (comparator.compare(item, last) == 0) {
                count = Integer.valueOf(count.intValue() + 1);
                tempGroup.itemLocations.add(item.getLocation());
                if (TextUtils.isEmpty(tempGroup.validLocation) && !TextUtils.isEmpty(item.getLocation())) {
                    tempGroup.validLocation = item.getLocation();
                }
            } else {
                tempGroup.count = count.intValue();
                groups.add(tempGroup);
                tempGroup = new Group();
                tempGroup.start = index;
                tempGroup.itemLocations.add(item.getLocation());
                if (!TextUtils.isEmpty(item.getLocation())) {
                    tempGroup.validLocation = item.getLocation();
                }
                count = Integer.valueOf(1);
                last = item;
            }
            index++;
            if (index == result.size()) {
                tempGroup.count = count.intValue();
                groups.add(tempGroup);
            }
        }
        return groups;
    }

    private void bindGroup(List<Group> groups, Cursor bindCursor) {
        ArrayList<Integer> counts = new ArrayList(groups.size());
        ArrayList<Integer> startPos = new ArrayList(groups.size());
        ArrayList<String> locations = new ArrayList(groups.size());
        for (Group group : groups) {
            startPos.add(Integer.valueOf(group.start));
            counts.add(Integer.valueOf(group.count));
            locations.add(LocationManager.getInstance().generateTitleLine(group.itemLocations));
        }
        Bundle extras = bindCursor.getExtras();
        if (extras == null || extras == Bundle.EMPTY) {
            extras = new Bundle();
            bindCursor.setExtras(extras);
        }
        extras.putIntegerArrayList("extra_timeline_item_count_in_group", counts);
        extras.putIntegerArrayList("extra_timeline_group_start_pos", startPos);
        extras.putStringArrayList("extra_timeline_group_start_locations", locations);
    }

    private boolean isValidLocationGroup(Group locationGroup) {
        return locationGroup.count >= 10 && !TextUtils.isEmpty(locationGroup.validLocation);
    }

    private int locationCompare(String location1, String location2) {
        String city1 = LocationManager.getInstance().subToCity(location1);
        String city2 = LocationManager.getInstance().subToCity(location2);
        if (TextUtils.isEmpty(city1) && TextUtils.isEmpty(city2)) {
            return 0;
        }
        if (TextUtils.isEmpty(city1) || TextUtils.isEmpty(city2)) {
            return 1;
        }
        if (city1.contains(city2) || city2.contains(city1)) {
            return 0;
        }
        return 1;
    }

    /* JADX WARNING: Missing block: B:40:0x024b, code:
            if (locationCompare(r37.validLocation, r28.validLocation) == 0) goto L_0x024d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private List<Group> generateMonthItems(List<MediaItem> items) {
        Comparator<MediaItem> anonymousClass2 = new Comparator<MediaItem>() {
            public int compare(MediaItem o1, MediaItem o2) {
                if (GalleryDateUtils.isSameMonth(o1.getAliasSortDate(), o2.getAliasSortDate())) {
                    return 0;
                }
                return Long.compare(o2.getAliasSortTime(), o1.getAliasSortTime());
            }
        };
        List<Group> groups = new LinkedList();
        long start = System.currentTimeMillis();
        List<Group> monthGroups = generateGroup(items, anonymousClass2);
        Log.d(".provider.cache.MediaManager", "generate date groups cost %d", Long.valueOf(System.currentTimeMillis() - start));
        anonymousClass2 = new Comparator<MediaItem>() {
            public int compare(MediaItem o1, MediaItem o2) {
                if (TextUtils.isEmpty(o1.getLocation()) && TextUtils.isEmpty(o2.getLocation())) {
                    return o2.getAliasSortDate() - o1.getAliasSortDate();
                }
                return MediaManager.this.locationCompare(o1.getLocation(), o2.getLocation());
            }
        };
        start = System.currentTimeMillis();
        for (Group monthGroup : monthGroups) {
            Group unCategorized = null;
            Group lastValidGroup = null;
            int batchDateIndex = groups.size();
            for (Group locationGroup : generateGroup(items.subList(monthGroup.start, monthGroup.start + monthGroup.count), anonymousClass2)) {
                lastValidGroup = groups.size() > batchDateIndex ? (Group) groups.get(groups.size() - 1) : null;
                locationGroup.start += monthGroup.start;
                if (unCategorized != null) {
                    if (!TextUtils.isEmpty(unCategorized.validLocation)) {
                        if (lastValidGroup != null) {
                            if (locationCompare(unCategorized.validLocation, lastValidGroup.validLocation) == 0) {
                                lastValidGroup.count += unCategorized.count;
                                lastValidGroup.itemLocations.addAll(unCategorized.itemLocations);
                                unCategorized = null;
                            }
                        }
                        if (lastValidGroup != null) {
                        }
                        locationGroup.start = unCategorized.start;
                        locationGroup.count += unCategorized.count;
                        locationGroup.itemLocations.addAll(0, unCategorized.itemLocations);
                        unCategorized = null;
                    }
                    if (unCategorized != null) {
                        if ((lastValidGroup != null ? Math.abs(((MediaItem) items.get((lastValidGroup.start + lastValidGroup.count) - 1)).getAliasSortTime() - ((MediaItem) items.get(unCategorized.start)).getAliasSortTime()) : Long.MAX_VALUE) <= Math.abs(((MediaItem) items.get((unCategorized.start + unCategorized.count) - 1)).getAliasSortTime() - ((MediaItem) items.get(locationGroup.start)).getAliasSortTime())) {
                            lastValidGroup.count += unCategorized.count;
                            lastValidGroup.itemLocations.addAll(unCategorized.itemLocations);
                            unCategorized = null;
                        } else {
                            locationGroup.start = unCategorized.start;
                            locationGroup.count += unCategorized.count;
                            locationGroup.itemLocations.addAll(0, unCategorized.itemLocations);
                            unCategorized = null;
                        }
                    }
                    if (isValidLocationGroup(locationGroup)) {
                        if (lastValidGroup != null) {
                            if (locationCompare(locationGroup.validLocation, lastValidGroup.validLocation) == 0) {
                                lastValidGroup.count += locationGroup.count;
                                lastValidGroup.itemLocations.addAll(locationGroup.itemLocations);
                            }
                        }
                        groups.add(locationGroup);
                    } else {
                        unCategorized = locationGroup;
                    }
                } else if (isValidLocationGroup(locationGroup)) {
                    if (lastValidGroup != null) {
                        if (locationCompare(locationGroup.validLocation, lastValidGroup.validLocation) == 0) {
                            lastValidGroup.count += locationGroup.count;
                            lastValidGroup.itemLocations.addAll(locationGroup.itemLocations);
                        }
                    }
                    groups.add(locationGroup);
                } else {
                    unCategorized = locationGroup;
                }
            }
            if (unCategorized != null) {
                if (lastValidGroup == null) {
                    groups.add(unCategorized);
                } else {
                    if (isValidLocationGroup(unCategorized)) {
                        if (locationCompare(unCategorized.validLocation, lastValidGroup.validLocation) != 0) {
                            groups.add(unCategorized);
                        }
                    }
                    lastValidGroup.count += unCategorized.count;
                    lastValidGroup.itemLocations.addAll(unCategorized.itemLocations);
                }
            }
        }
        Log.d(".provider.cache.MediaManager", "generate location groups cost %d", Long.valueOf(System.currentTimeMillis() - start));
        start = System.currentTimeMillis();
        List<MediaItem> filteredItems = new LinkedList();
        anonymousClass2 = new Comparator<MediaItem>() {
            public int compare(MediaItem o1, MediaItem o2) {
                if (GalleryDateUtils.isSameDay(o1.getAliasSortDate(), o2.getAliasSortDate())) {
                    return 0;
                }
                return o2.getAliasSortDate() - o1.getAliasSortDate();
            }
        };
        Log.d(".provider.cache.MediaManager", "image feature initialized %s", Boolean.valueOf(ImageFeatureCacheManager.getInstance().isInitialized()));
        for (Group group : groups) {
            int i;
            List<MediaItem> clusterItems = new LinkedList();
            if (group.count <= 10) {
                clusterItems.addAll(items.subList(group.start, group.start + group.count));
            } else if (ImageFeatureCacheManager.getInstance().isInitialized()) {
                long clusterGroupId = -1;
                double clusterBestScore = -1.0d;
                int bestScoreIndex = -1;
                for (i = group.start; i < group.start + group.count; i++) {
                    MediaItem item = (MediaItem) items.get(i);
                    TinyImageFeature feature = ImageFeatureCacheManager.getInstance().getImageFeature(item.getId());
                    if (feature == null) {
                        clusterItems.add(item);
                    } else if (feature.getClusterGroupId() != clusterGroupId) {
                        if (bestScoreIndex != -1) {
                            clusterItems.add(items.get(bestScoreIndex));
                        }
                        clusterGroupId = feature.getClusterGroupId();
                        clusterBestScore = feature.getScore();
                        bestScoreIndex = i;
                    } else if (feature.getScore() > clusterBestScore) {
                        clusterBestScore = feature.getScore();
                        bestScoreIndex = i;
                    }
                }
                if (bestScoreIndex != -1) {
                    clusterItems.add(items.get(bestScoreIndex));
                }
            } else {
                clusterItems.addAll(items.subList(group.start, group.start + group.count));
            }
            int beforeSize = filteredItems.size();
            if (clusterItems.size() > 40) {
                float ratio = 40.0f / ((float) clusterItems.size());
                int num = 0;
                for (Group dayGroup : generateGroup(clusterItems, anonymousClass2)) {
                    int count = (int) Math.ceil((double) (((float) dayGroup.count) * ratio));
                    if (count > 0) {
                        List<MediaItem> bestSub = filterBestItems(clusterItems.subList(dayGroup.start, dayGroup.start + dayGroup.count), count);
                        num += bestSub.size();
                        filteredItems.addAll(bestSub);
                        if (num >= 40) {
                            for (i = 0; i < num - 40; i++) {
                                filteredItems.remove(filteredItems.size() - 1);
                            }
                        }
                    }
                }
            } else {
                filteredItems.addAll(clusterItems);
            }
            int afterSize = filteredItems.size();
            group.start = beforeSize;
            group.count = afterSize - beforeSize;
        }
        Log.d(".provider.cache.MediaManager", "filter items cost %d", Long.valueOf(System.currentTimeMillis() - start));
        items.clear();
        items.addAll(filteredItems);
        return groups;
    }

    private static Comparator<MediaItem> getFeatureComparator() {
        if (sFeatureComparator == null) {
            sFeatureComparator = new Comparator<MediaItem>() {
                public int compare(MediaItem o1, MediaItem o2) {
                    TinyImageFeature feature1 = ImageFeatureCacheManager.getInstance().getImageFeature(o1.getId());
                    TinyImageFeature feature2 = ImageFeatureCacheManager.getInstance().getImageFeature(o2.getId());
                    if (feature1 == null && feature2 != null) {
                        return 1;
                    }
                    if (feature1 != null && feature2 == null) {
                        return -1;
                    }
                    if (feature1 == null || feature2 == null) {
                        return 0;
                    }
                    return Double.compare(feature2.getScore(), feature1.getScore());
                }
            };
        }
        return sFeatureComparator;
    }

    private static Comparator<MediaItem> getTimeComparator() {
        if (sTimeComparator == null) {
            sTimeComparator = new Comparator<MediaItem>() {
                public int compare(MediaItem o1, MediaItem o2) {
                    return Long.compare(o2.getAliasSortTime(), o1.getAliasSortTime());
                }
            };
        }
        return sTimeComparator;
    }

    private static List<MediaItem> filterBestItems(List<MediaItem> src, int targetNum) {
        Collections.sort(src, getFeatureComparator());
        List<MediaItem> tempDst = src.subList(0, targetNum);
        Collections.sort(tempDst, getTimeComparator());
        return tempDst;
    }

    private int transformOrderByColumnIndex(int orderByColumnIndex) {
        switch (orderByColumnIndex) {
            case 18:
                return 19;
            case 30:
                return 31;
            case 36:
                return 37;
            default:
                return orderByColumnIndex;
        }
    }

    public void updateAttributes(long albumId, long attributeBit, boolean set, boolean manual) {
        Log.d(".provider.cache.MediaManager", "updating attributesBit[%d] for album[%d] to %s", Long.valueOf(attributeBit), Long.valueOf(albumId), Boolean.valueOf(set));
        long attributes = this.mAlbumDelegate.queryAttributes(albumId).longValue();
        this.mAlbumDelegate.update(albumId, ((-1 ^ AlbumManager.packageAttributeBit(attributeBit, true, true)) & attributes) | AlbumManager.packageAttributeBit(attributeBit, set, manual));
    }

    public void updateAttributes(long albumId, long attributes) {
        Log.d(".provider.cache.MediaManager", "update album[%d]'s attributes to %d", Long.valueOf(albumId), Long.valueOf(attributes));
        this.mAlbumDelegate.update(albumId, attributes);
    }

    public void insertAttributes(long albumId, long attributes) {
        Log.d(".provider.cache.MediaManager", "insert attributes[%d] for album[%d]", Long.valueOf(attributes), Long.valueOf(albumId));
        this.mAlbumDelegate.insert(albumId, attributes);
    }

    public void deleteAttributes(long albumId) {
        this.mAlbumDelegate.delete(albumId);
    }

    public void insertToFavorites(String sha1) {
        this.mFavoritesDelegate.insertToFavorites(sha1);
    }

    public void removeFromFavorites(String sha1) {
        this.mFavoritesDelegate.removeFromFavorites(sha1);
    }

    public boolean initialized() {
        if (this.mIsFullLoadDone) {
            return this.mInitialized;
        }
        Log.d(".provider.cache.MediaManager", "not initialized, waiting lock from: %s", TextUtils.join("\n\t", Thread.currentThread().getStackTrace()));
        long start = System.currentTimeMillis();
        try {
            this.mFullLoadDoneSignal.await();
            Log.d(".provider.cache.MediaManager", "wait full load done costs %d ms", Long.valueOf(System.currentTimeMillis() - start));
        } catch (Throwable e) {
            Log.e(".provider.cache.MediaManager", e);
        }
        Log.d(".provider.cache.MediaManager", "initialization finished: %b", Boolean.valueOf(this.mInitialized));
        return this.mInitialized;
    }

    public void ensureMinimumPartDone() {
        if (!this.mIsMinimumLoadDone) {
            long start = System.currentTimeMillis();
            synchronized (this.mMinimumLoadLock) {
                if (!this.mIsMinimumLoadDone) {
                    try {
                        this.mMinimumLoadLock.wait();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            Log.d(".provider.cache.MediaManager", "wait for minimum part loading cost : %dms ", Long.valueOf(System.currentTimeMillis() - start));
        }
    }

    public void addInitializeListener(InitializeListener initializeListener) {
        if (this.mIsFullLoadDone) {
            Log.d(".provider.cache.MediaManager", "no need to add listener after full load done!");
            return;
        }
        synchronized (this.mInitializeListeners) {
            this.mInitializeListeners.add(initializeListener);
        }
    }
}

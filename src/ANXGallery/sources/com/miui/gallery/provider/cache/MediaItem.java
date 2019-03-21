package com.miui.gallery.provider.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.CursorWindow;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import com.miui.gallery.provider.MediaSortDateHelper.SortDate;
import com.miui.gallery.provider.cache.CacheItem.ColumnMapper;
import com.miui.gallery.provider.cache.CacheItem.Merger;
import com.miui.gallery.provider.cache.Filter.Comparator;
import com.miui.gallery.provider.cache.Filter.CompareFilter;
import com.miui.gallery.sdk.SyncStatus;
import com.miui.gallery.sdk.uploadstatus.ItemType;
import com.miui.gallery.sdk.uploadstatus.SyncProxy;
import com.miui.gallery.sdk.uploadstatus.UploadStatusItem;
import com.miui.gallery.util.GalleryDateUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.Numbers;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class MediaItem implements CacheItem {
    private static final HashMap<String, Integer> PROJECTION = new HashMap();
    private Long mAlbumId;
    private String mAlbumServerId;
    private int mAliasCreateDate;
    private int mAliasModifyDate;
    private int mAliasSortDate;
    private long mAliasSortTime;
    private String mCreatorId;
    private long mDateModified;
    private AlbumDelegate mDelegate;
    private String mDescription;
    private Long mDuration;
    private FavoritesDelegate mFavoritesDelegate;
    private String mFilePath;
    private Integer mHeight;
    private long mId;
    private Boolean mIsSyncing;
    private String mLatitude;
    private Character mLatitudeRef;
    private Long mLocalFlag;
    private String mLocation;
    private String mLongitude;
    private Character mLongitudeRef;
    private String mMicroThumb;
    private String mMimeType;
    private long mMixedTime;
    private Integer mOrientation;
    private byte[] mSecretKey;
    private String mServerId;
    private String mServerStatus;
    private Long mServerTag;
    private String mSha1;
    private Long mSize;
    private Long mSpecialTypeFlags;
    private String mThumbnail;
    private String mTitle;
    private Integer mType;
    private Integer mWidth;

    public static class Generator implements com.miui.gallery.provider.cache.CacheItem.Generator<MediaItem> {
        private static final Map<String, Integer> COLUMN_MAP = new ArrayMap(PROJECTION.length);
        private static final ColumnMapper COLUMN_MAPPER = new ColumnMapper() {
            public int getIndex(String column) {
                Integer index = (Integer) Generator.COLUMN_MAP.get(column);
                if (index != null) {
                    return index.intValue();
                }
                Log.w(".provider.cache.MediaItem", "column '%s' not found", column);
                return -1;
            }
        };
        private static final String[] PROJECTION = new String[]{"_id", "sha1", "microthumbfile", "thumbnailFile", "localFile", "serverType", "title", "duration", "description", "location", "size", "localGroupId", "mimeType", "exifGPSLatitude", "exifGPSLatitudeRef", "exifGPSLongitude", "exifGPSLongitudeRef", "secretKey", "localFlag", "mixedDateTime", "exifImageWidth", "exifImageLength", "serverStatus", "dateModified", "creatorId", "serverTag", "serverId", "groupId", "specialTypeFlags", "exifOrientation"};
        private AlbumDelegate mAlbumDelegate;
        private FavoritesDelegate mFavoritesDelegate;

        private static class CloudIdFilter extends CompareFilter<MediaItem> {
            private static final Pattern ID_PATTERN = Pattern.compile("\\d+");
            private long mId;
            private Set<Long> mIdSet;

            public CloudIdFilter(Comparator comparator, String argument) {
                super(0, comparator, argument);
                if (comparator == Comparator.EQUALS) {
                    this.mId = Long.parseLong(argument);
                } else if (comparator == Comparator.IN) {
                    this.mIdSet = new ArraySet();
                    Matcher matcher = ID_PATTERN.matcher(argument);
                    while (matcher.find()) {
                        this.mIdSet.add(Long.valueOf(Long.parseLong(matcher.group())));
                    }
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && item.mId == this.mId) {
                    return item;
                }
                return (this.mComparator == Comparator.IN && this.mIdSet.contains(Long.valueOf(item.mId))) ? item : null;
            }
        }

        public Generator(AlbumDelegate albumDelegate, FavoritesDelegate favoritesDelegate) {
            this.mAlbumDelegate = albumDelegate;
            this.mFavoritesDelegate = favoritesDelegate;
        }

        public MediaItem from(Cursor cursor) {
            MediaItem item = new MediaItem();
            item.mId = cursor.getLong(0);
            item.mSha1 = ParseUtils.getString(cursor, 1);
            item.mAlbumId = ParseUtils.getLong(cursor, 11);
            item.mMicroThumb = ParseUtils.getString(cursor, 2);
            item.mThumbnail = ParseUtils.getString(cursor, 3);
            item.mFilePath = ParseUtils.getString(cursor, 4);
            item.mType = ParseUtils.getInt(cursor, 5);
            item.mTitle = ParseUtils.getString(cursor, 6);
            item.mDuration = ParseUtils.getLong(cursor, 7);
            item.mDescription = ParseUtils.getString(cursor, 8);
            item.mLocation = ParseUtils.getString(cursor, 9);
            item.mSize = Long.valueOf(cursor.getLong(10));
            item.mMimeType = ParseUtils.getString(cursor, 12);
            item.mLatitude = ParseUtils.getString(cursor, 13);
            item.mLatitudeRef = ParseUtils.getChar(cursor, 14);
            item.mLongitude = ParseUtils.getString(cursor, 15);
            item.mLongitudeRef = ParseUtils.getChar(cursor, 16);
            item.mSecretKey = ParseUtils.getBlob(cursor, 17);
            item.mLocalFlag = ParseUtils.getLong(cursor, 18);
            item.mWidth = ParseUtils.getInt(cursor, 20);
            item.mHeight = ParseUtils.getInt(cursor, 21);
            item.mServerStatus = ParseUtils.getString(cursor, 22);
            item.mMixedTime = cursor.getLong(19);
            item.mDateModified = cursor.getLong(23);
            item.mAliasCreateDate = GalleryDateUtils.format(item.mMixedTime);
            item.mCreatorId = cursor.getString(24);
            item.mDelegate = this.mAlbumDelegate;
            item.mServerTag = Long.valueOf(cursor.getLong(25));
            item.mServerId = cursor.getString(26);
            item.mAliasModifyDate = GalleryDateUtils.format(item.mDateModified);
            item.mFavoritesDelegate = this.mFavoritesDelegate;
            item.mAlbumServerId = ParseUtils.getString(cursor, 27);
            item.mSpecialTypeFlags = ParseUtils.getLong(cursor, 28);
            item.regenerateSortTimeAndDate();
            item.mOrientation = ParseUtils.getInt(cursor, 29);
            return item;
        }

        public MediaItem from(long id, ContentValues values) {
            Character ch = null;
            long j = 0;
            MediaItem item = new MediaItem();
            item.mId = id;
            item.mSha1 = values.getAsString(PROJECTION[1]);
            item.mAlbumId = values.getAsLong(PROJECTION[11]);
            item.mMicroThumb = values.getAsString(PROJECTION[2]);
            item.mThumbnail = values.getAsString(PROJECTION[3]);
            item.mFilePath = values.getAsString(PROJECTION[4]);
            item.mType = values.getAsInteger(PROJECTION[5]);
            item.mTitle = values.getAsString(PROJECTION[6]);
            item.mDuration = values.getAsLong(PROJECTION[7]);
            item.mDescription = values.getAsString(PROJECTION[8]);
            item.mLocation = values.getAsString(PROJECTION[9]);
            Long size = values.getAsLong(PROJECTION[10]);
            item.mSize = Long.valueOf(size == null ? 0 : size.longValue());
            item.mMimeType = values.getAsString(PROJECTION[12]);
            item.mLatitude = values.getAsString(PROJECTION[13]);
            String ref = values.getAsString(PROJECTION[14]);
            item.mLatitudeRef = TextUtils.isEmpty(ref) ? null : Character.valueOf(ref.charAt(0));
            item.mLongitude = values.getAsString(PROJECTION[15]);
            ref = values.getAsString(PROJECTION[16]);
            if (!TextUtils.isEmpty(ref)) {
                ch = Character.valueOf(ref.charAt(0));
            }
            item.mLongitudeRef = ch;
            item.mSecretKey = values.getAsByteArray(PROJECTION[17]);
            item.mLocalFlag = values.getAsLong(PROJECTION[18]);
            item.mWidth = values.getAsInteger(PROJECTION[20]);
            item.mHeight = values.getAsInteger(PROJECTION[21]);
            item.mServerStatus = values.getAsString(PROJECTION[22]);
            Long time = values.getAsLong(PROJECTION[19]);
            item.mMixedTime = time == null ? 0 : time.longValue();
            Long date = values.getAsLong(PROJECTION[23]);
            if (date != null) {
                j = date.longValue();
            }
            item.mDateModified = j;
            item.mAliasCreateDate = GalleryDateUtils.format(item.mMixedTime);
            item.mCreatorId = values.getAsString(PROJECTION[24]);
            item.mDelegate = this.mAlbumDelegate;
            item.mServerTag = values.getAsLong(PROJECTION[25]);
            item.mServerId = values.getAsString(PROJECTION[26]);
            item.mAliasModifyDate = GalleryDateUtils.format(item.mDateModified);
            item.mFavoritesDelegate = this.mFavoritesDelegate;
            item.mAlbumServerId = values.getAsString(PROJECTION[27]);
            item.mSpecialTypeFlags = values.getAsLong(PROJECTION[28]);
            item.regenerateSortTimeAndDate();
            item.mOrientation = values.getAsInteger(PROJECTION[29]);
            return item;
        }

        public void update(MediaItem item, ContentValues values) {
            String ref;
            boolean sortTimeRelateValuesUpdated = false;
            if (values.containsKey(PROJECTION[1])) {
                item.mSha1 = values.getAsString(PROJECTION[1]);
            }
            if (values.containsKey(PROJECTION[11])) {
                item.mAlbumId = values.getAsLong(PROJECTION[11]);
                sortTimeRelateValuesUpdated = true;
            }
            if (values.containsKey(PROJECTION[2])) {
                item.mMicroThumb = values.getAsString(PROJECTION[2]);
            }
            if (values.containsKey(PROJECTION[3])) {
                item.mThumbnail = values.getAsString(PROJECTION[3]);
            }
            if (values.containsKey(PROJECTION[4])) {
                item.mFilePath = values.getAsString(PROJECTION[4]);
            }
            if (values.containsKey(PROJECTION[5])) {
                item.mType = values.getAsInteger(PROJECTION[5]);
            }
            if (values.containsKey(PROJECTION[6])) {
                item.mTitle = values.getAsString(PROJECTION[6]);
            }
            if (values.containsKey(PROJECTION[7])) {
                item.mDuration = values.getAsLong(PROJECTION[7]);
            }
            if (values.containsKey(PROJECTION[8])) {
                item.mDescription = values.getAsString(PROJECTION[8]);
            }
            if (values.containsKey(PROJECTION[9])) {
                item.mLocation = values.getAsString(PROJECTION[9]);
            }
            if (values.containsKey(PROJECTION[10])) {
                Long size = values.getAsLong(PROJECTION[10]);
                item.mSize = Long.valueOf(size == null ? 0 : size.longValue());
            }
            if (values.containsKey(PROJECTION[12])) {
                item.mMimeType = values.getAsString(PROJECTION[12]);
            }
            if (values.containsKey(PROJECTION[13])) {
                item.mLatitude = values.getAsString(PROJECTION[13]);
            }
            if (values.containsKey(PROJECTION[14])) {
                ref = values.getAsString(PROJECTION[14]);
                item.mLatitudeRef = ref == null ? null : Character.valueOf(ref.charAt(0));
            }
            if (values.containsKey(PROJECTION[15])) {
                item.mLongitude = values.getAsString(PROJECTION[15]);
            }
            if (values.containsKey(PROJECTION[16])) {
                ref = values.getAsString(PROJECTION[16]);
                item.mLongitudeRef = ref == null ? null : Character.valueOf(ref.charAt(0));
            }
            if (values.containsKey(PROJECTION[19])) {
                Long time = values.getAsLong(PROJECTION[19]);
                item.mMixedTime = time == null ? 0 : time.longValue();
                item.mAliasCreateDate = GalleryDateUtils.format(item.mMixedTime);
                sortTimeRelateValuesUpdated = true;
            }
            if (values.containsKey(PROJECTION[17])) {
                item.mSecretKey = values.getAsByteArray(PROJECTION[17]);
            }
            if (values.containsKey(PROJECTION[18])) {
                item.mLocalFlag = values.getAsLong(PROJECTION[18]);
            }
            if (values.containsKey("sync_status")) {
                item.mIsSyncing = Boolean.valueOf(SyncStatus.valueOf(values.getAsString("sync_status")) == SyncStatus.STATUS_INIT);
            }
            if (values.containsKey(PROJECTION[20])) {
                item.mWidth = values.getAsInteger(PROJECTION[20]);
            }
            if (values.containsKey(PROJECTION[21])) {
                item.mHeight = values.getAsInteger(PROJECTION[21]);
            }
            if (values.containsKey(PROJECTION[22])) {
                item.mServerStatus = values.getAsString(PROJECTION[22]);
            }
            if (values.containsKey(PROJECTION[23])) {
                Long date = values.getAsLong(PROJECTION[23]);
                item.mDateModified = date == null ? 0 : date.longValue();
                item.mAliasModifyDate = GalleryDateUtils.format(item.mDateModified);
                sortTimeRelateValuesUpdated = true;
            }
            if (values.containsKey(PROJECTION[24])) {
                item.mCreatorId = values.getAsString(PROJECTION[24]);
            }
            if (values.containsKey(PROJECTION[25])) {
                item.mServerTag = values.getAsLong(PROJECTION[25]);
            }
            if (values.containsKey(PROJECTION[26])) {
                item.mServerId = values.getAsString(PROJECTION[26]);
            }
            if (values.containsKey(PROJECTION[27])) {
                item.mAlbumServerId = values.getAsString(PROJECTION[27]);
            }
            if (values.containsKey(PROJECTION[28])) {
                item.mSpecialTypeFlags = values.getAsLong(PROJECTION[28]);
            }
            if (sortTimeRelateValuesUpdated) {
                item.regenerateSortTimeAndDate();
            }
            if (values.containsKey(PROJECTION[29])) {
                item.mOrientation = values.getAsInteger(PROJECTION[29]);
            }
        }

        public ColumnMapper getMapper() {
            return COLUMN_MAPPER;
        }

        public CompareFilter<MediaItem> getFilter(int index, Comparator comparator, String rawArguments) {
            if (index == 0) {
                return new CloudIdFilter(comparator, rawArguments);
            }
            if (index == 1) {
                return new Sha1Filter(comparator, rawArguments);
            }
            return Filter.NOT_SUPPORTED_FILTER;
        }

        public String[] getProjection() {
            return PROJECTION;
        }

        static {
            COLUMN_MAP.put("_id", Integer.valueOf(0));
            COLUMN_MAP.put("sha1", Integer.valueOf(1));
            COLUMN_MAP.put("microthumbfile", Integer.valueOf(2));
            COLUMN_MAP.put("thumbnailFile", Integer.valueOf(3));
            COLUMN_MAP.put("localFile", Integer.valueOf(4));
            COLUMN_MAP.put("serverType", Integer.valueOf(5));
            COLUMN_MAP.put("title", Integer.valueOf(6));
            COLUMN_MAP.put("duration", Integer.valueOf(7));
            COLUMN_MAP.put("description", Integer.valueOf(8));
            COLUMN_MAP.put("location", Integer.valueOf(9));
            COLUMN_MAP.put("size", Integer.valueOf(10));
            COLUMN_MAP.put("localGroupId", Integer.valueOf(11));
            COLUMN_MAP.put("mimeType", Integer.valueOf(12));
            COLUMN_MAP.put("exifGPSLatitude", Integer.valueOf(13));
            COLUMN_MAP.put("exifGPSLatitudeRef", Integer.valueOf(14));
            COLUMN_MAP.put("exifGPSLongitude", Integer.valueOf(15));
            COLUMN_MAP.put("exifGPSLongitudeRef", Integer.valueOf(16));
            COLUMN_MAP.put("secretKey", Integer.valueOf(17));
            COLUMN_MAP.put("localFlag", Integer.valueOf(18));
            COLUMN_MAP.put("mixedDateTime", Integer.valueOf(19));
            COLUMN_MAP.put("exifImageWidth", Integer.valueOf(20));
            COLUMN_MAP.put("exifImageLength", Integer.valueOf(21));
            COLUMN_MAP.put("serverStatus", Integer.valueOf(22));
            COLUMN_MAP.put("dateModified", Integer.valueOf(23));
            COLUMN_MAP.put("creatorId", Integer.valueOf(24));
            COLUMN_MAP.put("serverTag", Integer.valueOf(25));
            COLUMN_MAP.put("serverId", Integer.valueOf(26));
            COLUMN_MAP.put("groupId", Integer.valueOf(27));
            COLUMN_MAP.put("specialTypeFlags", Integer.valueOf(28));
            COLUMN_MAP.put("exifOrientation", Integer.valueOf(29));
        }
    }

    public static class QueryFactory implements com.miui.gallery.provider.cache.CacheItem.QueryFactory<MediaItem> {
        private static final ColumnMapper COLUMN_MAPPER = new ColumnMapper() {
            public int getIndex(String column) {
                Integer index = (Integer) MediaItem.PROJECTION.get(column);
                if (index != null) {
                    return index.intValue();
                }
                Log.e(".provider.cache.MediaItem", "column '%s' not found", (Object) column);
                return -1;
            }
        };
        private static CompareFilter<MediaItem> IS_FAVORITE_FILTER = new CompareFilter<MediaItem>(33, null, null) {
            public MediaItem filter(MediaItem item) {
                return item.getAliasIsFavorite() == CacheItem.TRUE ? item : null;
            }
        };
        private static CompareFilter<MediaItem> NOT_HIDDEN_FILTER = new CompareFilter<MediaItem>(27, null, null) {
            public MediaItem filter(MediaItem item) {
                return item.getAliasHidden() == CacheItem.FALSE ? item : null;
            }
        };
        private static final Merger<MediaItem> SHA1_MERGER = new Merger<MediaItem>() {
            public MediaItem merge(MediaItem left, MediaItem right, int index) {
                return left.getAliasSyncState().longValue() < right.getAliasSyncState().longValue() ? left : right;
            }
        };
        private static CompareFilter<MediaItem> SHOW_IN_HOMEPAGE_FILTER = new CompareFilter<MediaItem>(24, null, null) {
            public MediaItem filter(MediaItem item) {
                return item.getAliasShowInHomePage() == CacheItem.TRUE ? item : null;
            }
        };

        private static class AlbumFilter extends CompareFilter<MediaItem> {
            private long mAlbumId;

            public AlbumFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mAlbumId = Long.parseLong(argument);
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && Numbers.equals(item.mAlbumId, this.mAlbumId)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_EQUALS || Numbers.equals(item.mAlbumId, this.mAlbumId)) ? null : item;
            }
        }

        private static class AlbumServerIdFilter extends CompareFilter<MediaItem> {
            private String mAlbumServerId;

            public AlbumServerIdFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mAlbumServerId = argument;
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && TextUtils.equals(item.mAlbumServerId, this.mAlbumServerId)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_EQUALS || TextUtils.equals(item.mAlbumServerId, this.mAlbumServerId)) ? null : item;
            }
        }

        private static class AliasCreateDateFilter extends CompareFilter<MediaItem> {
            private static final Pattern ID_PATTERN = Pattern.compile("\\d+");
            private int mAliasCreateDate;
            private Set<Integer> mCreateDateSet;

            public AliasCreateDateFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                if (comparator == Comparator.EQUALS) {
                    this.mAliasCreateDate = Integer.parseInt(argument);
                } else if (comparator == Comparator.IN) {
                    this.mCreateDateSet = new HashSet();
                    Matcher matcher = ID_PATTERN.matcher(argument);
                    while (matcher.find()) {
                        this.mCreateDateSet.add(Integer.valueOf(Integer.parseInt(matcher.group())));
                    }
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && item.mAliasCreateDate == this.mAliasCreateDate) {
                    return item;
                }
                return (this.mComparator == Comparator.IN && this.mCreateDateSet.contains(Integer.valueOf(item.mAliasCreateDate))) ? item : null;
            }
        }

        private static class TimeComparator implements java.util.Comparator<MediaItem> {
            protected boolean mDescent;

            public TimeComparator(boolean descent) {
                this.mDescent = descent;
            }

            public int compare(MediaItem lhs, MediaItem rhs) {
                int value = Long.compare(lhs.mMixedTime, rhs.mMixedTime);
                if (value == 0 && lhs.mDateModified != rhs.mDateModified) {
                    value = Long.compare(lhs.mDateModified, rhs.mDateModified);
                } else if (value == 0) {
                    value = Long.compare(lhs.mId, rhs.mId);
                }
                return this.mDescent ? -value : value;
            }
        }

        private static class DateModifiedComparator extends TimeComparator {
            public DateModifiedComparator(boolean descent) {
                super(descent);
            }

            public int compare(MediaItem lhs, MediaItem rhs) {
                int value = Long.compare(lhs.mDateModified, rhs.mDateModified);
                if (value == 0) {
                    return super.compare(lhs, rhs);
                }
                return this.mDescent ? -value : value;
            }
        }

        private static class IdFilter extends CompareFilter<MediaItem> {
            private static final Pattern ID_PATTERN = Pattern.compile("\\d+");
            private long mId;
            private Set<Long> mIdSet;

            public IdFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                if (comparator == Comparator.EQUALS) {
                    this.mId = Long.parseLong(argument);
                } else if (comparator == Comparator.IN) {
                    this.mIdSet = new ArraySet();
                    Matcher matcher = ID_PATTERN.matcher(argument);
                    while (matcher.find()) {
                        this.mIdSet.add(Long.valueOf(Long.parseLong(matcher.group())));
                    }
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && item.mId == this.mId) {
                    return item;
                }
                return (this.mComparator == Comparator.IN && this.mIdSet.contains(Long.valueOf(item.mId))) ? item : null;
            }
        }

        private static class LocalFileFilter extends CompareFilter<MediaItem> {
            private static final Pattern DELIMITER_PATTERN = Pattern.compile("'\\s*,\\s*'");
            private String mLocalFile;
            private Set<String> mLocalFileSet;

            public LocalFileFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                if (comparator == Comparator.EQUALS || comparator == Comparator.NOT_EQUALS) {
                    this.mLocalFile = argument;
                } else if (comparator == Comparator.IN || comparator == Comparator.NOT_IN) {
                    StringBuilder sb = new StringBuilder(argument);
                    int length = sb.length();
                    if (length <= 0 || sb.charAt(0) != '(') {
                        throw new IllegalArgumentException("argument must start with '('");
                    }
                    sb.deleteCharAt(0);
                    length--;
                    while (length > 0 && sb.charAt(0) == ' ') {
                        sb.deleteCharAt(0);
                        length--;
                    }
                    if (length > 0 && sb.charAt(0) == '\'') {
                        sb.deleteCharAt(0);
                        length--;
                    }
                    if (length <= 0 || sb.charAt(length - 1) != ')') {
                        throw new IllegalArgumentException("argument must end with ')'");
                    }
                    sb.deleteCharAt(length - 1);
                    length--;
                    while (length > 0 && sb.charAt(length - 1) == ' ') {
                        sb.deleteCharAt(length - 1);
                        length--;
                    }
                    if (length > 0 && sb.charAt(length - 1) == '\'') {
                        sb.deleteCharAt(length - 1);
                        length--;
                    }
                    this.mLocalFileSet = new HashSet();
                    if (length > 0) {
                        Collections.addAll(this.mLocalFileSet, TextUtils.split(sb.toString(), DELIMITER_PATTERN));
                    }
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && TextUtils.equals(item.mFilePath, this.mLocalFile)) {
                    return item;
                }
                if (this.mComparator == Comparator.NOT_NULL && !TextUtils.isEmpty(item.mFilePath)) {
                    return item;
                }
                if (this.mComparator == Comparator.NOT_EQUALS && !TextUtils.equals(item.mFilePath, this.mLocalFile)) {
                    return item;
                }
                if (this.mComparator == Comparator.IN && this.mLocalFileSet.contains(item.mFilePath)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_IN || this.mLocalFileSet.contains(item.mFilePath)) ? null : item;
            }
        }

        private static class LocalFlagFilter extends CompareFilter<MediaItem> {
            private int mLocalFlag;

            public LocalFlagFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mLocalFlag = Integer.parseInt(argument);
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && Numbers.equals(item.mLocalFlag, this.mLocalFlag)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_EQUALS || Numbers.equals(item.mLocalFlag, this.mLocalFlag)) ? null : item;
            }
        }

        private static class LocationFilter extends CompareFilter<MediaItem> {
            private String mLocation;

            public LocationFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mLocation = argument;
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && TextUtils.equals(item.mLocation, this.mLocation)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_NULL || item.mLocation == null) ? null : item;
            }
        }

        private static class MineTypeFilter extends CompareFilter<MediaItem> {
            private String mMineType;

            public MineTypeFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mMineType = argument;
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && TextUtils.equals(item.mMimeType, this.mMineType)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_EQUALS || TextUtils.equals(item.mMimeType, this.mMineType)) ? null : item;
            }
        }

        private static class ServerIdFilter extends CompareFilter<MediaItem> {
            private static final Pattern ID_PATTERN = Pattern.compile("[0-9]+");
            private Set<String> mIdSet;
            private String mServerId;

            public ServerIdFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                if (comparator == Comparator.EQUALS) {
                    this.mServerId = argument;
                } else if (comparator == Comparator.IN) {
                    this.mIdSet = new HashSet();
                    Matcher matcher = ID_PATTERN.matcher(argument);
                    while (matcher.find()) {
                        this.mIdSet.add(matcher.group());
                    }
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && TextUtils.equals(item.mServerId, this.mServerId)) {
                    return item;
                }
                if (this.mComparator == Comparator.IN && this.mIdSet.contains(item.mServerId)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_NULL || item.mServerId == null) ? null : item;
            }
        }

        private static class ServerTagFilter extends CompareFilter<MediaItem> {
            private long mServerTag;

            public ServerTagFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mServerTag = Long.parseLong(argument);
            }

            public MediaItem filter(MediaItem item) {
                return (this.mComparator != Comparator.GREATER_OR_EQUAL || Numbers.compare(Long.valueOf(this.mServerTag), item.mServerTag) > 0) ? null : item;
            }
        }

        private static class Sha1Filter extends CompareFilter<MediaItem> {
            private static final Pattern SHA1_PATTERN = Pattern.compile("[0-9a-fA-F]+");
            private String mSha1;
            private Set<String> mSha1Set;

            public Sha1Filter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                if (comparator == Comparator.EQUALS) {
                    this.mSha1 = argument;
                } else if (comparator == Comparator.IN) {
                    this.mSha1Set = new ArraySet();
                    Matcher matcher = SHA1_PATTERN.matcher(argument);
                    while (matcher.find()) {
                        this.mSha1Set.add(matcher.group());
                    }
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && TextUtils.equals(item.mSha1, this.mSha1)) {
                    return item;
                }
                if (this.mComparator == Comparator.IN && this.mSha1Set.contains(item.mSha1)) {
                    return item;
                }
                return (this.mComparator != Comparator.NOT_NULL || item.mSha1 == null) ? null : item;
            }
        }

        private static class SizeComparator implements java.util.Comparator<MediaItem> {
            private boolean mDescent;

            public SizeComparator(boolean descent) {
                this.mDescent = descent;
            }

            public int compare(MediaItem lhs, MediaItem rhs) {
                int result = Long.compare(lhs.mSize.longValue(), rhs.mSize.longValue());
                return this.mDescent ? -result : result;
            }
        }

        private static class SortTimeComparator extends TimeComparator {
            public SortTimeComparator(boolean descent) {
                super(descent);
            }

            public int compare(MediaItem lhs, MediaItem rhs) {
                int value = Long.compare(lhs.mAliasSortTime, rhs.mAliasSortTime);
                if (value == 0) {
                    return super.compare(lhs, rhs);
                }
                return this.mDescent ? -value : value;
            }
        }

        private static class SyncStateFilter extends CompareFilter<MediaItem> {
            private int mSyncState;

            public SyncStateFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mSyncState = Integer.parseInt(argument);
            }

            public MediaItem filter(MediaItem item) {
                return (this.mComparator == Comparator.EQUALS && ((long) this.mSyncState) == item.getAliasSyncState().longValue()) ? item : null;
            }
        }

        private static class ThumbnailFilter extends CompareFilter<MediaItem> {
            private static final Pattern THUMBNAIL_PATTERN = Pattern.compile("[0-9a-fA-F]+");
            private String mThumbnail;

            public ThumbnailFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                if (comparator == Comparator.EQUALS || comparator == Comparator.NOT_EQUALS) {
                    this.mThumbnail = argument;
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.EQUALS && TextUtils.equals(item.mThumbnail, this.mThumbnail)) {
                    return item;
                }
                if (this.mComparator != Comparator.NOT_NULL || item.mThumbnail == null) {
                    return (this.mComparator != Comparator.NOT_EQUALS || TextUtils.equals(item.mThumbnail, this.mThumbnail)) ? null : item;
                } else {
                    return item;
                }
            }
        }

        private static class TitleComparator implements java.util.Comparator<MediaItem> {
            private boolean mDescent;

            public TitleComparator(boolean descent) {
                this.mDescent = descent;
            }

            public int compare(MediaItem lhs, MediaItem rhs) {
                int result;
                if (lhs.mTitle != null && rhs.mTitle != null) {
                    result = lhs.mTitle.compareTo(rhs.mTitle);
                } else if (lhs.mTitle != null) {
                    result = 1;
                } else if (rhs.mTitle == null) {
                    return 0;
                } else {
                    result = -1;
                }
                return this.mDescent ? -result : result;
            }
        }

        private static class TitleFilter extends CompareFilter<MediaItem> {
            private int mFilterType = -1;

            public TitleFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                if (this.mArgument.startsWith("PANO")) {
                    this.mFilterType = 1;
                } else if (this.mArgument.startsWith("Screenshot")) {
                    this.mFilterType = 2;
                }
            }

            public MediaItem filter(MediaItem item) {
                if (this.mComparator == Comparator.LIKE && this.mFilterType > 0) {
                    switch (this.mFilterType) {
                        case 1:
                            if (isPanoItem(item)) {
                                return item;
                            }
                            return null;
                        case 2:
                            if (isScreenshotItem(item)) {
                                return item;
                            }
                            return null;
                    }
                }
                return null;
            }

            private boolean isScreenshotItem(MediaItem item) {
                return (item == null || item.mTitle == null || !item.mTitle.startsWith("Screenshot")) ? false : true;
            }

            private boolean isPanoItem(MediaItem item) {
                return isPanoItemSize(item) && isPanoItemNamed(item) && !isSecretAlbumItem(item);
            }

            private boolean isPanoItemSize(MediaItem item) {
                if (item == null || item.mWidth == null || item.mHeight == null || item.mWidth.intValue() <= 1080 || item.mHeight.intValue() == 0 || ((float) item.mWidth.intValue()) / ((float) item.mHeight.intValue()) <= 3.0f) {
                    return false;
                }
                return true;
            }

            private boolean isPanoItemNamed(MediaItem item) {
                return (item == null || item.mTitle == null || !item.mTitle.startsWith("PANO")) ? false : true;
            }

            private boolean isSecretAlbumItem(MediaItem item) {
                return (item == null || item.mAlbumId == null || item.mAlbumId.longValue() != -1000) ? false : true;
            }
        }

        private static class TypeFilter extends CompareFilter<MediaItem> {
            private int mType;

            public TypeFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
                this.mType = Integer.parseInt(argument);
            }

            public MediaItem filter(MediaItem item) {
                return (this.mComparator == Comparator.EQUALS && Numbers.equals(item.mType, this.mType)) ? item : null;
            }
        }

        public ColumnMapper getMapper() {
            return COLUMN_MAPPER;
        }

        public Merger<MediaItem> getMerger(int index) {
            if (index == 1) {
                return SHA1_MERGER;
            }
            return null;
        }

        public java.util.Comparator<MediaItem> getComparator(int index, boolean desc) {
            if (index == 18) {
                return new TimeComparator(desc);
            }
            if (index == 7) {
                return new TitleComparator(desc);
            }
            if (index == 10) {
                return new SizeComparator(desc);
            }
            if (index == 30) {
                return new DateModifiedComparator(desc);
            }
            if (index == 36) {
                return new SortTimeComparator(desc);
            }
            return null;
        }

        public CompareFilter<MediaItem> getFilter(int index, Comparator comparator, String rawArguments) {
            if (index == 24) {
                return SHOW_IN_HOMEPAGE_FILTER;
            }
            if (index == 0) {
                return new IdFilter(comparator, rawArguments);
            }
            if (index == 2) {
                return new AlbumFilter(comparator, rawArguments);
            }
            if (index == 6) {
                return new TypeFilter(comparator, rawArguments);
            }
            if (index == 1) {
                return new Sha1Filter(comparator, rawArguments);
            }
            if (index == 20) {
                return new SyncStateFilter(comparator, rawArguments);
            }
            if (index == 7) {
                return new TitleFilter(comparator, rawArguments);
            }
            if (index == 5) {
                return new LocalFileFilter(comparator, rawArguments);
            }
            if (index == 4) {
                return new ThumbnailFilter(comparator, rawArguments);
            }
            if (index == 26) {
                return new LocalFlagFilter(comparator, rawArguments);
            }
            if (index == 27) {
                return NOT_HIDDEN_FILTER;
            }
            if (index == 28) {
                return new ServerTagFilter(comparator, rawArguments);
            }
            if (index == 29) {
                return new ServerIdFilter(comparator, rawArguments);
            }
            if (index == 19) {
                return new AliasCreateDateFilter(comparator, rawArguments);
            }
            if (index == 33) {
                return IS_FAVORITE_FILTER;
            }
            if (index == 11) {
                return new MineTypeFilter(comparator, rawArguments);
            }
            if (index == 34) {
                return new AlbumServerIdFilter(comparator, rawArguments);
            }
            if (index == 12) {
                return new LocationFilter(comparator, rawArguments);
            }
            return Filter.NOT_SUPPORTED_FILTER;
        }
    }

    MediaItem() {
    }

    public boolean columnEquals(CacheItem item, int columnIndex) {
        return CacheUtils.columnEquals(this, item, columnIndex);
    }

    public boolean fillWindow(CursorWindow window, int row, int column, int index) {
        String str = null;
        switch (index) {
            case 0:
                return ParseUtils.putLong(window, Long.valueOf(this.mId), row, column);
            case 1:
                return ParseUtils.putString(window, this.mSha1, row, column);
            case 2:
                return ParseUtils.putLong(window, this.mAlbumId, row, column);
            case 3:
                return ParseUtils.putString(window, this.mMicroThumb, row, column);
            case 4:
                return ParseUtils.putString(window, this.mThumbnail, row, column);
            case 5:
                return ParseUtils.putString(window, this.mFilePath, row, column);
            case 6:
                return ParseUtils.putLong(window, this.mType, row, column);
            case 7:
                return ParseUtils.putString(window, this.mTitle, row, column);
            case 8:
                return ParseUtils.putLong(window, this.mDuration, row, column);
            case 9:
                return ParseUtils.putString(window, this.mDescription, row, column);
            case 10:
                return window.putLong(this.mSize.longValue(), row, column);
            case 11:
                return ParseUtils.putString(window, this.mMimeType, row, column);
            case 12:
                return ParseUtils.putString(window, this.mLocation, row, column);
            case 13:
                return ParseUtils.putString(window, this.mLatitude, row, column);
            case 14:
                if (this.mLatitudeRef != null) {
                    str = String.valueOf(this.mLatitudeRef);
                }
                return ParseUtils.putString(window, str, row, column);
            case 15:
                return ParseUtils.putString(window, this.mLongitude, row, column);
            case 16:
                if (this.mLongitudeRef != null) {
                    str = String.valueOf(this.mLongitudeRef);
                }
                return ParseUtils.putString(window, str, row, column);
            case 17:
                return ParseUtils.putString(window, getAliasMicroThumbnail(), row, column);
            case 18:
                return window.putLong(this.mMixedTime, row, column);
            case 19:
                return window.putLong((long) this.mAliasCreateDate, row, column);
            case 20:
                return ParseUtils.putLong(window, getAliasSyncState(), row, column);
            case 21:
                return ParseUtils.putBlob(window, this.mSecretKey, row, column);
            case 22:
                return ParseUtils.putLong(window, this.mWidth, row, column);
            case 23:
                return ParseUtils.putLong(window, this.mHeight, row, column);
            case 24:
                return ParseUtils.putLong(window, getAliasShowInHomePage(), row, column);
            case 25:
                return ParseUtils.putString(window, this.mCreatorId, row, column);
            case 26:
                return ParseUtils.putLong(window, this.mLocalFlag, row, column);
            case 27:
                return ParseUtils.putLong(window, getAliasHidden(), row, column);
            case 28:
                return ParseUtils.putLong(window, this.mServerTag, row, column);
            case 29:
                return ParseUtils.putString(window, this.mServerId, row, column);
            case 30:
                return ParseUtils.putLong(window, Long.valueOf(this.mDateModified), row, column);
            case 31:
                return ParseUtils.putLong(window, Integer.valueOf(this.mAliasModifyDate), row, column);
            case 32:
                return ParseUtils.putString(window, getAliasClearThumbnail(), row, column);
            case 33:
                return ParseUtils.putLong(window, getAliasIsFavorite(), row, column);
            case 34:
                return ParseUtils.putString(window, this.mAlbumServerId, row, column);
            case 35:
                return ParseUtils.putLong(window, this.mSpecialTypeFlags, row, column);
            case 36:
                return ParseUtils.putLong(window, Long.valueOf(this.mAliasSortTime), row, column);
            case 37:
                return ParseUtils.putLong(window, Integer.valueOf(this.mAliasSortDate), row, column);
            case 38:
                return ParseUtils.putLong(window, this.mOrientation, row, column);
            default:
                throw new IllegalArgumentException(" not recognized column.");
        }
    }

    public Object get(int index, boolean useDefault) {
        switch (index) {
            case 0:
                return Long.valueOf(this.mId);
            case 1:
                if (this.mSha1 != null) {
                    return this.mSha1;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 2:
                if (this.mAlbumId != null) {
                    return this.mAlbumId;
                }
                if (useDefault) {
                    return DEFAULT_LONG;
                }
                return null;
            case 3:
                if (this.mMicroThumb != null) {
                    return this.mMicroThumb;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 4:
                if (this.mThumbnail != null) {
                    return this.mThumbnail;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 5:
                if (this.mFilePath != null) {
                    return this.mFilePath;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 6:
                if (this.mType != null) {
                    return this.mType;
                }
                if (useDefault) {
                    return DEFAULT_INT;
                }
                return null;
            case 7:
                if (this.mTitle != null) {
                    return this.mTitle;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 8:
                if (this.mDuration != null) {
                    return this.mDuration;
                }
                if (useDefault) {
                    return DEFAULT_LONG;
                }
                return null;
            case 9:
                if (this.mDescription != null) {
                    return this.mDescription;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 10:
                return this.mSize;
            case 11:
                if (this.mMimeType != null) {
                    return this.mMimeType;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 12:
                if (this.mLocation != null) {
                    return this.mLocation;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 13:
                if (this.mLatitude != null) {
                    return this.mLatitude;
                }
                if (useDefault) {
                    return DEFAULT_LONG;
                }
                return null;
            case 14:
                if (this.mLatitudeRef != null) {
                    return this.mLatitudeRef;
                }
                if (useDefault) {
                    return Character.valueOf(' ');
                }
                return null;
            case 15:
                if (this.mLongitude != null) {
                    return this.mLongitude;
                }
                if (useDefault) {
                    return DEFAULT_LONG;
                }
                return null;
            case 16:
                if (this.mLongitudeRef != null) {
                    return this.mLongitudeRef;
                }
                if (useDefault) {
                    return Character.valueOf(' ');
                }
                return null;
            case 17:
                String thumbnail = getAliasMicroThumbnail();
                if (thumbnail == null) {
                    thumbnail = useDefault ? DEFAULT_LONG : null;
                }
                return thumbnail;
            case 18:
                return Long.valueOf(this.mMixedTime);
            case 19:
                return Integer.valueOf(this.mAliasCreateDate);
            case 20:
                return getAliasSyncState();
            case 21:
                if (this.mSecretKey != null) {
                    return this.mSecretKey;
                }
                if (useDefault) {
                    return new byte[0];
                }
                return null;
            case 22:
                if (this.mWidth != null) {
                    return this.mWidth;
                }
                if (useDefault) {
                    return DEFAULT_INT;
                }
                return null;
            case 23:
                if (this.mHeight != null) {
                    return this.mHeight;
                }
                if (useDefault) {
                    return DEFAULT_INT;
                }
                return null;
            case 24:
                return TRUE;
            case 25:
                return this.mCreatorId;
            case 26:
                return this.mLocalFlag;
            case 27:
                return getAliasHidden();
            case 28:
                return this.mServerTag;
            case 29:
                return this.mServerId;
            case 30:
                return Long.valueOf(this.mDateModified);
            case 31:
                return Integer.valueOf(this.mAliasModifyDate);
            case 32:
                String clearThumbnail = getAliasClearThumbnail();
                if (clearThumbnail == null) {
                    clearThumbnail = useDefault ? "" : null;
                }
                return clearThumbnail;
            case 33:
                return getAliasIsFavorite();
            case 34:
                if (this.mAlbumServerId != null) {
                    return this.mAlbumServerId;
                }
                if (useDefault) {
                    return "";
                }
                return null;
            case 35:
                return this.mSpecialTypeFlags;
            case 36:
                return Long.valueOf(this.mAliasSortTime);
            case 37:
                return Integer.valueOf(this.mAliasSortDate);
            case 38:
                if (this.mOrientation != null) {
                    return this.mOrientation;
                }
                return useDefault ? DEFAULT_INT : null;
            default:
                throw new IllegalArgumentException(" not recognized column. ");
        }
    }

    public int getType(int index) {
        int i = 3;
        int i2 = 0;
        switch (index) {
            case 0:
            case 10:
            case 18:
            case 19:
            case 20:
            case 24:
            case 26:
            case 27:
            case 28:
            case 30:
            case 31:
            case 33:
            case 35:
            case 36:
            case 37:
                return 1;
            case 1:
                if (this.mSha1 == null) {
                    i = 0;
                }
                return i;
            case 2:
                if (this.mAlbumId != null) {
                    i2 = 1;
                }
                return i2;
            case 3:
                if (this.mMicroThumb == null) {
                    i = 0;
                }
                return i;
            case 4:
                if (this.mThumbnail == null) {
                    i = 0;
                }
                return i;
            case 5:
                if (this.mFilePath == null) {
                    i = 0;
                }
                return i;
            case 6:
                if (this.mType == null) {
                    return 0;
                }
                return 1;
            case 7:
                if (this.mTitle == null) {
                    i = 0;
                }
                return i;
            case 8:
                if (this.mDuration == null) {
                    return 0;
                }
                return 1;
            case 9:
                if (this.mDescription == null) {
                    i = 0;
                }
                return i;
            case 11:
                if (this.mMimeType == null) {
                    i = 0;
                }
                return i;
            case 12:
                if (this.mLocation == null) {
                    i = 0;
                }
                return i;
            case 13:
                if (this.mLatitude == null) {
                    i = 0;
                }
                return i;
            case 14:
                if (this.mLatitudeRef == null) {
                    i = 0;
                }
                return i;
            case 15:
                if (this.mLongitude == null) {
                    i = 0;
                }
                return i;
            case 16:
                if (this.mLongitudeRef == null) {
                    i = 0;
                }
                return i;
            case 17:
                if (getAliasMicroThumbnail() == null) {
                    i = 0;
                }
                return i;
            case 21:
                if (this.mSecretKey != null) {
                    i2 = 4;
                }
                return i2;
            case 22:
                if (this.mWidth == null) {
                    return 0;
                }
                return 1;
            case 23:
                if (this.mHeight == null) {
                    return 0;
                }
                return 1;
            case 25:
                return 3;
            case 29:
                return 3;
            case 32:
                if (getAliasClearThumbnail() == null) {
                    i = 0;
                }
                return i;
            case 34:
                if (this.mAlbumServerId == null) {
                    i = 0;
                }
                return i;
            case 38:
                return this.mOrientation == null ? 0 : 1;
            default:
                throw new IllegalArgumentException(" not recognized column. ");
        }
    }

    public String getAliasClearThumbnail() {
        if (!TextUtils.isEmpty(this.mFilePath)) {
            return this.mFilePath;
        }
        if (TextUtils.isEmpty(this.mThumbnail)) {
            return !TextUtils.isEmpty(this.mMicroThumb) ? this.mMicroThumb : null;
        } else {
            return this.mThumbnail;
        }
    }

    public String getAliasMicroThumbnail() {
        if (!TextUtils.isEmpty(this.mMicroThumb)) {
            return this.mMicroThumb;
        }
        if (TextUtils.isEmpty(this.mThumbnail)) {
            return !TextUtils.isEmpty(this.mFilePath) ? this.mFilePath : null;
        } else {
            return this.mThumbnail;
        }
    }

    public Long getAliasShowInHomePage() {
        if (this.mAlbumId == null) {
            return FALSE;
        }
        return this.mDelegate.isShowInHomePage(this.mAlbumId.longValue()) ? TRUE : FALSE;
    }

    public Long getAliasHidden() {
        if (this.mAlbumId == null) {
            return FALSE;
        }
        return this.mDelegate.isHidden(this.mAlbumId.longValue()) ? TRUE : FALSE;
    }

    public Long getAliasIsFavorite() {
        if (this.mSha1 == null) {
            return FALSE;
        }
        return this.mFavoritesDelegate.isFavorite(this.mSha1) ? TRUE : FALSE;
    }

    public long getId() {
        return this.mId;
    }

    public int getAliasSortDate() {
        return this.mAliasSortDate;
    }

    public long getAliasSortTime() {
        return this.mAliasSortTime;
    }

    public String getLocation() {
        return this.mLocation;
    }

    private Long getAliasSyncState() {
        if (this.mLocalFlag == null) {
            Log.e(".provider.cache.MediaItem", "localFlag is null!");
            return Long.valueOf(2147483647L);
        } else if (this.mLocalFlag.longValue() == 0) {
            return Long.valueOf(0);
        } else {
            if (this.mLocalFlag.longValue() == 5 || this.mLocalFlag.longValue() == 6 || this.mLocalFlag.longValue() == 9) {
                return Long.valueOf(1);
            }
            if (this.mAlbumId == null || !this.mDelegate.isAutoUpload(this.mAlbumId.longValue())) {
                return Long.valueOf(4);
            }
            if (this.mIsSyncing == null) {
                UploadStatusItem item = SyncProxy.getInstance().getUploadStatusProxy().getUploadStatus(new UploadStatusItem(ItemType.OWNER, String.valueOf(this.mId)));
                boolean z = item != null && item.mStatus == SyncStatus.STATUS_INIT;
                this.mIsSyncing = Boolean.valueOf(z);
            }
            if (this.mIsSyncing.booleanValue()) {
                return Long.valueOf(2);
            }
            return Long.valueOf(3);
        }
    }

    private void regenerateSortTimeAndDate() {
        if (this.mAlbumId == null) {
            this.mAliasSortTime = this.mMixedTime;
            this.mAliasSortDate = this.mAliasCreateDate;
            return;
        }
        SortDate sortDate = this.mDelegate.getSortDate(this.mAlbumId.longValue());
        switch (sortDate) {
            case CREATE_TIME:
                this.mAliasSortTime = this.mMixedTime;
                this.mAliasSortDate = this.mAliasCreateDate;
                return;
            case MODIFY_TIME:
                this.mAliasSortTime = this.mDateModified;
                this.mAliasSortDate = this.mAliasModifyDate;
                return;
            default:
                throw new IllegalArgumentException("Unsupported sort date " + sortDate);
        }
    }

    public String toString() {
        return "MediaItem{mId=" + this.mId + ", mSha1='" + this.mSha1 + '\'' + ", mAlbumId=" + this.mAlbumId + ", mMicroThumb='" + this.mMicroThumb + '\'' + ", mThumbnail='" + this.mThumbnail + '\'' + ", mFilePath='" + this.mFilePath + '\'' + ", mType=" + this.mType + ", mTitle='" + this.mTitle + '\'' + ", mMimeType='" + this.mMimeType + '\'' + ", mLocalFlag=" + this.mLocalFlag + ", mIsSyncing=" + this.mIsSyncing + ", mSecretKey=" + Arrays.toString(this.mSecretKey) + ", mMixedTime=" + this.mMixedTime + ", mAliasCreateDate=" + this.mAliasCreateDate + ", mDateModified=" + this.mDateModified + ", mAilasSortTime=" + this.mAliasSortTime + ", mAlbumServerId=" + this.mAlbumServerId + ", mSpecialTypeFlags=" + this.mSpecialTypeFlags + '}';
    }

    static {
        PROJECTION.put("_id", Integer.valueOf(0));
        PROJECTION.put("sha1", Integer.valueOf(1));
        PROJECTION.put("localGroupId", Integer.valueOf(2));
        PROJECTION.put("microthumbfile", Integer.valueOf(3));
        PROJECTION.put("thumbnailFile", Integer.valueOf(4));
        PROJECTION.put("localFile", Integer.valueOf(5));
        PROJECTION.put("serverType", Integer.valueOf(6));
        PROJECTION.put("title", Integer.valueOf(7));
        PROJECTION.put("duration", Integer.valueOf(8));
        PROJECTION.put("description", Integer.valueOf(9));
        PROJECTION.put("size", Integer.valueOf(10));
        PROJECTION.put("mimeType", Integer.valueOf(11));
        PROJECTION.put("location", Integer.valueOf(12));
        PROJECTION.put("exifGPSLatitude", Integer.valueOf(13));
        PROJECTION.put("exifGPSLatitudeRef", Integer.valueOf(14));
        PROJECTION.put("exifGPSLongitude", Integer.valueOf(15));
        PROJECTION.put("exifGPSLongitudeRef", Integer.valueOf(16));
        PROJECTION.put("alias_micro_thumbnail", Integer.valueOf(17));
        PROJECTION.put("alias_create_time", Integer.valueOf(18));
        PROJECTION.put("alias_create_date", Integer.valueOf(19));
        PROJECTION.put("alias_sync_state", Integer.valueOf(20));
        PROJECTION.put("secretKey", Integer.valueOf(21));
        PROJECTION.put("exifImageWidth", Integer.valueOf(22));
        PROJECTION.put("exifImageLength", Integer.valueOf(23));
        PROJECTION.put("alias_show_in_homepage", Integer.valueOf(24));
        PROJECTION.put("creatorId", Integer.valueOf(25));
        PROJECTION.put("localFlag", Integer.valueOf(26));
        PROJECTION.put("alias_hidden", Integer.valueOf(27));
        PROJECTION.put("serverTag", Integer.valueOf(28));
        PROJECTION.put("serverId", Integer.valueOf(29));
        PROJECTION.put("dateModified", Integer.valueOf(30));
        PROJECTION.put("alias_modify_date", Integer.valueOf(31));
        PROJECTION.put("alias_clear_thumbnail", Integer.valueOf(32));
        PROJECTION.put("alias_is_favorite", Integer.valueOf(33));
        PROJECTION.put("groupId", Integer.valueOf(34));
        PROJECTION.put("specialTypeFlags", Integer.valueOf(35));
        PROJECTION.put("alias_sort_time", Integer.valueOf(36));
        PROJECTION.put("alias_sort_date", Integer.valueOf(37));
        PROJECTION.put("exifOrientation", Integer.valueOf(38));
    }
}

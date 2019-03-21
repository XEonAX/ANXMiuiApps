package com.miui.gallery.provider.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.CursorWindow;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.provider.cache.CacheItem.ColumnMapper;
import com.miui.gallery.provider.cache.CacheItem.Merger;
import com.miui.gallery.provider.cache.Filter.Comparator;
import com.miui.gallery.provider.cache.Filter.CompareFilter;
import java.util.Map;

class SearchHistoryItem implements CacheItem {
    private static final Map<String, Integer> COLUMN_MAP = new ArrayMap(PROJECTION.length);
    private static final ColumnMapper COLUMN_MAPPER = new ColumnMapper() {
        public int getIndex(String column) {
            Integer index = (Integer) SearchHistoryItem.COLUMN_MAP.get(column);
            if (index == null) {
                return -1;
            }
            return index.intValue();
        }
    };
    protected static final String[] PROJECTION = new String[]{"title", "subTitle", "actionUri", "icon", "timestamp"};
    @SerializedName("icon")
    public String icon;
    @SerializedName("url")
    public String intentActionURI;
    @SerializedName("subtitle")
    public String subTitle;
    @SerializedName("timestamp")
    public Long timestamp;
    @SerializedName("title")
    public String title;

    public static class Generator implements com.miui.gallery.provider.cache.CacheItem.Generator<SearchHistoryItem> {
        public SearchHistoryItem generate() {
            return new SearchHistoryItem();
        }

        public SearchHistoryItem from(Cursor cursor) {
            SearchHistoryItem suggestion = generate();
            suggestion.title = cursor.getString(0);
            suggestion.subTitle = cursor.getString(1);
            suggestion.intentActionURI = cursor.getString(2);
            suggestion.icon = cursor.getString(3);
            suggestion.timestamp = Long.valueOf(cursor.getLong(4));
            return suggestion;
        }

        public SearchHistoryItem from(long id, ContentValues values) {
            SearchHistoryItem suggestion = generate();
            update(suggestion, values);
            suggestion.timestamp = values.getAsLong(SearchHistoryItem.PROJECTION[4]);
            return suggestion;
        }

        public void update(SearchHistoryItem item, ContentValues values) {
            if (values.containsKey(SearchHistoryItem.PROJECTION[0])) {
                item.title = values.getAsString(SearchHistoryItem.PROJECTION[0]);
            }
            if (values.containsKey(SearchHistoryItem.PROJECTION[1])) {
                item.subTitle = values.getAsString(SearchHistoryItem.PROJECTION[1]);
            }
            if (values.containsKey(SearchHistoryItem.PROJECTION[2])) {
                item.intentActionURI = values.getAsString(SearchHistoryItem.PROJECTION[2]);
            }
            if (values.containsKey(SearchHistoryItem.PROJECTION[3])) {
                item.icon = values.getAsString(SearchHistoryItem.PROJECTION[3]);
            }
            if (values.containsKey(SearchHistoryItem.PROJECTION[4])) {
                item.timestamp = values.getAsLong(SearchHistoryItem.PROJECTION[4]);
            }
        }

        public ColumnMapper getMapper() {
            return SearchHistoryItem.COLUMN_MAPPER;
        }

        public String[] getProjection() {
            return SearchHistoryItem.PROJECTION;
        }

        public CompareFilter<SearchHistoryItem> getFilter(int index, Comparator comparator, String rawArguments) {
            return null;
        }
    }

    public static class QueryFactory implements com.miui.gallery.provider.cache.CacheItem.QueryFactory<SearchHistoryItem> {

        private static class SubTitleFilter extends CompareFilter<SearchHistoryItem> {
            public SubTitleFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
            }

            public SearchHistoryItem filter(SearchHistoryItem item) {
                return (this.mComparator == Comparator.LIKE && !TextUtils.isEmpty(this.mArgument) && QueryFactory.containsIgnoreCase(item.subTitle, this.mArgument)) ? item : null;
            }
        }

        private static class TimestampComparator implements java.util.Comparator<SearchHistoryItem> {
            private boolean mDescent;

            public TimestampComparator(boolean descent) {
                this.mDescent = descent;
            }

            public int compare(SearchHistoryItem lhs, SearchHistoryItem rhs) {
                int value = lhs.timestamp.longValue() < rhs.timestamp.longValue() ? -1 : lhs.timestamp == rhs.timestamp ? 0 : 1;
                return this.mDescent ? -value : value;
            }
        }

        private static class TitleFilter extends CompareFilter<SearchHistoryItem> {
            public TitleFilter(Comparator comparator, String argument) {
                super(-1, comparator, argument);
            }

            public SearchHistoryItem filter(SearchHistoryItem item) {
                return (this.mComparator == Comparator.LIKE && !TextUtils.isEmpty(this.mArgument) && QueryFactory.containsIgnoreCase(item.title, this.mArgument)) ? item : null;
            }
        }

        public ColumnMapper getMapper() {
            return SearchHistoryItem.COLUMN_MAPPER;
        }

        public java.util.Comparator<SearchHistoryItem> getComparator(int index, boolean desc) {
            if (index == 4) {
                return new TimestampComparator(desc);
            }
            return null;
        }

        public Merger<SearchHistoryItem> getMerger(int index) {
            return null;
        }

        public CompareFilter<SearchHistoryItem> getFilter(int index, Comparator comparator, String rawArguments) {
            if (index == 0) {
                return new TitleFilter(comparator, rawArguments);
            }
            if (index == 1) {
                return new SubTitleFilter(comparator, rawArguments);
            }
            return null;
        }

        private static boolean containsIgnoreCase(String origin, String keyword) {
            return !TextUtils.isEmpty(origin) && origin.toLowerCase().contains(keyword.toLowerCase());
        }
    }

    SearchHistoryItem() {
    }

    public Object get(int index, boolean useDefault) {
        if (index == 0) {
            return this.title;
        }
        if (index == 1) {
            return this.subTitle;
        }
        if (index == 2) {
            return this.intentActionURI;
        }
        if (index == 3) {
            return this.icon;
        }
        if (index == 4) {
            return this.timestamp;
        }
        throw new IllegalArgumentException(" not recognized column.");
    }

    public int getType(int index) {
        if (index == 0 || index == 1 || index == 2 || index == 3) {
            return 3;
        }
        if (index == 4) {
            return 1;
        }
        throw new IllegalArgumentException(" not recognized column.");
    }

    public boolean fillWindow(CursorWindow window, int row, int column, int index) {
        if (index == 0) {
            return ParseUtils.putString(window, this.title, row, column);
        }
        if (index == 1) {
            return ParseUtils.putString(window, this.subTitle, row, column);
        }
        if (index == 2) {
            return ParseUtils.putString(window, this.intentActionURI, row, column);
        }
        if (index == 3) {
            return ParseUtils.putString(window, this.icon, row, column);
        }
        if (index == 4) {
            return ParseUtils.putLong(window, this.timestamp, row, column);
        }
        throw new IllegalArgumentException(" not recognized column.");
    }

    static {
        COLUMN_MAP.put("title", Integer.valueOf(0));
        COLUMN_MAP.put("subTitle", Integer.valueOf(1));
        COLUMN_MAP.put("actionUri", Integer.valueOf(2));
        COLUMN_MAP.put("icon", Integer.valueOf(3));
        COLUMN_MAP.put("timestamp", Integer.valueOf(4));
    }
}

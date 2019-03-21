package com.miui.gallery.provider.cache;

import android.database.CursorWindow;
import android.net.Uri;
import android.util.ArrayMap;
import com.miui.gallery.provider.cache.CacheItem.ColumnMapper;
import com.miui.gallery.provider.cache.CacheItem.Merger;
import com.miui.gallery.provider.cache.Filter.CompareFilter;
import java.util.Comparator;
import java.util.Map;

class SearchIconItem implements CacheItem {
    private static final Map<String, Integer> COLUMN_MAP = new ArrayMap(PROJECTION.length);
    private static final ColumnMapper COLUMN_MAPPER = new ColumnMapper() {
        public int getIndex(String column) {
            Integer index = (Integer) SearchIconItem.COLUMN_MAP.get(column);
            if (index == null) {
                return -1;
            }
            return index.intValue();
        }
    };
    protected static final String[] PROJECTION = new String[]{"icon_uri", "file_path", "download_uri", "decode_region_orientation", "decode_region_x", "decode_region_y", "decode_region_w", "decode_region_h"};
    public Float decodeRegionH;
    public int decodeRegionOrientation;
    public Float decodeRegionW;
    public Float decodeRegionX;
    public Float decodeRegionY;
    public String downloadUri;
    public String filePath;
    public String iconUri;
    Uri notifyUri;

    public static class QueryFactory implements com.miui.gallery.provider.cache.CacheItem.QueryFactory<SearchIconItem> {
        public ColumnMapper getMapper() {
            return SearchIconItem.COLUMN_MAPPER;
        }

        public Comparator<SearchIconItem> getComparator(int index, boolean desc) {
            return null;
        }

        public Merger<SearchIconItem> getMerger(int index) {
            return null;
        }

        public CompareFilter<SearchIconItem> getFilter(int index, Filter.Comparator comparator, String rawArguments) {
            return null;
        }
    }

    SearchIconItem() {
    }

    public Object get(int index, boolean useDefault) {
        if (index == 0) {
            return this.iconUri;
        }
        if (index == 1) {
            return this.filePath;
        }
        if (index == 2) {
            return this.downloadUri;
        }
        if (index == 3) {
            return Integer.valueOf(this.decodeRegionOrientation);
        }
        if (index == 4) {
            return this.decodeRegionX;
        }
        if (index == 5) {
            return this.decodeRegionY;
        }
        if (index == 6) {
            return this.decodeRegionW;
        }
        if (index == 7) {
            return this.decodeRegionH;
        }
        throw new IllegalArgumentException(" not recognized column.");
    }

    public int getType(int index) {
        if (index == 0 || index == 1 || index == 2) {
            return 3;
        }
        if (index == 3) {
            return 1;
        }
        if (index == 4) {
            return 2;
        }
        if (index == 5) {
            return 2;
        }
        if (index == 6) {
            return 2;
        }
        if (index == 7) {
            return 2;
        }
        throw new IllegalArgumentException(" not recognized column.");
    }

    public boolean fillWindow(CursorWindow window, int row, int column, int index) {
        return false;
    }

    static {
        COLUMN_MAP.put("icon_uri", Integer.valueOf(0));
        COLUMN_MAP.put("file_path", Integer.valueOf(1));
        COLUMN_MAP.put("download_uri", Integer.valueOf(2));
        COLUMN_MAP.put("decode_region_orientation", Integer.valueOf(3));
        COLUMN_MAP.put("decode_region_x", Integer.valueOf(4));
        COLUMN_MAP.put("decode_region_y", Integer.valueOf(5));
        COLUMN_MAP.put("decode_region_w", Integer.valueOf(6));
        COLUMN_MAP.put("decode_region_h", Integer.valueOf(7));
    }
}

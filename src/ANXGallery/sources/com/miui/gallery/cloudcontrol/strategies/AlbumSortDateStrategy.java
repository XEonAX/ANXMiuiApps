package com.miui.gallery.cloudcontrol.strategies;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AlbumSortDateStrategy extends BaseStrategy {
    @SerializedName("albums")
    private List<AlbumSortDate> mAlbums;
    private transient Map<String, AlbumSortDate> mSortDateMap;

    public static class AlbumSortDate {
        @SerializedName("album_path")
        private String mAlbumPath;
        @SerializedName("sort_date")
        private String mSortDate;

        public boolean isValid() {
            return (TextUtils.isEmpty(this.mSortDate) || TextUtils.isEmpty(this.mAlbumPath)) ? false : true;
        }

        public String getSortDate() {
            return this.mSortDate;
        }

        public String getAlbumPath() {
            return this.mAlbumPath;
        }
    }

    public enum SortDate {
        DATE_MODIFIED("dateModified"),
        DATE_CREATED("dateCreated");
        
        private String value;

        private SortDate(String value) {
            this.value = value;
        }

        public static SortDate fromValue(String value) {
            for (SortDate sortDate : values()) {
                if (sortDate.value.equals(value)) {
                    return sortDate;
                }
            }
            return DATE_CREATED;
        }
    }

    public void doAdditionalProcessing() {
        this.mSortDateMap = new HashMap();
        if (BaseMiscUtil.isValid(this.mAlbums)) {
            for (AlbumSortDate album : this.mAlbums) {
                if (album != null && album.isValid()) {
                    this.mSortDateMap.put(album.getAlbumPath().toLowerCase(), album);
                }
            }
        }
    }

    public List<String> getAlbumPathsBySortDate(SortDate sortDate) {
        ArrayList<String> ret = new ArrayList();
        if (BaseMiscUtil.isValid(this.mAlbums)) {
            for (AlbumSortDate album : this.mAlbums) {
                if (sortDate == SortDate.fromValue(album.getSortDate())) {
                    ret.add(album.getAlbumPath());
                }
            }
        }
        return ret;
    }
}

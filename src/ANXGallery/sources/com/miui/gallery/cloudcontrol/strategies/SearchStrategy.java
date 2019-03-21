package com.miui.gallery.cloudcontrol.strategies;

import com.google.gson.annotations.SerializedName;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;

public class SearchStrategy extends BaseStrategy {
    @SerializedName("search-data")
    private String mAIAlbum = Status.UNAVAILABLE.getValue();
    private boolean mAIAlbumEnabled = false;
    @SerializedName("search-box")
    private String mSearchBar = Status.UNAVAILABLE.getValue();
    private boolean mSearchBarEnabled = false;

    public SearchStrategy(boolean searchBarEnabled, boolean AIAlbumEnabled) {
        this.mSearchBarEnabled = searchBarEnabled;
        this.mAIAlbumEnabled = AIAlbumEnabled;
    }

    public void doAdditionalProcessing() {
        this.mAIAlbumEnabled = Status.ENABLE.getValue().equalsIgnoreCase(this.mAIAlbum);
        boolean z = this.mAIAlbumEnabled && Status.ENABLE.getValue().equalsIgnoreCase(this.mSearchBar);
        this.mSearchBarEnabled = z;
    }

    public boolean isSearchBarEnabled() {
        return this.mSearchBarEnabled;
    }

    public boolean isAIAlbumEnabled() {
        return this.mAIAlbumEnabled;
    }

    public static SearchStrategy createDefault() {
        boolean searchStatus = CloudControlManager.getInstance().queryFeatureStatus("search") == Status.ENABLE;
        return new SearchStrategy(searchStatus, searchStatus);
    }
}

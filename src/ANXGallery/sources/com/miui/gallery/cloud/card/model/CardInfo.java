package com.miui.gallery.cloud.card.model;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import miui.provider.ExtraTelephony.DeletableSyncColumns;

public class CardInfo {
    @SerializedName("description")
    private String mDescription;
    @SerializedName("extraInfo")
    private String mExtraInfo;
    @SerializedName("appCreate")
    private boolean mIsAppCreate;
    @SerializedName("isTop")
    private boolean mIsTop;
    @SerializedName("mediaInfo")
    private MediaInfoBean mMediaInfo;
    @SerializedName("operationInfo")
    private OperationInfo mOperationInfo;
    @SerializedName("cardId")
    private String mServerId;
    @SerializedName("sortTime")
    private long mSortTime;
    @SerializedName("status")
    private String mStatus;
    @SerializedName("tag")
    private long mTag;
    @SerializedName("name")
    private String mTitle;
    @SerializedName("updateTime")
    private long mUpdateTime;
    @SerializedName("validEndDate")
    private long mValidEndDate;
    @SerializedName("validStartDate")
    private long mValidStartDate;
    @SerializedName("scenarioId")
    private int scenarioId;

    public static class MediaInfoBean {
        @SerializedName("allMediaList")
        private List<Long> allMediaList;
        @SerializedName("coverMediaList")
        private List<Long> coverMediaList;
        @SerializedName("mediaList")
        private List<Long> mediaList;

        public List<Long> getCoverMediaList() {
            return this.coverMediaList;
        }

        public List<Long> getMediaList() {
            return this.mediaList;
        }

        public List<Long> getAllMediaList() {
            return this.allMediaList;
        }
    }

    public static class OperationInfo {
        @SerializedName("backgroundUrl")
        private String backgroundUrl;
        @SerializedName("iconUrl")
        private String iconUrl;
        @SerializedName("url")
        private String url;

        public String getUrl() {
            return this.url;
        }

        public String getIconUrl() {
            return this.iconUrl;
        }

        public String getBackgroundUrl() {
            return this.backgroundUrl;
        }
    }

    public String getServerId() {
        return this.mServerId;
    }

    public int getScenarioId() {
        return this.scenarioId;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public long getSortTime() {
        return this.mSortTime;
    }

    public long getUpdateTime() {
        return this.mUpdateTime;
    }

    public MediaInfoBean getMediaInfo() {
        return this.mMediaInfo;
    }

    public OperationInfo getOperationInfo() {
        return this.mOperationInfo;
    }

    public String getExtraInfo() {
        return this.mExtraInfo;
    }

    public boolean isAppCreate() {
        return this.mIsAppCreate;
    }

    public long getTag() {
        return this.mTag;
    }

    public boolean isStatusDelete() {
        return TextUtils.equals(DeletableSyncColumns.DELETED, this.mStatus);
    }

    public long getValidStartDate() {
        return this.mValidStartDate;
    }

    public long getValidEndDate() {
        return this.mValidEndDate;
    }

    public boolean isTop() {
        return this.mIsTop;
    }
}

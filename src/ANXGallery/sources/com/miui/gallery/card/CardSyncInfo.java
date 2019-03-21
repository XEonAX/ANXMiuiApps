package com.miui.gallery.card;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class CardSyncInfo {
    @SerializedName("description")
    private String description;
    @SerializedName("duplicateKey")
    private String duplicateKey;
    @SerializedName("extraInfo")
    private String extraInfo;
    @SerializedName("mediaInfo")
    private MediaInfoBean mediaInfo;
    @SerializedName("name")
    private String name;
    @SerializedName("scenarioId")
    private int scenarioId;
    @SerializedName("sortTime")
    private long sortTime;
    @SerializedName("status")
    private String status;

    public static final class Builder {
        private List<Long> allMediaList;
        private List<Long> coverMediaList;
        private String description;
        private String duplicateKey;
        private String extraInfo;
        private List<Long> mediaList;
        private String name;
        private int scenarioId;
        private long sortTime;
        private String status;

        private Builder() {
        }

        public Builder setScenarioId(int val) {
            this.scenarioId = val;
            return this;
        }

        public Builder setName(String val) {
            this.name = val;
            return this;
        }

        public Builder setDescription(String val) {
            this.description = val;
            return this;
        }

        public Builder setStatus(String val) {
            this.status = val;
            return this;
        }

        public Builder setDuplicateKey(String val) {
            this.duplicateKey = val;
            return this;
        }

        public Builder setCoverMediaList(List<Long> coverMediaList) {
            this.coverMediaList = coverMediaList;
            return this;
        }

        public Builder setMediaList(List<Long> mediaList) {
            this.mediaList = mediaList;
            return this;
        }

        public Builder setAllMediaList(List<Long> allMediaList) {
            this.allMediaList = allMediaList;
            return this;
        }

        public Builder setExtraInfo(String extraInfo) {
            this.extraInfo = extraInfo;
            return this;
        }

        public Builder setSortTime(long sortTime) {
            this.sortTime = sortTime;
            return this;
        }

        public CardSyncInfo build() {
            return new CardSyncInfo(this);
        }
    }

    public static class MediaInfoBean {
        @SerializedName("allMediaList")
        private final List<Long> allMediaList;
        @SerializedName("coverMediaList")
        private final List<Long> coverMediaList;
        @SerializedName("mediaList")
        private final List<Long> mediaList;

        public MediaInfoBean(List<Long> coverMediaList, List<Long> mediaList, List<Long> allMediaList) {
            this.coverMediaList = coverMediaList;
            this.mediaList = mediaList;
            this.allMediaList = allMediaList;
        }
    }

    private CardSyncInfo(Builder builder) {
        setScenarioId(builder.scenarioId);
        setName(builder.name);
        setDescription(builder.description);
        setStatus(builder.status);
        setDuplicateKey(builder.duplicateKey);
        setMediaInfo(new MediaInfoBean(builder.coverMediaList, builder.mediaList, builder.allMediaList));
        setExtraInfo(builder.extraInfo);
        setSortTime(builder.sortTime);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public void setScenarioId(int scenarioId) {
        this.scenarioId = scenarioId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setDuplicateKey(String duplicateKey) {
        this.duplicateKey = duplicateKey;
    }

    public void setMediaInfo(MediaInfoBean mediaInfo) {
        this.mediaInfo = mediaInfo;
    }

    public void setExtraInfo(String extraInfo) {
        this.extraInfo = extraInfo;
    }

    public void setSortTime(long sortTime) {
        this.sortTime = sortTime;
    }
}

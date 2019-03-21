package com.miui.gallery.cloudcontrol.strategies;

import com.google.gson.annotations.SerializedName;
import com.nexstreaming.nexeditorsdk.nexClip;
import java.util.List;

public class AssistantScenarioStrategy extends BaseStrategy {
    @SerializedName("cloudTimeScenarioRules")
    private List<CloudTimeScenarioRule> mCloudTimeScenarioRules;
    @SerializedName("defaultMaxImageCount")
    private int mDefaultMaxImageCount;
    @SerializedName("defaultMaxSelectedImageCount")
    private int mDefaultMaxSelectedImageCount;
    @SerializedName("defaultMinImageCount")
    private int mDefaultMinImageCount;
    @SerializedName("defaultMinSelectedImageCount")
    private int mDefaultMinSelectedImageCount;
    @SerializedName("duplicateRemovalInterval")
    private int mDuplicateRemovalInterval;
    @SerializedName("freeScenarioTriggerInterval")
    private int mFreeScenarioTriggerInterval;
    @SerializedName("localScenarioRules")
    private List<ScenarioRule> mLocalScenarioRules;

    public static class ScenarioRule {
        @SerializedName("maxImageCount")
        protected int mMaxImageCount;
        @SerializedName("maxSelectedImageCount")
        protected int mMaxSelectedImageCount;
        @SerializedName("minImageCount")
        protected int mMinImageCount;
        @SerializedName("minSelectedImageCount")
        protected int mMinSelectedImageCount;
        @SerializedName("priority")
        protected int mPriority;
        @SerializedName("scenarioId")
        protected int mScenarioId;
        @SerializedName("triggerInterval")
        protected int mTriggerInterval;

        public int getScenarioId() {
            return this.mScenarioId;
        }

        public int getPriority() {
            return this.mPriority;
        }

        public int getMinImageCount() {
            return this.mMinImageCount;
        }

        public int getMaxImageCount() {
            return this.mMaxImageCount;
        }

        public int getTriggerInterval() {
            return this.mTriggerInterval;
        }

        public int getMinSelectedImageCount() {
            return this.mMinSelectedImageCount;
        }

        public int getMaxSelectedImageCount() {
            return this.mMaxSelectedImageCount;
        }
    }

    public static class CloudTimeScenarioRule extends ScenarioRule {
        @SerializedName("description")
        private String mDescription;
        @SerializedName("endTime")
        private long mEndTime;
        @SerializedName("startTime")
        private long mStartTime;
        @SerializedName("title")
        private String mTitle;

        public String getTitle() {
            return this.mTitle;
        }

        public String getDescription() {
            return this.mDescription;
        }

        public long getStartTime() {
            return this.mStartTime;
        }

        public long getEndTime() {
            return this.mEndTime;
        }
    }

    public int getDuplicateRemovalInterval() {
        return this.mDuplicateRemovalInterval > 0 ? this.mDuplicateRemovalInterval : nexClip.kClip_Rotate_180;
    }

    public int getDefaultMinImageCount() {
        return this.mDefaultMinImageCount > 0 ? this.mDefaultMinImageCount : 20;
    }

    public int getDefaultMaxImageCount() {
        return this.mDefaultMaxImageCount > 0 ? this.mDefaultMaxImageCount : 500;
    }

    public int getDefaultMinSelectedImageCount() {
        return this.mDefaultMinSelectedImageCount > 0 ? this.mDefaultMinSelectedImageCount : 6;
    }

    public int getDefaultMaxSelectedImageCount() {
        return this.mDefaultMaxSelectedImageCount > 0 ? this.mDefaultMaxSelectedImageCount : 80;
    }

    public int getFreeScenarioTriggerInterval() {
        return this.mFreeScenarioTriggerInterval > 0 ? this.mFreeScenarioTriggerInterval : 6;
    }

    public List<ScenarioRule> getLocalScenarioRules() {
        return this.mLocalScenarioRules;
    }

    public List<CloudTimeScenarioRule> getCloudTimeScenarioRules() {
        return this.mCloudTimeScenarioRules;
    }
}

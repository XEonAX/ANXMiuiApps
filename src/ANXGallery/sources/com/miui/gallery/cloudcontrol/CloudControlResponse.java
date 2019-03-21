package com.miui.gallery.cloudcontrol;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

public class CloudControlResponse {
    @SerializedName("expairAt")
    private long mExpireAt;
    @SerializedName("modules")
    private ArrayList<FeatureProfile> mFeatureProfiles;
    @SerializedName("syncToken")
    private String mSyncToken;

    public String getSyncToken() {
        return this.mSyncToken;
    }

    public ArrayList<FeatureProfile> getFeatureProfiles() {
        return this.mFeatureProfiles;
    }

    public String toString() {
        return "CloudControlResponse{mSyncToken='" + this.mSyncToken + '\'' + ", mExpireAt=" + this.mExpireAt + ", mFeatureProfiles=" + this.mFeatureProfiles + '}';
    }
}

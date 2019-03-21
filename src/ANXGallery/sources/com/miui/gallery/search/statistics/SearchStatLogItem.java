package com.miui.gallery.search.statistics;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Map;

public class SearchStatLogItem implements Serializable {
    @SerializedName("data")
    private Map<String, String> mData;
    @SerializedName("serialId")
    private String mSerialId;
    @SerializedName("timestamp")
    private long mTimeStamp = System.currentTimeMillis();
    @SerializedName("type")
    private String mType;

    public SearchStatLogItem(String serialId, String type, Map<String, String> data) {
        this.mSerialId = serialId;
        this.mType = type;
        this.mData = data;
    }

    public String toString() {
        return "serialId = " + this.mSerialId + ", timestamp = " + this.mTimeStamp + ", type = " + this.mType + ", data = " + this.mData;
    }
}

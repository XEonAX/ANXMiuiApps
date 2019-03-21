package com.xiaomi.opensdk.file.model;

import org.json.JSONException;
import org.json.JSONObject;

public class DownloadParameter {
    private String mAwsDownloadString = null;
    private String mKssDownloadString = null;

    public String getKssDownloadString() {
        return this.mKssDownloadString;
    }

    public void setKssDownloadString(String mKssDownloadString) {
        this.mKssDownloadString = mKssDownloadString;
    }

    public JSONObject toJsonObject() throws JSONException {
        return new JSONObject(this.mKssDownloadString);
    }
}

package com.xiaomi.opensdk.file.model;

import org.json.JSONException;
import org.json.JSONObject;

public class UploadParameter {
    private String mKssUploadString;
    private String mUploadId;

    public void setUploadId(String mUploadId) {
        this.mUploadId = mUploadId;
    }

    public String getUploadId() {
        return this.mUploadId;
    }

    public void setKssUploadString(String mKssUploadString) {
        this.mKssUploadString = mKssUploadString;
    }

    public JSONObject toJsonObject() throws JSONException {
        return new JSONObject(this.mKssUploadString);
    }
}

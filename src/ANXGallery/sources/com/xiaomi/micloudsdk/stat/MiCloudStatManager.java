package com.xiaomi.micloudsdk.stat;

public class MiCloudStatManager {
    private IMiCloudStatCallback mCldStatCallback;
    private boolean mEnable;
    private boolean mIsInitialized;

    private static class Holder {
        private static final MiCloudStatManager _instance = new MiCloudStatManager();
    }

    private MiCloudStatManager() {
        this.mEnable = false;
        this.mIsInitialized = false;
    }

    public static MiCloudStatManager getInstance() {
        return Holder._instance;
    }

    public void addHttpEvent(String url, long timeCost, long netFlow, int responseCode, String exceptionName) {
        if (this.mEnable && this.mIsInitialized && this.mCldStatCallback != null) {
            this.mCldStatCallback.onAddHttpEvent(url, timeCost, netFlow, responseCode, exceptionName);
        }
    }
}

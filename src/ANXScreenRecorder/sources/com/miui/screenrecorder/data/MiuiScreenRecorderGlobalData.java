package com.miui.screenrecorder.data;

public class MiuiScreenRecorderGlobalData {
    private static MiuiScreenRecorderGlobalData mGlobalData;
    private boolean mIsRecording = false;

    private MiuiScreenRecorderGlobalData() {
    }

    public static MiuiScreenRecorderGlobalData getInstance() {
        if (mGlobalData == null) {
            mGlobalData = new MiuiScreenRecorderGlobalData();
        }
        return mGlobalData;
    }

    public void setRecording(boolean isRecording) {
        this.mIsRecording = isRecording;
    }

    public boolean getRecording() {
        return this.mIsRecording;
    }

    public void reset() {
        this.mIsRecording = false;
    }
}

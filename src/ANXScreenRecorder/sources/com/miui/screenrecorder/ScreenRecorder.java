package com.miui.screenrecorder;

import android.media.projection.MediaProjection;

public interface ScreenRecorder {
    void onDestroy();

    void setAudioSource(int i);

    void setBitRate(int i);

    void setFilePath(String str);

    void setFixedFrame(boolean z);

    void setFrameRate(int i);

    void setResolution(int i, int i2);

    void start(MediaProjection mediaProjection);

    void stop();
}

package com.nexstreaming.nexeditorsdk;

public interface nexEngineListener {
    void onCheckDirectExport(int i);

    @Deprecated
    void onClipInfoDone();

    void onEncodingDone(boolean z, int i);

    void onEncodingProgress(int i);

    void onFastPreviewStartDone(int i, int i2, int i3);

    void onFastPreviewStopDone(int i);

    void onFastPreviewTimeDone(int i);

    void onPlayEnd();

    void onPlayFail(int i, int i2);

    void onPlayStart();

    void onPreviewPeakMeter(int i, int i2);

    void onProgressThumbnailCaching(int i, int i2);

    void onSeekStateChanged(boolean z);

    void onSetTimeDone(int i);

    void onSetTimeFail(int i);

    void onSetTimeIgnored();

    void onStateChange(int i, int i2);

    void onTimeChange(int i);
}

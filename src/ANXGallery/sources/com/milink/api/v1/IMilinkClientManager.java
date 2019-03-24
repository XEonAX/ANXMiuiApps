package com.milink.api.v1;

import com.milink.api.v1.type.MediaType;
import com.milink.api.v1.type.ReturnCode;
import com.milink.api.v1.type.SlideMode;

public interface IMilinkClientManager {
    void close();

    ReturnCode connect(String str, int i);

    ReturnCode disconnect();

    int getPlaybackDuration();

    int getPlaybackProgress();

    int getPlaybackRate();

    int getVolume();

    void open();

    ReturnCode rotatePhoto(String str, boolean z, float f);

    void setDataSource(MilinkClientManagerDataSource milinkClientManagerDataSource);

    void setDelegate(MilinkClientManagerDelegate milinkClientManagerDelegate);

    void setDeviceName(String str);

    ReturnCode setPlaybackProgress(int i);

    ReturnCode setPlaybackRate(int i);

    ReturnCode setVolume(int i);

    ReturnCode show(String str);

    ReturnCode startPlay(String str, String str2, int i, double d, MediaType mediaType);

    ReturnCode startPlay(String str, String str2, String str3, int i, double d, MediaType mediaType);

    ReturnCode startShow();

    ReturnCode startSlideshow(int i, SlideMode slideMode);

    ReturnCode stopPlay();

    ReturnCode stopShow();

    ReturnCode stopSlideshow();

    ReturnCode zoomPhoto(String str, int i, int i2, int i3, int i4, int i5, int i6, float f);
}

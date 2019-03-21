package com.meicam.sdk;

import com.meicam.sdk.NvsCustomVideoFx.Renderer;
import java.util.List;

public class NvsTimeline extends NvsObject {
    public static final int NvsTimelineWatermarkPosition_BottomLeft = 2;
    public static final int NvsTimelineWatermarkPosition_BottomRight = 3;
    public static final int NvsTimelineWatermarkPosition_TopLeft = 1;
    public static final int NvsTimelineWatermarkPosition_TopRight = 0;

    public static class PlaybackRateControlRegion {
        public float audioGain = 1.0f;
        public long endTime;
        public float playbackRate;
        public long startTime;
    }

    private native NvsTimelineAnimatedSticker nativeAddAnimatedSticker(long j, long j2, long j3, String str, boolean z, boolean z2, String str2);

    private native NvsTimelineVideoFx nativeAddBuiltinTimelineVideoFx(long j, long j2, long j3, String str);

    private native NvsTimelineCaption nativeAddCaption(long j, String str, long j2, long j3, String str2, boolean z);

    private native NvsTimelineVideoFx nativeAddCustomTimelineVideoFx(long j, long j2, long j3, Renderer renderer);

    private native NvsTimelineVideoFx nativeAddPackagedTimelineVideoFx(long j, long j2, long j3, String str);

    private native boolean nativeAddWatermark(long j, String str, int i, int i2, float f, int i3, int i4, int i5);

    private native NvsAudioTrack nativeAppendAudioTrack(long j);

    private native NvsVideoTrack nativeAppendVideoTrack(long j);

    private native boolean nativeApplyTheme(long j, String str);

    private native int nativeAudioTrackCount(long j);

    private native boolean nativeChangeVideoSize(long j, int i, int i2);

    private native void nativeDeleteWatermark(long j);

    private native List<NvsTimelineAnimatedSticker> nativeGetAnimatedStickersByTimelinePosition(long j, long j2);

    private native long nativeGetAudioFadeOutDuration(long j);

    private native NvsAudioResolution nativeGetAudioRes(long j);

    private native NvsAudioTrack nativeGetAudioTrackByIndex(long j, int i);

    private native List<NvsTimelineCaption> nativeGetCaptionsByTimelinePosition(long j, long j2);

    private native String nativeGetCurrentThemeId(long j);

    private native long nativeGetDuration(long j);

    private native NvsTimelineAnimatedSticker nativeGetFirstAnimatedSticker(long j);

    private native NvsTimelineVideoFx nativeGetFirstTimelineVideoFx(long j);

    private native NvsTimelineAnimatedSticker nativeGetLastAnimatedSticker(long j);

    private native NvsTimelineVideoFx nativeGetLastTimelineVideoFx(long j);

    private native NvsTimelineAnimatedSticker nativeGetNextAnimatedSticker(long j, NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker);

    private native NvsTimelineCaption nativeGetNextCaption(long j, NvsTimelineCaption nvsTimelineCaption);

    private native NvsTimelineVideoFx nativeGetNextTimelineVideoFx(long j, NvsTimelineVideoFx nvsTimelineVideoFx);

    private native PlaybackRateControlRegion[] nativeGetPlaybackRateControl(long j);

    private native NvsTimelineAnimatedSticker nativeGetPrevAnimatedSticker(long j, NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker);

    private native NvsTimelineCaption nativeGetPrevCaption(long j, NvsTimelineCaption nvsTimelineCaption);

    private native NvsTimelineVideoFx nativeGetPrevTimelineVideoFx(long j, NvsTimelineVideoFx nvsTimelineVideoFx);

    private native NvsVolume nativeGetThemeMusicVolumeGain(long j);

    private native List<NvsTimelineVideoFx> nativeGetTimelineVideoFxByTimelinePosition(long j, long j2);

    private native NvsRational nativeGetVideoFps(long j);

    private native NvsVideoResolution nativeGetVideoRes(long j);

    private native NvsVideoTrack nativeGetVideoTrackByIndex(long j, int i);

    private native NvsTimelineAnimatedSticker nativeRemoveAnimatedSticker(long j, NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker);

    private native boolean nativeRemoveAudioTrack(long j, int i);

    private native NvsTimelineCaption nativeRemoveCaption(long j, NvsTimelineCaption nvsTimelineCaption);

    private native void nativeRemoveCurrentTheme(long j);

    private native void nativeRemoveTimelineEndingFilter(long j);

    private native void nativeRemoveTimelineEndingLogo(long j);

    private native NvsTimelineVideoFx nativeRemoveTimelineVideoFx(long j, NvsTimelineVideoFx nvsTimelineVideoFx);

    private native boolean nativeRemoveVideoTrack(long j, int i);

    private native void nativeSetAudioFadeOutDuration(long j, long j2);

    private native void nativeSetPlaybackRateControl(long j, PlaybackRateControlRegion[] playbackRateControlRegionArr);

    private native void nativeSetThemeMusicVolumeGain(long j, float f, float f2);

    private native void nativeSetThemeTitleCaptionText(long j, String str);

    private native void nativeSetThemeTrailerCaptionText(long j, String str);

    private native boolean nativeSetTimelineEndingFilter(long j, String str, String str2, long j2);

    private native boolean nativeSetTimelineEndingLogo(long j, String str, int i, int i2, int i3, int i4);

    private native boolean nativeSetWatermarkOpacity(long j, float f);

    private native int nativeVideoTrackCount(long j);

    private native NvsTimelineCaption natvieGetFirstCaption(long j);

    private native NvsTimelineCaption natvieGetLastCaption(long j);

    public NvsVideoResolution getVideoRes() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoRes(this.m_internalObject);
    }

    public NvsAudioResolution getAudioRes() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAudioRes(this.m_internalObject);
    }

    public NvsRational getVideoFps() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoFps(this.m_internalObject);
    }

    public long getDuration() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetDuration(this.m_internalObject);
    }

    public NvsVideoTrack appendVideoTrack() {
        NvsUtils.checkFunctionInMainThread();
        return nativeAppendVideoTrack(this.m_internalObject);
    }

    public NvsAudioTrack appendAudioTrack() {
        NvsUtils.checkFunctionInMainThread();
        return nativeAppendAudioTrack(this.m_internalObject);
    }

    public boolean removeVideoTrack(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveVideoTrack(this.m_internalObject, i);
    }

    public boolean removeAudioTrack(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveAudioTrack(this.m_internalObject, i);
    }

    public int videoTrackCount() {
        NvsUtils.checkFunctionInMainThread();
        return nativeVideoTrackCount(this.m_internalObject);
    }

    public int audioTrackCount() {
        NvsUtils.checkFunctionInMainThread();
        return nativeAudioTrackCount(this.m_internalObject);
    }

    public NvsVideoTrack getVideoTrackByIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetVideoTrackByIndex(this.m_internalObject, i);
    }

    public NvsAudioTrack getAudioTrackByIndex(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAudioTrackByIndex(this.m_internalObject, i);
    }

    public boolean changeVideoSize(int i, int i2) {
        return nativeChangeVideoSize(this.m_internalObject, i, i2);
    }

    public NvsTimelineCaption getFirstCaption() {
        NvsUtils.checkFunctionInMainThread();
        return natvieGetFirstCaption(this.m_internalObject);
    }

    public NvsTimelineCaption getLastCaption() {
        NvsUtils.checkFunctionInMainThread();
        return natvieGetLastCaption(this.m_internalObject);
    }

    public NvsTimelineCaption getPrevCaption(NvsTimelineCaption nvsTimelineCaption) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPrevCaption(this.m_internalObject, nvsTimelineCaption);
    }

    public NvsTimelineCaption getNextCaption(NvsTimelineCaption nvsTimelineCaption) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetNextCaption(this.m_internalObject, nvsTimelineCaption);
    }

    public List<NvsTimelineCaption> getCaptionsByTimelinePosition(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCaptionsByTimelinePosition(this.m_internalObject, j);
    }

    public NvsTimelineCaption addCaption(String str, long j, long j2, String str2) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddCaption(this.m_internalObject, str, j, j2, str2, false);
    }

    public NvsTimelineCaption addPanoramicCaption(String str, long j, long j2, String str2) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddCaption(this.m_internalObject, str, j, j2, str2, true);
    }

    public NvsTimelineCaption removeCaption(NvsTimelineCaption nvsTimelineCaption) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveCaption(this.m_internalObject, nvsTimelineCaption);
    }

    public NvsTimelineAnimatedSticker getFirstAnimatedSticker() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFirstAnimatedSticker(this.m_internalObject);
    }

    public NvsTimelineAnimatedSticker getLastAnimatedSticker() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetLastAnimatedSticker(this.m_internalObject);
    }

    public NvsTimelineAnimatedSticker getPrevAnimatedSticker(NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPrevAnimatedSticker(this.m_internalObject, nvsTimelineAnimatedSticker);
    }

    public NvsTimelineAnimatedSticker getNextAnimatedSticker(NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetNextAnimatedSticker(this.m_internalObject, nvsTimelineAnimatedSticker);
    }

    public List<NvsTimelineAnimatedSticker> getAnimatedStickersByTimelinePosition(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAnimatedStickersByTimelinePosition(this.m_internalObject, j);
    }

    public NvsTimelineAnimatedSticker addAnimatedSticker(long j, long j2, String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddAnimatedSticker(this.m_internalObject, j, j2, str, false, false, new String());
    }

    public NvsTimelineAnimatedSticker addPanoramicAnimatedSticker(long j, long j2, String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddAnimatedSticker(this.m_internalObject, j, j2, str, true, false, new String());
    }

    public NvsTimelineAnimatedSticker addCustomAnimatedSticker(long j, long j2, String str, String str2) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddAnimatedSticker(this.m_internalObject, j, j2, str, false, true, str2);
    }

    public NvsTimelineAnimatedSticker addCustomPanoramicAnimatedSticker(long j, long j2, String str, String str2) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddAnimatedSticker(this.m_internalObject, j, j2, str, true, true, str2);
    }

    public NvsTimelineAnimatedSticker removeAnimatedSticker(NvsTimelineAnimatedSticker nvsTimelineAnimatedSticker) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveAnimatedSticker(this.m_internalObject, nvsTimelineAnimatedSticker);
    }

    public NvsTimelineVideoFx getFirstTimelineVideoFx() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetFirstTimelineVideoFx(this.m_internalObject);
    }

    public NvsTimelineVideoFx getLastTimelineVideoFx() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetLastTimelineVideoFx(this.m_internalObject);
    }

    public NvsTimelineVideoFx getPrevTimelineVideoFx(NvsTimelineVideoFx nvsTimelineVideoFx) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPrevTimelineVideoFx(this.m_internalObject, nvsTimelineVideoFx);
    }

    public NvsTimelineVideoFx getNextTimelineVideoFx(NvsTimelineVideoFx nvsTimelineVideoFx) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetNextTimelineVideoFx(this.m_internalObject, nvsTimelineVideoFx);
    }

    public List<NvsTimelineVideoFx> getTimelineVideoFxByTimelinePosition(long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetTimelineVideoFxByTimelinePosition(this.m_internalObject, j);
    }

    public NvsTimelineVideoFx addBuiltinTimelineVideoFx(long j, long j2, String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddBuiltinTimelineVideoFx(this.m_internalObject, j, j2, str);
    }

    public NvsTimelineVideoFx addPackagedTimelineVideoFx(long j, long j2, String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddPackagedTimelineVideoFx(this.m_internalObject, j, j2, str);
    }

    public NvsTimelineVideoFx addCustomTimelineVideoFx(long j, long j2, Renderer renderer) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddCustomTimelineVideoFx(this.m_internalObject, j, j2, renderer);
    }

    public NvsTimelineVideoFx removeTimelineVideoFx(NvsTimelineVideoFx nvsTimelineVideoFx) {
        NvsUtils.checkFunctionInMainThread();
        return nativeRemoveTimelineVideoFx(this.m_internalObject, nvsTimelineVideoFx);
    }

    public String getCurrentThemeId() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetCurrentThemeId(this.m_internalObject);
    }

    public boolean applyTheme(String str) {
        NvsUtils.checkFunctionInMainThread();
        return nativeApplyTheme(this.m_internalObject, str);
    }

    public void removeCurrentTheme() {
        NvsUtils.checkFunctionInMainThread();
        nativeRemoveCurrentTheme(this.m_internalObject);
    }

    public void setThemeTitleCaptionText(String str) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetThemeTitleCaptionText(this.m_internalObject, str);
    }

    public void setThemeTrailerCaptionText(String str) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetThemeTrailerCaptionText(this.m_internalObject, str);
    }

    public void setThemeMusicVolumeGain(float f, float f2) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetThemeMusicVolumeGain(this.m_internalObject, f, f2);
    }

    public NvsVolume getThemeMusicVolumeGain() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetThemeMusicVolumeGain(this.m_internalObject);
    }

    public boolean addWatermark(String str, int i, int i2, float f, int i3, int i4, int i5) {
        NvsUtils.checkFunctionInMainThread();
        return nativeAddWatermark(this.m_internalObject, str, i, i2, f, i3, i4, i5);
    }

    public void deleteWatermark() {
        NvsUtils.checkFunctionInMainThread();
        nativeDeleteWatermark(this.m_internalObject);
    }

    public boolean setWatermarkOpacity(float f) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetWatermarkOpacity(this.m_internalObject, f);
    }

    public boolean setTimelineEndingLogo(String str, int i, int i2, int i3, int i4) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetTimelineEndingLogo(this.m_internalObject, str, i, i2, i3, i4);
    }

    public boolean setTimelineEndingFilter(String str, String str2, long j) {
        NvsUtils.checkFunctionInMainThread();
        return nativeSetTimelineEndingFilter(this.m_internalObject, str, str2, j);
    }

    public void removeTimelineEndingFilter() {
        NvsUtils.checkFunctionInMainThread();
        nativeRemoveTimelineEndingFilter(this.m_internalObject);
    }

    public void removeTimelineEndingLogo() {
        NvsUtils.checkFunctionInMainThread();
        nativeRemoveTimelineEndingLogo(this.m_internalObject);
    }

    public void setAudioFadeOutDuration(long j) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetAudioFadeOutDuration(this.m_internalObject, j);
    }

    public long getAudioFadeOutDuration() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetAudioFadeOutDuration(this.m_internalObject);
    }

    public void setPlaybackRateControl(PlaybackRateControlRegion[] playbackRateControlRegionArr) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetPlaybackRateControl(this.m_internalObject, playbackRateControlRegionArr);
    }

    public PlaybackRateControlRegion[] getPlaybackRateControl() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetPlaybackRateControl(this.m_internalObject);
    }
}

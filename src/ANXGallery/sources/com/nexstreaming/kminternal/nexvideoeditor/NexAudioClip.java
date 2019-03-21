package com.nexstreaming.kminternal.nexvideoeditor;

import java.util.Arrays;

public final class NexAudioClip {
    public int mAudioOnOff;
    public int mAutoEnvelop;
    public int mBassStrength;
    public int mClipID;
    public String mClipPath;
    public int mClipType;
    public int mClipVolume;
    public int mCompressor;
    public int mEndTime;
    public int mEndTrimTime;
    public String mEnhancedAudioFilter;
    public int mMusicEffector;
    public int mPanLeft;
    public int mPanRight;
    public int mPitchFactor;
    public int mProcessorStrength;
    public int mSpeedControl;
    public int mStartTime;
    public int mStartTrimTime;
    public int mTotalTime;
    public int mVisualClipID;
    public int mVoiceChanger;
    public int[] mVolumeEnvelopeLevel;
    public int[] mVolumeEnvelopeTime;

    public NexAudioClip() {
        this.mClipID = 0;
        this.mVisualClipID = 0;
        this.mClipType = 3;
        this.mTotalTime = 0;
        this.mStartTime = 0;
        this.mEndTime = 0;
        this.mStartTrimTime = 0;
        this.mEndTrimTime = 0;
        this.mAudioOnOff = 0;
        this.mAutoEnvelop = 0;
        this.mClipVolume = 0;
        this.mVolumeEnvelopeLevel = null;
        this.mVolumeEnvelopeTime = null;
        this.mVoiceChanger = 0;
        this.mCompressor = 0;
        this.mPitchFactor = 0;
        this.mMusicEffector = 0;
        this.mProcessorStrength = -1;
        this.mBassStrength = -1;
        this.mPanLeft = -111;
        this.mPanRight = -111;
        this.mSpeedControl = 100;
    }

    public NexAudioClip(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.mClipID = i;
        this.mVisualClipID = i2;
        this.mClipType = i3;
        this.mTotalTime = i4;
        this.mStartTime = i5;
        this.mEndTime = i6;
        this.mStartTrimTime = i7;
        this.mEndTrimTime = i8;
        this.mAudioOnOff = i9;
        this.mClipVolume = i10;
        this.mVoiceChanger = i11;
        this.mCompressor = 0;
        this.mPitchFactor = 0;
        this.mMusicEffector = 0;
        this.mProcessorStrength = -1;
        this.mBassStrength = -1;
        this.mPanLeft = -111;
        this.mPanRight = -111;
        this.mSpeedControl = 100;
    }

    public NexAudioClip(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        this.mClipID = i;
        this.mVisualClipID = i2;
        this.mClipType = i3;
        this.mTotalTime = i4;
        this.mStartTime = i5;
        this.mEndTime = i6;
        this.mStartTrimTime = i7;
        this.mEndTrimTime = i8;
        this.mAudioOnOff = i9;
        this.mAutoEnvelop = i10;
        this.mClipVolume = i11;
        this.mVoiceChanger = i12;
        this.mCompressor = 0;
        this.mPitchFactor = 0;
        this.mMusicEffector = 0;
        this.mProcessorStrength = -1;
        this.mBassStrength = -1;
        this.mPanLeft = -111;
        this.mPanRight = -111;
        this.mSpeedControl = 100;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NexAudioClip nexAudioClip = (NexAudioClip) obj;
        if (this.mClipID != nexAudioClip.mClipID || this.mVisualClipID != nexAudioClip.mVisualClipID || this.mClipType != nexAudioClip.mClipType || this.mTotalTime != nexAudioClip.mTotalTime || this.mStartTime != nexAudioClip.mStartTime || this.mEndTime != nexAudioClip.mEndTime || this.mStartTrimTime != nexAudioClip.mStartTrimTime || this.mEndTrimTime != nexAudioClip.mEndTrimTime || this.mAudioOnOff != nexAudioClip.mAudioOnOff || this.mAutoEnvelop != nexAudioClip.mAutoEnvelop || this.mClipVolume != nexAudioClip.mClipVolume || this.mVoiceChanger != nexAudioClip.mVoiceChanger || this.mCompressor != nexAudioClip.mCompressor || this.mPitchFactor != nexAudioClip.mPitchFactor || this.mMusicEffector != nexAudioClip.mMusicEffector || this.mProcessorStrength != nexAudioClip.mProcessorStrength || this.mBassStrength != nexAudioClip.mBassStrength || this.mPanLeft != nexAudioClip.mPanLeft || this.mPanRight != nexAudioClip.mPanRight || this.mSpeedControl != nexAudioClip.mSpeedControl || !this.mClipPath.equals(nexAudioClip.mClipPath) || !Arrays.equals(this.mVolumeEnvelopeLevel, nexAudioClip.mVolumeEnvelopeLevel) || !Arrays.equals(this.mVolumeEnvelopeTime, nexAudioClip.mVolumeEnvelopeTime)) {
            return false;
        }
        if (this.mEnhancedAudioFilter == null ? nexAudioClip.mEnhancedAudioFilter != null : !this.mEnhancedAudioFilter.equals(nexAudioClip.mEnhancedAudioFilter)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = ((this.mVolumeEnvelopeLevel != null ? Arrays.hashCode(this.mVolumeEnvelopeLevel) : 0) + (((((((((((((((((((((((this.mClipID * 31) + this.mVisualClipID) * 31) + this.mClipType) * 31) + this.mTotalTime) * 31) + this.mStartTime) * 31) + this.mEndTime) * 31) + this.mStartTrimTime) * 31) + this.mEndTrimTime) * 31) + this.mClipPath.hashCode()) * 31) + this.mAudioOnOff) * 31) + this.mAutoEnvelop) * 31) + this.mClipVolume) * 31)) * 31;
        if (this.mVolumeEnvelopeTime != null) {
            hashCode = Arrays.hashCode(this.mVolumeEnvelopeTime);
        } else {
            hashCode = 0;
        }
        hashCode = (((((((((((((((((((hashCode + hashCode2) * 31) + this.mVoiceChanger) * 31) + this.mCompressor) * 31) + this.mPitchFactor) * 31) + this.mMusicEffector) * 31) + this.mProcessorStrength) * 31) + this.mBassStrength) * 31) + this.mPanLeft) * 31) + this.mPanRight) * 31) + this.mSpeedControl) * 31;
        if (this.mEnhancedAudioFilter != null) {
            i = this.mEnhancedAudioFilter.hashCode();
        }
        return hashCode + i;
    }
}

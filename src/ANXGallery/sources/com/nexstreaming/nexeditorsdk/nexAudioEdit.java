package com.nexstreaming.nexeditorsdk;

import android.util.Log;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexAudioEditOf;

public class nexAudioEdit implements Cloneable {
    private static final String TAG = "nexAudioEdit";
    public static final int kMusicEffect_LIVE_CONCERT = 1;
    public static final int kMusicEffect_MUSIC_ENHANCER = 3;
    public static final int kMusicEffect_NONE = 0;
    public static final int kMusicEffect_STEREO_CHORUS = 2;
    public static final int kVoiceFactor_CHIPMUNK = 1;
    public static final int kVoiceFactor_DEEP = 3;
    public static final int kVoiceFactor_MODULATION = 4;
    public static final int kVoiceFactor_NONE = 0;
    public static final int kVoiceFactor_ROBOT = 2;
    private int VCfactor = 0;
    private int mBassStrength = -1;
    private nexClip mClip;
    private int mCompressor = 0;
    private String mEnhancedAudioFilter = null;
    private int mMusicEffect = 0;
    private int mPanLeft = -111;
    private int mPanRight = -111;
    private int mPitch = 0;
    private int mProcessorStrength = -1;

    private nexAudioEdit() {
    }

    private nexAudioEdit(nexClip nexclip) {
        this.mClip = nexclip;
    }

    protected static nexAudioEdit clone(nexClip nexclip, nexAudioEdit nexaudioedit) {
        nexAudioEdit nexaudioedit2;
        CloneNotSupportedException e;
        try {
            nexaudioedit2 = (nexAudioEdit) nexaudioedit.clone();
            try {
                nexaudioedit2.mClip = nexclip;
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return nexaudioedit2;
            }
        } catch (CloneNotSupportedException e3) {
            CloneNotSupportedException cloneNotSupportedException = e3;
            nexaudioedit2 = null;
            e = cloneNotSupportedException;
            e.printStackTrace();
            return nexaudioedit2;
        }
        return nexaudioedit2;
    }

    static nexAudioEdit getnexAudioEdit(nexClip nexclip) {
        if (nexclip.getClipType() == 4 || nexclip.getClipType() == 3) {
            return new nexAudioEdit(nexclip);
        }
        return null;
    }

    public void setPitch(int i) {
        if (this.mClip.getAttachmentState()) {
            this.mPitch = i;
        } else {
            Log.d(TAG, "setPitch getInfo fail!");
        }
    }

    public int getPitch() {
        return this.mPitch;
    }

    public void setCompressor(int i) {
        if (this.mClip.getAttachmentState()) {
            this.mCompressor = i;
        } else {
            Log.d(TAG, "setCompressor getInfo fail!");
        }
    }

    public int getCompressor() {
        return this.mCompressor;
    }

    public void setProcessorStrength(int i) {
        if (this.mClip.getAttachmentState()) {
            this.mProcessorStrength = i;
        } else {
            Log.d(TAG, "setProcessorStrength getInfo fail!");
        }
    }

    public int getProcessorStrength() {
        return this.mProcessorStrength;
    }

    public void setBassStrength(int i) {
        if (this.mClip.getAttachmentState()) {
            this.mBassStrength = i;
        } else {
            Log.d(TAG, "setBassStrength getInfo fail!");
        }
    }

    public int getBassStrength() {
        return this.mBassStrength;
    }

    public void setMusicEffect(int i) {
        if (this.mClip.getAttachmentState()) {
            this.mMusicEffect = i;
        } else {
            Log.d(TAG, "setMusicEffect getInfo fail!");
        }
    }

    public int getMusicEffect() {
        return this.mMusicEffect;
    }

    public int getPanLeft() {
        return this.mPanLeft;
    }

    public void setPanLeft(int i) {
        if (this.mClip.getAttachmentState()) {
            this.mPanLeft = i;
        } else {
            Log.d(TAG, "setPanleft getInfo fail!");
        }
    }

    public int getPanRight() {
        return this.mPanRight;
    }

    public void setPanRight(int i) {
        if (this.mClip.getAttachmentState()) {
            this.mPanRight = i;
        } else {
            Log.d(TAG, "setPanRight getInfo fail!");
        }
    }

    public void setVoiceChangerFactor(int i) {
        this.VCfactor = i;
    }

    public int getVoiceChangerFactor() {
        return this.VCfactor;
    }

    public String getEnhancedAudioFilter() {
        return this.mEnhancedAudioFilter;
    }

    public void setEnhancedAudioFilter(String str) {
        this.mEnhancedAudioFilter = str;
    }

    nexAudioEditOf getSaveData() {
        nexAudioEditOf nexaudioeditof = new nexAudioEditOf();
        nexaudioeditof.VCfactor = this.VCfactor;
        nexaudioeditof.mPitch = this.mPitch;
        nexaudioeditof.mCompressor = this.mCompressor;
        nexaudioeditof.mProcessorStrength = this.mProcessorStrength;
        nexaudioeditof.mBassStrength = this.mBassStrength;
        nexaudioeditof.mMusicEffect = this.mMusicEffect;
        nexaudioeditof.mPanLeft = this.mPanLeft;
        nexaudioeditof.mPanRight = this.mPanRight;
        return nexaudioeditof;
    }

    nexAudioEdit(nexClip nexclip, nexAudioEditOf nexaudioeditof) {
        this.VCfactor = nexaudioeditof.VCfactor;
        this.mPitch = nexaudioeditof.mPitch;
        this.mCompressor = nexaudioeditof.mCompressor;
        this.mProcessorStrength = nexaudioeditof.mProcessorStrength;
        this.mBassStrength = nexaudioeditof.mBassStrength;
        this.mMusicEffect = nexaudioeditof.mMusicEffect;
        this.mPanLeft = nexaudioeditof.mPanLeft;
        this.mPanRight = nexaudioeditof.mPanRight;
        this.mClip = nexclip;
    }
}

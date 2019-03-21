package com.nexstreaming.nexeditorsdk;

import android.util.Log;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.nexstreaming.nexeditorsdk.exception.InvalidRangeException;
import com.nexstreaming.nexeditorsdk.nexSaveDataFormat.nexVideoClipEditOf;

public final class nexVideoClipEdit implements Cloneable {
    @Deprecated
    public static int kAutoTrim_Divided = 1;
    @Deprecated
    public static int kAutoTrim_Interval = 2;
    public static final int kSpeedControl_MaxValue = 1600;
    public static final int kSpeedControl_MinValue = 3;
    private nexClip mClip;
    int mFreezeDuration = 0;
    private int mMasterSpeedControl = 100;
    int mTrimEndDuration;
    int mTrimStartDuration;
    boolean mUpdated;

    protected static nexVideoClipEdit clone(nexVideoClipEdit nexvideoclipedit) {
        try {
            return (nexVideoClipEdit) nexvideoclipedit.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }

    private nexVideoClipEdit() {
    }

    private nexVideoClipEdit(nexClip nexclip) {
        this.mClip = nexclip;
    }

    static nexVideoClipEdit getnexVideoClipEdit(nexClip nexclip) {
        if (nexclip.getClipType() != 4) {
            return null;
        }
        return new nexVideoClipEdit(nexclip);
    }

    public void setTrim(int i, int i2) {
        if (i2 <= i) {
            throw new InvalidRangeException(i, i2);
        }
        this.mTrimStartDuration = i;
        this.mTrimEndDuration = this.mClip.getTotalTime() - i2;
        if (this.mTrimEndDuration < 0 || this.mTrimStartDuration < 0) {
            throw new InvalidRangeException(this.mTrimStartDuration, this.mTrimEndDuration);
        }
        this.mUpdated = true;
        this.mClip.setProjectUpdateSignal(false);
    }

    public int getStartTrimTime() {
        return this.mTrimStartDuration;
    }

    public int getEndTrimTime() {
        return this.mClip.getTotalTime() - this.mTrimEndDuration;
    }

    @Deprecated
    public void addTrim(int i, int i2, int i3) {
    }

    @Deprecated
    public int removeTrim(int i) {
        return -1;
    }

    @Deprecated
    public int getTrimCount() {
        return 0;
    }

    public void setSpeedControl(int i) {
        if (this.mClip.getAudioOnOff()) {
            i = speedControlTab(i);
        }
        if (this.mMasterSpeedControl != i) {
            this.mUpdated = true;
            this.mClip.setProjectUpdateSignal(false);
            this.mMasterSpeedControl = i;
        }
    }

    public int getSpeedControl() {
        return this.mMasterSpeedControl;
    }

    @Deprecated
    public int setAutoTrim(int i, int i2) {
        return 0;
    }

    public void clearTrim() {
        this.mTrimStartDuration = 0;
        this.mTrimEndDuration = 0;
        this.mUpdated = true;
        this.mClip.setProjectUpdateSignal(false);
    }

    protected void setFreezeDuration(int i) {
        this.mFreezeDuration = i;
    }

    public int getDuration() {
        int totalTime;
        if (this.mTrimStartDuration == 0 && this.mTrimEndDuration == 0) {
            totalTime = this.mClip.getTotalTime();
        } else {
            totalTime = (this.mClip.getTotalTime() - this.mTrimStartDuration) - this.mTrimEndDuration;
        }
        if (this.mMasterSpeedControl != 100) {
            if (this.mMasterSpeedControl == 2) {
                totalTime *= 50;
            } else if (this.mMasterSpeedControl == 3) {
                totalTime *= 32;
            } else if (this.mMasterSpeedControl == 6) {
                totalTime *= 16;
            } else if (this.mMasterSpeedControl == 13) {
                totalTime *= 8;
            } else {
                totalTime = Math.round((float) ((totalTime * 100) / this.mMasterSpeedControl));
            }
        }
        if (totalTime < 500) {
            Log.w("nexVideoClipEdit", "clip duration under 500! duration=" + totalTime + ", speed=" + this.mMasterSpeedControl + ", trim_start=" + this.mTrimStartDuration + ", trim_end=" + this.mTrimEndDuration);
        }
        return totalTime + this.mFreezeDuration;
    }

    private int speedControlTab(int i) {
        int i2 = kSpeedControl_MaxValue;
        if (!BuildConfig.KM_PROJECT.equals("Gionee")) {
            int[] iArr = new int[]{3, 6, 13, 25, 50, 75, 100, BaiduSceneResult.TRAVEL_OTHER, 150, 175, 200, 400, 800, kSpeedControl_MaxValue};
            for (int i3 = 0; i3 < iArr.length; i3++) {
                if (iArr[i3] >= i) {
                    i2 = iArr[i3];
                    break;
                }
            }
            return i2;
        } else if (i < 13) {
            return 13;
        } else {
            return i > kSpeedControl_MaxValue ? kSpeedControl_MaxValue : i;
        }
    }

    nexVideoClipEditOf getSaveData() {
        nexVideoClipEditOf nexvideoclipeditof = new nexVideoClipEditOf();
        nexvideoclipeditof.mTrimStartDuration = this.mTrimStartDuration;
        nexvideoclipeditof.mTrimEndDuration = this.mTrimEndDuration;
        nexvideoclipeditof.mMasterSpeedControl = this.mMasterSpeedControl;
        return nexvideoclipeditof;
    }

    nexVideoClipEdit(nexClip nexclip, nexVideoClipEditOf nexvideoclipeditof) {
        this.mTrimStartDuration = nexvideoclipeditof.mTrimStartDuration;
        this.mTrimEndDuration = nexvideoclipeditof.mTrimEndDuration;
        this.mMasterSpeedControl = nexvideoclipeditof.mMasterSpeedControl;
        this.mClip = nexclip;
    }
}

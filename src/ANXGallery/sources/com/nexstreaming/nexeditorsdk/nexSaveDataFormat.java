package com.nexstreaming.nexeditorsdk;

import android.graphics.Rect;
import android.graphics.RectF;
import com.nexstreaming.nexeditorsdk.nexAssetPackageManager.ItemMethodType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class nexSaveDataFormat {
    public nexCollageOf collage;
    public int nexSaveDataFormatVersion = 0;
    public nexProjectOf project;

    public static class nexAudioEditOf {
        public int VCfactor = 0;
        public int mBassStrength = -1;
        public int mCompressor = 0;
        public int mMusicEffect = 0;
        public int mPanLeft = -111;
        public int mPanRight = -111;
        public int mPitch = 0;
        public int mProcessorStrength = -1;
    }

    public static class nexAudioEnvelopOf {
        public int m_totalTime;
        public int m_trimEndTime;
        public int m_trimStartTime;
        public ArrayList<Integer> m_volumeEnvelopeLevel;
        public ArrayList<Integer> m_volumeEnvelopeTime;
    }

    public static class nexAudioItemOf {
        public nexClipOf mClip;
        public int mId;
        public int mSpeedControl = 100;
        public int mTrimEndDuration;
        public int mTrimStartDuration;
    }

    public static class nexClipOf {
        public int mAVSyncAudioStartTime = 0;
        public nexAudioEditOf mAudioEdit;
        public nexAudioEnvelopOf mAudioEnvelop = null;
        public boolean mAudioOnOff = true;
        public nexEffectOf mClipEffect = null;
        public String mCollageDrawInfoID;
        public nexColorEffectOf mColorEffect;
        public nexCropOf mCrop;
        public int mCustomLUT_A = 0;
        public int mCustomLUT_B = 0;
        public int mCustomLUT_Power = nexCrop.ABSTRACT_DIMENSION;
        public List<nexDrawInfo> mDrawInfos;
        public int mDuration = nexProject.kAutoThemeClipDuration;
        public int mEndTime = 0;
        public int mFaceDetected = 0;
        public Rect mFaceRect;
        public boolean mFacedetectProcessed = false;
        public ClipInfo mInfo;
        public boolean mMediaInfoUseCache = true;
        public boolean mOverlappedTransition = true;
        public String mPath = null;
        public boolean mPropertySlowVideoMode;
        public int mRotate;
        public int mStartTime = 0;
        public int mTemplateAudioPos = 0;
        public int mTemplateEffectID = 0;
        public int mTitleEffectEndTime;
        public int mTitleEffectStartTime;
        public String mTransCodingPath = null;
        public nexEffectOf mTransitionEffect = null;
        public nexVideoClipEditOf mVideoEdit;
        public boolean mVignette;
        public int m_BGMVolume = 100;
        public int m_Brightness;
        public int m_ClipVolume = 100;
        public int m_Contrast;
        public int m_Saturation;
        public boolean misMustDownSize;
    }

    public static class nexCollageDrawInfoOf {
        public RectF scaledRect;
        public String userLut;
    }

    public static class nexCollageOf {
        public List<nexCollageDrawInfoOf> drawInfos;
        public List<nexCollageTitleInfoOf> titleInfos;
    }

    public static class nexCollageTitleInfoOf {
        public String userDropShadowColor;
        public String userFillColor;
        public String userFont;
        public String userStrokeColor;
        public String userText;
    }

    public static class nexColorEffectOf {
        public String assetItemID;
        public float brightness;
        public float contrast;
        public String kineMasterID;
        public boolean lut_enabled_ = false;
        public int lut_resource_id_ = 0;
        public String presetName;
        public float saturation;
        public int tintColor;
    }

    public static class nexCropOf {
        public int m_endPositionBottom = 0;
        public int m_endPositionLeft = 0;
        public int m_endPositionRight = 0;
        public int m_endPositionTop = 0;
        public float m_faceBounds_bottom;
        public float m_faceBounds_left;
        public float m_faceBounds_right;
        public boolean m_faceBounds_set;
        public float m_faceBounds_top;
        public int m_facePositionBottom = 0;
        public int m_facePositionLeft = 0;
        public int m_facePositionRight = 0;
        public int m_facePositionTop = 0;
        public int m_height = 0;
        public int m_rotatedEndPositionBottom = 0;
        public int m_rotatedEndPositionLeft = 0;
        public int m_rotatedEndPositionRight = 0;
        public int m_rotatedEndPositionTop = 0;
        public int m_rotatedFacePositionBottom = 0;
        public int m_rotatedFacePositionLeft = 0;
        public int m_rotatedFacePositionRight = 0;
        public int m_rotatedFacePositionTop = 0;
        public int m_rotatedStartPositionBottom = 0;
        public int m_rotatedStartPositionLeft = 0;
        public int m_rotatedStartPositionRight = 0;
        public int m_rotatedStartPositionTop = 0;
        public int m_rotation = 0;
        public int m_startPositionBottom = 0;
        public int m_startPositionLeft = 0;
        public int m_startPositionRight = 0;
        public int m_startPositionTop = 0;
        public int m_width = 0;
    }

    public static class nexEffectOf {
        public ItemMethodType itemMethodType;
        public String mAutoID;
        public int mDuration;
        public int mEffectOffset;
        public int mEffectOverlap;
        public String mID;
        public boolean mIsResolveOptions = false;
        public int mMaxDuration;
        public int mMinDuration;
        public String mName;
        public boolean mOptionsUpdate;
        public int mShowEndTime = 10000;
        public int mShowStartTime = 0;
        public String[] mTitles = null;
        public int mType;
        public HashMap<String, String> m_effectOptions;
    }

    public static class nexProjectOf {
        public int mAudioFadeInTime = 200;
        public int mAudioFadeOutTime = 5000;
        public int mBGMTrimEndTime;
        public int mBGMTrimStartTime;
        public float mBGMVolumeScale = 0.5f;
        public nexClipOf mBackGroundMusic = null;
        public String mEndingTitle = null;
        public boolean mLoopBGM = true;
        public int mManualVolCtl = 0;
        public String mOpeningTitle = null;
        public List<nexClipOf> mPrimaryItems;
        public int mProjectVolume = 100;
        public List<nexAudioItemOf> mSecondaryItems;
        public int mStartTimeBGM = 0;
        public List<nexDrawInfo> mSubEffectInfo;
        public int mTemplateApplyMode = 0;
        public boolean mTemplateOverlappedTransition = true;
        public List<nexDrawInfo> mTopEffectInfo;
        public boolean mUseThemeMusic2BGM = true;
    }

    public static class nexVideoClipEditOf {
        public int mMasterSpeedControl = 100;
        public int mTrimEndDuration;
        public int mTrimStartDuration;
    }
}

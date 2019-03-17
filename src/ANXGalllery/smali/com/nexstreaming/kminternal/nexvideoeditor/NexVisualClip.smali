.class public final Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;
.super Ljava/lang/Object;
.source "NexVisualClip.java"


# instance fields
.field mAudioClipVec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioOnOff:I

.field public mBGMVolume:I

.field public mBassStrength:I

.field public mBrightness:I

.field public mClipEffectID:Ljava/lang/String;

.field public mClipID:I

.field public mClipPath:Ljava/lang/String;

.field public mClipType:I

.field public mClipVolume:I

.field public mCompressor:I

.field public mContrast:I

.field public mCustomLUT_A:I

.field public mCustomLUT_B:I

.field public mCustomLUT_Power:I

.field public mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

.field public mEffectDuration:I

.field public mEffectOffset:I

.field public mEffectOverlap:I

.field public mEndMatrix:[F

.field public mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

.field public mEndTime:I

.field public mEndTrimTime:I

.field public mEnhancedAudioFilter:Ljava/lang/String;

.field public mExistAudio:I

.field public mExistVideo:I

.field public mFilterID:Ljava/lang/String;

.field public mFreezeDuration:I

.field public mHeight:I

.field public mLUT:I

.field public mManualVolumeControl:I

.field public mMotionTracked:I

.field public mMusicEffector:I

.field public mPanLeft:I

.field public mPanRight:I

.field public mPitchFactor:I

.field public mProcessorStrength:I

.field public mRotateState:I

.field public mSaturation:I

.field public mSlowMotion:I

.field public mSpeedControl:I

.field public mStartMatrix:[F

.field public mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

.field public mStartTime:I

.field public mStartTrimTime:I

.field public mThumbnailPath:Ljava/lang/String;

.field public mTintcolor:I

.field public mTitle:Ljava/lang/String;

.field public mTitleEffectID:Ljava/lang/String;

.field public mTitleEndTime:I

.field public mTitleStartTime:I

.field public mTitleStyle:I

.field public mTotalAudioTime:I

.field public mTotalTime:I

.field public mTotalVideoTime:I

.field public mVignette:I

.field public mVoiceChanger:I

.field public mVolumeEnvelopeLevel:[I

.field public mVolumeEnvelopeTime:[I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/16 v3, -0x6f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    .line 18
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipType:I

    .line 20
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalAudioTime:I

    .line 21
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalVideoTime:I

    .line 23
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    .line 24
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    .line 25
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    .line 26
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    .line 27
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTrimTime:I

    .line 28
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mWidth:I

    .line 29
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mHeight:I

    .line 30
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistVideo:I

    .line 31
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistAudio:I

    .line 32
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStyle:I

    .line 33
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStartTime:I

    .line 34
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEndTime:I

    .line 35
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 36
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 37
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;-><init>(IIII)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    .line 38
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    .line 39
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    .line 40
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBGMVolume:I

    .line 41
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mRotateState:I

    .line 43
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBrightness:I

    .line 44
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mContrast:I

    .line 45
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSaturation:I

    .line 46
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTintcolor:I

    .line 47
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_A:I

    .line 48
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_B:I

    .line 49
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_Power:I

    .line 50
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mLUT:I

    .line 51
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVignette:I

    .line 53
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    .line 54
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVoiceChanger:I

    .line 55
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCompressor:I

    .line 56
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPitchFactor:I

    .line 57
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMusicEffector:I

    .line 58
    iput v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mProcessorStrength:I

    .line 59
    iput v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBassStrength:I

    .line 60
    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanLeft:I

    .line 61
    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanRight:I

    .line 63
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    .line 64
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOffset:I

    .line 65
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOverlap:I

    .line 67
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeLevel:[I

    .line 68
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeTime:[I

    .line 70
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartMatrix:[F

    .line 71
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndMatrix:[F

    .line 73
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSlowMotion:I

    .line 74
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMotionTracked:I

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    .line 77
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFreezeDuration:I

    .line 78
    return-void
.end method


# virtual methods
.method public addAudioClip(Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;)I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public clearAudioClips()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 115
    return-void
.end method

.method public deleteAudioClip(I)V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    iget v0, v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    if-ne v0, p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 103
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 194
    check-cast p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;

    .line 196
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    if-ne v2, v3, :cond_0

    .line 197
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipType:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipType:I

    if-ne v2, v3, :cond_0

    .line 198
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalAudioTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalAudioTime:I

    if-ne v2, v3, :cond_0

    .line 199
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalVideoTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalVideoTime:I

    if-ne v2, v3, :cond_0

    .line 200
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    if-ne v2, v3, :cond_0

    .line 201
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    if-ne v2, v3, :cond_0

    .line 202
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    if-ne v2, v3, :cond_0

    .line 203
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    if-ne v2, v3, :cond_0

    .line 204
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTrimTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTrimTime:I

    if-ne v2, v3, :cond_0

    .line 205
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mWidth:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mWidth:I

    if-ne v2, v3, :cond_0

    .line 206
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mHeight:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mHeight:I

    if-ne v2, v3, :cond_0

    .line 207
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistVideo:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistVideo:I

    if-ne v2, v3, :cond_0

    .line 208
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistAudio:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistAudio:I

    if-ne v2, v3, :cond_0

    .line 209
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStyle:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStyle:I

    if-ne v2, v3, :cond_0

    .line 210
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStartTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStartTime:I

    if-ne v2, v3, :cond_0

    .line 211
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEndTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEndTime:I

    if-ne v2, v3, :cond_0

    .line 212
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    if-ne v2, v3, :cond_0

    .line 213
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    if-ne v2, v3, :cond_0

    .line 214
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBGMVolume:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBGMVolume:I

    if-ne v2, v3, :cond_0

    .line 215
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mRotateState:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mRotateState:I

    if-ne v2, v3, :cond_0

    .line 216
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBrightness:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBrightness:I

    if-ne v2, v3, :cond_0

    .line 217
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mContrast:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mContrast:I

    if-ne v2, v3, :cond_0

    .line 218
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSaturation:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSaturation:I

    if-ne v2, v3, :cond_0

    .line 219
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTintcolor:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTintcolor:I

    if-ne v2, v3, :cond_0

    .line 220
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mLUT:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mLUT:I

    if-ne v2, v3, :cond_0

    .line 221
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_A:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_A:I

    if-ne v2, v3, :cond_0

    .line 222
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_B:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_B:I

    if-ne v2, v3, :cond_0

    .line 223
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_Power:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_Power:I

    if-ne v2, v3, :cond_0

    .line 224
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVignette:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVignette:I

    if-ne v2, v3, :cond_0

    .line 225
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    if-ne v2, v3, :cond_0

    .line 226
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVoiceChanger:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVoiceChanger:I

    if-ne v2, v3, :cond_0

    .line 227
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    if-ne v2, v3, :cond_0

    .line 228
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOffset:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOffset:I

    if-ne v2, v3, :cond_0

    .line 229
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOverlap:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOverlap:I

    if-ne v2, v3, :cond_0

    .line 230
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCompressor:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCompressor:I

    if-ne v2, v3, :cond_0

    .line 231
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPitchFactor:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPitchFactor:I

    if-ne v2, v3, :cond_0

    .line 232
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMusicEffector:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMusicEffector:I

    if-ne v2, v3, :cond_0

    .line 233
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mProcessorStrength:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mProcessorStrength:I

    if-ne v2, v3, :cond_0

    .line 234
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBassStrength:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBassStrength:I

    if-ne v2, v3, :cond_0

    .line 235
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mManualVolumeControl:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mManualVolumeControl:I

    if-ne v2, v3, :cond_0

    .line 236
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanLeft:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanLeft:I

    if-ne v2, v3, :cond_0

    .line 237
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanRight:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanRight:I

    if-ne v2, v3, :cond_0

    .line 238
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSlowMotion:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSlowMotion:I

    if-ne v2, v3, :cond_0

    .line 239
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMotionTracked:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMotionTracked:I

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    :cond_4
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFilterID:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFilterID:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFilterID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    :cond_5
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    :cond_6
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    :cond_7
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v2, v3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    :cond_8
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartMatrix:[F

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartMatrix:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndMatrix:[F

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndMatrix:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mThumbnailPath:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mThumbnailPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    :cond_9
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeLevel:[I

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeTime:[I

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeTime:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFreezeDuration:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFreezeDuration:I

    if-ne v2, v3, :cond_0

    .line 266
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEnhancedAudioFilter:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEnhancedAudioFilter:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEnhancedAudioFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    :cond_a
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    move v0, v1

    :cond_c
    :goto_1
    move v1, v0

    goto/16 :goto_0

    .line 241
    :cond_d
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 242
    :cond_e
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 244
    :cond_f
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 246
    :cond_10
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFilterID:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 249
    :cond_11
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 251
    :cond_12
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 253
    :cond_13
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v2, :cond_8

    goto/16 :goto_0

    .line 259
    :cond_14
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mThumbnailPath:Ljava/lang/String;

    if-eqz v2, :cond_9

    goto/16 :goto_0

    .line 266
    :cond_15
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEnhancedAudioFilter:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto/16 :goto_0

    .line 268
    :cond_16
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    if-nez v2, :cond_b

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 273
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipID:I

    .line 274
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipType:I

    add-int/2addr v0, v2

    .line 275
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalAudioTime:I

    add-int/2addr v0, v2

    .line 276
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalVideoTime:I

    add-int/2addr v0, v2

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTotalTime:I

    add-int/2addr v0, v2

    .line 278
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTime:I

    add-int/2addr v0, v2

    .line 279
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTime:I

    add-int/2addr v0, v2

    .line 280
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartTrimTime:I

    add-int/2addr v0, v2

    .line 281
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndTrimTime:I

    add-int/2addr v0, v2

    .line 282
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mWidth:I

    add-int/2addr v0, v2

    .line 283
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mHeight:I

    add-int/2addr v0, v2

    .line 284
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistVideo:I

    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mExistAudio:I

    add-int/2addr v0, v2

    .line 286
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 287
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStyle:I

    add-int/2addr v0, v2

    .line 288
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleStartTime:I

    add-int/2addr v0, v2

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEndTime:I

    add-int/2addr v0, v2

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioOnOff:I

    add-int/2addr v0, v2

    .line 291
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipVolume:I

    add-int/2addr v0, v2

    .line 292
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBGMVolume:I

    add-int/2addr v0, v2

    .line 293
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mRotateState:I

    add-int/2addr v0, v2

    .line 294
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBrightness:I

    add-int/2addr v0, v2

    .line 295
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mContrast:I

    add-int/2addr v0, v2

    .line 296
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSaturation:I

    add-int/2addr v0, v2

    .line 297
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTintcolor:I

    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mLUT:I

    add-int/2addr v0, v2

    .line 299
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_A:I

    add-int/2addr v0, v2

    .line 300
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_B:I

    add-int/2addr v0, v2

    .line 301
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCustomLUT_Power:I

    add-int/2addr v0, v2

    .line 302
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVignette:I

    add-int/2addr v0, v2

    .line 303
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSpeedControl:I

    add-int/2addr v0, v2

    .line 304
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVoiceChanger:I

    add-int/2addr v0, v2

    .line 305
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectDuration:I

    add-int/2addr v0, v2

    .line 306
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOffset:I

    add-int/2addr v0, v2

    .line 307
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEffectOverlap:I

    add-int/2addr v0, v2

    .line 308
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipEffectID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 309
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mTitleEffectID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 310
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFilterID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFilterID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 312
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 313
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 314
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartMatrix:[F

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartMatrix:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 315
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndMatrix:[F

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndMatrix:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 316
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mClipPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mThumbnailPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 318
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeLevel:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeLevel:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 319
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeTime:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mVolumeEnvelopeTime:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 320
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEnhancedAudioFilter:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEnhancedAudioFilter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 321
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mCompressor:I

    add-int/2addr v0, v2

    .line 322
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPitchFactor:I

    add-int/2addr v0, v2

    .line 323
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMusicEffector:I

    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mProcessorStrength:I

    add-int/2addr v0, v2

    .line 325
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mBassStrength:I

    add-int/2addr v0, v2

    .line 326
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mManualVolumeControl:I

    add-int/2addr v0, v2

    .line 327
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanLeft:I

    add-int/2addr v0, v2

    .line 328
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mPanRight:I

    add-int/2addr v0, v2

    .line 329
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mSlowMotion:I

    add-int/2addr v0, v2

    .line 330
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mMotionTracked:I

    add-int/2addr v0, v2

    .line 331
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mAudioClipVec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 332
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mFreezeDuration:I

    add-int/2addr v0, v1

    .line 334
    return v0

    :cond_1
    move v0, v1

    .line 286
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 308
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 309
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 310
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 311
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 312
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 313
    goto/16 :goto_6

    :cond_8
    move v0, v1

    .line 314
    goto/16 :goto_7

    :cond_9
    move v0, v1

    .line 315
    goto/16 :goto_8

    :cond_a
    move v0, v1

    .line 317
    goto/16 :goto_9

    :cond_b
    move v0, v1

    .line 318
    goto :goto_a

    :cond_c
    move v0, v1

    .line 319
    goto :goto_b

    :cond_d
    move v0, v1

    .line 320
    goto :goto_c
.end method

.method public setDestRect(IIII)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mDestRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 93
    return-void
.end method

.method public setEndRect(IIII)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mEndRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 88
    return-void
.end method

.method public setStartRect(IIII)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexVisualClip;->mStartRect:Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexRectangle;->setRect(IIII)V

    .line 83
    return-void
.end method

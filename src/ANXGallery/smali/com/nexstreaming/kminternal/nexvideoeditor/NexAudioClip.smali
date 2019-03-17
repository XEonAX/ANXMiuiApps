.class public final Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;
.super Ljava/lang/Object;
.source "NexAudioClip.java"


# instance fields
.field public mAudioOnOff:I

.field public mAutoEnvelop:I

.field public mBassStrength:I

.field public mClipID:I

.field public mClipPath:Ljava/lang/String;

.field public mClipType:I

.field public mClipVolume:I

.field public mCompressor:I

.field public mEndTime:I

.field public mEndTrimTime:I

.field public mEnhancedAudioFilter:Ljava/lang/String;

.field public mMusicEffector:I

.field public mPanLeft:I

.field public mPanRight:I

.field public mPitchFactor:I

.field public mProcessorStrength:I

.field public mSpeedControl:I

.field public mStartTime:I

.field public mStartTrimTime:I

.field public mTotalTime:I

.field public mVisualClipID:I

.field public mVoiceChanger:I

.field public mVolumeEnvelopeLevel:[I

.field public mVolumeEnvelopeTime:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, -0x6f

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 20
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVisualClipID:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    .line 22
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    .line 23
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 24
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    .line 25
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    .line 26
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 27
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    .line 28
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAutoEnvelop:I

    .line 29
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    .line 30
    iput-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeLevel:[I

    .line 31
    iput-object v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeTime:[I

    .line 32
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVoiceChanger:I

    .line 33
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mCompressor:I

    .line 34
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPitchFactor:I

    .line 35
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mMusicEffector:I

    .line 36
    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mProcessorStrength:I

    .line 37
    iput v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mBassStrength:I

    .line 38
    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanLeft:I

    .line 39
    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanRight:I

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    .line 41
    return-void
.end method

.method public constructor <init>(IIIIIIIIIII)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x6f

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 56
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVisualClipID:I

    .line 57
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    .line 58
    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    .line 59
    iput p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 60
    iput p6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    .line 61
    iput p7, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    .line 62
    iput p8, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 63
    iput p9, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    .line 64
    iput p10, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    .line 65
    iput p11, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVoiceChanger:I

    .line 66
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mCompressor:I

    .line 67
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPitchFactor:I

    .line 68
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mMusicEffector:I

    .line 69
    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mProcessorStrength:I

    .line 70
    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mBassStrength:I

    .line 71
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanLeft:I

    .line 72
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanRight:I

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    .line 74
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIII)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x6f

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 90
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVisualClipID:I

    .line 91
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    .line 92
    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    .line 93
    iput p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    .line 94
    iput p6, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    .line 95
    iput p7, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    .line 96
    iput p8, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    .line 97
    iput p9, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    .line 98
    iput p10, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAutoEnvelop:I

    .line 99
    iput p11, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    .line 100
    iput p12, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVoiceChanger:I

    .line 101
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mCompressor:I

    .line 102
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPitchFactor:I

    .line 103
    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mMusicEffector:I

    .line 104
    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mProcessorStrength:I

    .line 105
    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mBassStrength:I

    .line 106
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanLeft:I

    .line 107
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanRight:I

    .line 108
    const/16 v0, 0x64

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 142
    check-cast p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;

    .line 144
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    if-ne v2, v3, :cond_0

    .line 145
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVisualClipID:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVisualClipID:I

    if-ne v2, v3, :cond_0

    .line 146
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    if-ne v2, v3, :cond_0

    .line 147
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    if-ne v2, v3, :cond_0

    .line 148
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    if-ne v2, v3, :cond_0

    .line 149
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    if-ne v2, v3, :cond_0

    .line 150
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    if-ne v2, v3, :cond_0

    .line 151
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    if-ne v2, v3, :cond_0

    .line 152
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    if-ne v2, v3, :cond_0

    .line 153
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAutoEnvelop:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAutoEnvelop:I

    if-ne v2, v3, :cond_0

    .line 154
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    if-ne v2, v3, :cond_0

    .line 155
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVoiceChanger:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVoiceChanger:I

    if-ne v2, v3, :cond_0

    .line 156
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mCompressor:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mCompressor:I

    if-ne v2, v3, :cond_0

    .line 157
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPitchFactor:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPitchFactor:I

    if-ne v2, v3, :cond_0

    .line 158
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mMusicEffector:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mMusicEffector:I

    if-ne v2, v3, :cond_0

    .line 159
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mProcessorStrength:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mProcessorStrength:I

    if-ne v2, v3, :cond_0

    .line 160
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mBassStrength:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mBassStrength:I

    if-ne v2, v3, :cond_0

    .line 161
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanLeft:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanLeft:I

    if-ne v2, v3, :cond_0

    .line 162
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanRight:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanRight:I

    if-ne v2, v3, :cond_0

    .line 163
    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    iget v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    if-ne v2, v3, :cond_0

    .line 164
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeLevel:[I

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeTime:[I

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeTime:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEnhancedAudioFilter:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEnhancedAudioFilter:Ljava/lang/String;

    iget-object v3, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEnhancedAudioFilter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v2, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEnhancedAudioFilter:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipID:I

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVisualClipID:I

    add-int/2addr v0, v2

    .line 175
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipType:I

    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mTotalTime:I

    add-int/2addr v0, v2

    .line 177
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTime:I

    add-int/2addr v0, v2

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTime:I

    add-int/2addr v0, v2

    .line 179
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mStartTrimTime:I

    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEndTrimTime:I

    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAudioOnOff:I

    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mAutoEnvelop:I

    add-int/2addr v0, v2

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mClipVolume:I

    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeLevel:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeLevel:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeTime:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVolumeEnvelopeTime:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mVoiceChanger:I

    add-int/2addr v0, v2

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mCompressor:I

    add-int/2addr v0, v2

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPitchFactor:I

    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mMusicEffector:I

    add-int/2addr v0, v2

    .line 191
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mProcessorStrength:I

    add-int/2addr v0, v2

    .line 192
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mBassStrength:I

    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanLeft:I

    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mPanRight:I

    add-int/2addr v0, v2

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mSpeedControl:I

    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEnhancedAudioFilter:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexAudioClip;->mEnhancedAudioFilter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 197
    return v0

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0

    :cond_2
    move v0, v1

    .line 186
    goto :goto_1
.end method

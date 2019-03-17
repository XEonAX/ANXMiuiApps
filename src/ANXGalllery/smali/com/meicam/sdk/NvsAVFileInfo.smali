.class public Lcom/meicam/sdk/NvsAVFileInfo;
.super Ljava/lang/Object;
.source "NvsAVFileInfo.java"


# static fields
.field static final AUDIO_MAX_STREAM_COUNT:I = 0x4

.field public static final AV_FILE_TYPE_AUDIO:I = 0x1

.field public static final AV_FILE_TYPE_AUDIOVIDEO:I = 0x0

.field public static final AV_FILE_TYPE_IMAGE:I = 0x2

.field public static final AV_FILE_TYPE_UNKNOWN:I = -0x1


# instance fields
.field m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

.field m_dataRate:J

.field m_duration:J

.field m_numAudioStreams:I

.field m_numVideoStreams:I

.field m_type:I

.field m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meicam/sdk/NvsAudioStreamInfo;

    iput-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    return-void
.end method


# virtual methods
.method public getAVFileType()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_type:I

    return v0
.end method

.method public getAudioStreamChannelCount(I)I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meicam/sdk/NvsAudioStreamInfo;->channelCount:I

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioStreamCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    return v0
.end method

.method public getAudioStreamDuration(I)J
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/meicam/sdk/NvsAudioStreamInfo;->duration:J

    .line 164
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAudioStreamSampleRate(I)I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/meicam/sdk/NvsAudioStreamInfo;->sampleRate:I

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataRate()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_dataRate:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_duration:J

    return-wide v0
.end method

.method public getVideoStreamCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    return v0
.end method

.method public getVideoStreamDimension(I)Lcom/meicam/sdk/NvsSize;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    new-instance v0, Lcom/meicam/sdk/NvsSize;

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsSize;-><init>(II)V

    .line 106
    iget v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget v1, v1, Lcom/meicam/sdk/NvsVideoStreamInfo;->imageWidth:I

    iput v1, v0, Lcom/meicam/sdk/NvsSize;->width:I

    .line 108
    iget-object v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget v1, v1, Lcom/meicam/sdk/NvsVideoStreamInfo;->imageHeight:I

    iput v1, v0, Lcom/meicam/sdk/NvsSize;->height:I

    .line 110
    :cond_0
    return-object v0
.end method

.method public getVideoStreamDuration(I)J
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-wide v0, v0, Lcom/meicam/sdk/NvsVideoStreamInfo;->duration:J

    .line 96
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getVideoStreamFrameRate(I)Lcom/meicam/sdk/NvsRational;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 136
    iget v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-object v1, v1, Lcom/meicam/sdk/NvsVideoStreamInfo;->frameRate:Lcom/meicam/sdk/NvsRational;

    iget v1, v1, Lcom/meicam/sdk/NvsRational;->num:I

    iput v1, v0, Lcom/meicam/sdk/NvsRational;->num:I

    .line 138
    iget-object v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-object v1, v1, Lcom/meicam/sdk/NvsVideoStreamInfo;->frameRate:Lcom/meicam/sdk/NvsRational;

    iget v1, v1, Lcom/meicam/sdk/NvsRational;->den:I

    iput v1, v0, Lcom/meicam/sdk/NvsRational;->den:I

    .line 140
    :cond_0
    return-object v0
.end method

.method public getVideoStreamPixelAspectRatio(I)Lcom/meicam/sdk/NvsRational;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 120
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 121
    iget v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-object v1, v1, Lcom/meicam/sdk/NvsVideoStreamInfo;->pixelAspectRatio:Lcom/meicam/sdk/NvsRational;

    iget v1, v1, Lcom/meicam/sdk/NvsRational;->num:I

    iput v1, v0, Lcom/meicam/sdk/NvsRational;->num:I

    .line 123
    iget-object v1, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget-object v1, v1, Lcom/meicam/sdk/NvsVideoStreamInfo;->pixelAspectRatio:Lcom/meicam/sdk/NvsRational;

    iget v1, v1, Lcom/meicam/sdk/NvsRational;->den:I

    iput v1, v0, Lcom/meicam/sdk/NvsRational;->den:I

    .line 125
    :cond_0
    return-object v0
.end method

.method public getVideoStreamRotation(I)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numVideoStreams:I

    if-ge p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_videoStreamInfo:Lcom/meicam/sdk/NvsVideoStreamInfo;

    iget v0, v0, Lcom/meicam/sdk/NvsVideoStreamInfo;->displayRotation:I

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAudioStreamInfo(ILcom/meicam/sdk/NvsAudioStreamInfo;)V
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_numAudioStreams:I

    if-ge p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/meicam/sdk/NvsAVFileInfo;->m_audioStreamInfo:[Lcom/meicam/sdk/NvsAudioStreamInfo;

    aput-object p2, v0, p1

    .line 193
    :cond_0
    return-void
.end method

.class public Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;
.super Ljava/lang/Object;
.source "NvAndroidMediaFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cdv/io/NvAndroidMediaFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaInfo"
.end annotation


# instance fields
.field audioStreamDurationUs:J

.field channelCount:I

.field frameRate:I

.field hasAudioStream:Z

.field hasVideoStream:Z

.field height:I

.field rotation:I

.field sampleRate:I

.field videoStreamDurationUs:J

.field width:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->hasVideoStream:Z

    .line 40
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->videoStreamDurationUs:J

    .line 41
    iput v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->height:I

    iput v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->width:I

    .line 42
    iput v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->rotation:I

    .line 43
    iput v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->frameRate:I

    .line 45
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->hasAudioStream:Z

    .line 46
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->audioStreamDurationUs:J

    .line 47
    iput v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->channelCount:I

    .line 48
    iput v0, p0, Lcom/cdv/io/NvAndroidMediaFileInfo$MediaInfo;->sampleRate:I

    .line 49
    return-void
.end method

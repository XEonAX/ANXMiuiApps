.class public Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;
.super Ljava/lang/Object;
.source "nexClip.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexClip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClipInfo"
.end annotation


# instance fields
.field public mAudioBitrate:I

.field public mAudioCodecType:Ljava/lang/String;

.field public mAudioTotalTime:I

.field public mClipType:I

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public mExistAudio:Z

.field public mExistVideo:Z

.field public mFramesPerSecond:I

.field public mH264Level:I

.field public mH264Profile:I

.field public mHeight:I

.field public mMimeType:Ljava/lang/String;

.field public mRotateDegreeInMeta:I

.field public mSeekPointCount:I

.field public mSuppertedResult:I

.field public mTotalTime:I

.field public mVideoBitrate:I

.field public mVideoCodecType:Ljava/lang/String;

.field public mVideoHDRType:I

.field public mVideoRenderMode:I

.field public mVideoTotalTime:I

.field public mVideoUUID:[B

.field public mWidth:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mClipType:I

    .line 475
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mSuppertedResult:I

    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;)Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 489
    .line 491
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 492
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mMimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mMimeType:Ljava/lang/String;

    .line 493
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoCodecType:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoCodecType:Ljava/lang/String;

    .line 494
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mAudioCodecType:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mAudioCodecType:Ljava/lang/String;

    .line 495
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoUUID:[B

    if-nez v1, :cond_0

    .line 496
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoUUID:[B

    .line 506
    :goto_0
    return-object v0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoUUID:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoUUID:[B

    .line 499
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoUUID:[B

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoUUID:[B

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/nexClip$ClipInfo;->mVideoUUID:[B

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    .line 503
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 502
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

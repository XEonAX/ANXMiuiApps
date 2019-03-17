.class public Lcom/meicam/sdk/NvsTimeline;
.super Lcom/meicam/sdk/NvsObject;
.source "NvsTimeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;
    }
.end annotation


# static fields
.field public static final NvsTimelineWatermarkPosition_BottomLeft:I = 0x2

.field public static final NvsTimelineWatermarkPosition_BottomRight:I = 0x3

.field public static final NvsTimelineWatermarkPosition_TopLeft:I = 0x1

.field public static final NvsTimelineWatermarkPosition_TopRight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/meicam/sdk/NvsObject;-><init>()V

    return-void
.end method

.method private native nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeAddBuiltinTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeAddCustomTimelineVideoFx(JJJLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeAddPackagedTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeAddWatermark(JLjava/lang/String;IIFIII)Z
.end method

.method private native nativeAppendAudioTrack(J)Lcom/meicam/sdk/NvsAudioTrack;
.end method

.method private native nativeAppendVideoTrack(J)Lcom/meicam/sdk/NvsVideoTrack;
.end method

.method private native nativeApplyTheme(JLjava/lang/String;)Z
.end method

.method private native nativeAudioTrackCount(J)I
.end method

.method private native nativeChangeVideoSize(JII)Z
.end method

.method private native nativeDeleteWatermark(J)V
.end method

.method private native nativeGetAnimatedStickersByTimelinePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/meicam/sdk/NvsTimelineAnimatedSticker;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAudioFadeOutDuration(J)J
.end method

.method private native nativeGetAudioRes(J)Lcom/meicam/sdk/NvsAudioResolution;
.end method

.method private native nativeGetAudioTrackByIndex(JI)Lcom/meicam/sdk/NvsAudioTrack;
.end method

.method private native nativeGetCaptionsByTimelinePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/meicam/sdk/NvsTimelineCaption;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCurrentThemeId(J)Ljava/lang/String;
.end method

.method private native nativeGetDuration(J)J
.end method

.method private native nativeGetFirstAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetFirstTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetLastAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetLastTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetNextAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetNextCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeGetNextTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetPlaybackRateControl(J)[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;
.end method

.method private native nativeGetPrevAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeGetPrevCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeGetPrevTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeGetThemeMusicVolumeGain(J)Lcom/meicam/sdk/NvsVolume;
.end method

.method private native nativeGetTimelineVideoFxByTimelinePosition(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/meicam/sdk/NvsTimelineVideoFx;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetVideoFps(J)Lcom/meicam/sdk/NvsRational;
.end method

.method private native nativeGetVideoRes(J)Lcom/meicam/sdk/NvsVideoResolution;
.end method

.method private native nativeGetVideoTrackByIndex(JI)Lcom/meicam/sdk/NvsVideoTrack;
.end method

.method private native nativeRemoveAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
.end method

.method private native nativeRemoveAudioTrack(JI)Z
.end method

.method private native nativeRemoveCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native nativeRemoveCurrentTheme(J)V
.end method

.method private native nativeRemoveTimelineEndingFilter(J)V
.end method

.method private native nativeRemoveTimelineEndingLogo(J)V
.end method

.method private native nativeRemoveTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
.end method

.method private native nativeRemoveVideoTrack(JI)Z
.end method

.method private native nativeSetAudioFadeOutDuration(JJ)V
.end method

.method private native nativeSetPlaybackRateControl(J[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;)V
.end method

.method private native nativeSetThemeMusicVolumeGain(JFF)V
.end method

.method private native nativeSetThemeTitleCaptionText(JLjava/lang/String;)V
.end method

.method private native nativeSetThemeTrailerCaptionText(JLjava/lang/String;)V
.end method

.method private native nativeSetTimelineEndingFilter(JLjava/lang/String;Ljava/lang/String;J)Z
.end method

.method private native nativeSetTimelineEndingLogo(JLjava/lang/String;IIII)Z
.end method

.method private native nativeSetWatermarkOpacity(JF)Z
.end method

.method private native nativeVideoTrackCount(J)I
.end method

.method private native natvieGetFirstCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;
.end method

.method private native natvieGetLastCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;
.end method


# virtual methods
.method public addAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 13

    .prologue
    .line 384
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 385
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addBuiltinTimelineVideoFx(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 9

    .prologue
    .line 515
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 516
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/meicam/sdk/NvsTimeline;->nativeAddBuiltinTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public addCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 10

    .prologue
    .line 277
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 278
    iget-wide v1, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsTimeline;->nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 13

    .prologue
    .line 416
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 417
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addCustomPanoramicAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 13

    .prologue
    .line 433
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 434
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addCustomTimelineVideoFx(JJLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 9

    .prologue
    .line 542
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 543
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/meicam/sdk/NvsTimeline;->nativeAddCustomTimelineVideoFx(JJJLcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public addPackagedTimelineVideoFx(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 9

    .prologue
    .line 528
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 529
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/meicam/sdk/NvsTimeline;->nativeAddPackagedTimelineVideoFx(JJJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public addPanoramicAnimatedSticker(JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 13

    .prologue
    .line 400
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 401
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lcom/meicam/sdk/NvsTimeline;->nativeAddAnimatedSticker(JJJLjava/lang/String;ZZLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public addPanoramicCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 10

    .prologue
    .line 294
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 295
    iget-wide v1, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    const/4 v9, 0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/meicam/sdk/NvsTimeline;->nativeAddCaption(JLjava/lang/String;JJLjava/lang/String;Z)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public addWatermark(Ljava/lang/String;IIFIII)Z
    .locals 11

    .prologue
    .line 661
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 662
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/meicam/sdk/NvsTimeline;->nativeAddWatermark(JLjava/lang/String;IIFIII)Z

    move-result v0

    return v0
.end method

.method public appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 102
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeAppendAudioTrack(J)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v0

    return-object v0
.end method

.method public appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 88
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeAppendVideoTrack(J)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v0

    return-object v0
.end method

.method public applyTheme(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 581
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 582
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeApplyTheme(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public audioTrackCount()I
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 156
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeAudioTrackCount(J)I

    move-result v0

    return v0
.end method

.method public changeVideoSize(II)Z
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeChangeVideoSize(JII)Z

    move-result v0

    return v0
.end method

.method public deleteWatermark()V
    .locals 2

    .prologue
    .line 673
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 674
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeDeleteWatermark(J)V

    .line 675
    return-void
.end method

.method public getAnimatedStickersByTimelinePosition(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/meicam/sdk/NvsTimelineAnimatedSticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 370
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAnimatedStickersByTimelinePosition(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioFadeOutDuration()J
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 749
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAudioFadeOutDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioRes()Lcom/meicam/sdk/NvsAudioResolution;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 56
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAudioRes(J)Lcom/meicam/sdk/NvsAudioResolution;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTrackByIndex(I)Lcom/meicam/sdk/NvsAudioTrack;
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 184
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetAudioTrackByIndex(JI)Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionsByTimelinePosition(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/meicam/sdk/NvsTimelineCaption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 262
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeGetCaptionsByTimelinePosition(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentThemeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 566
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetCurrentThemeId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 74
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstAnimatedSticker()Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 320
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetFirstAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCaption()Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 210
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->natvieGetFirstCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public getFirstTimelineVideoFx()Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 457
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetFirstTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getLastAnimatedSticker()Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 331
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetLastAnimatedSticker(J)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getLastCaption()Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 223
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->natvieGetLastCaption(J)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public getLastTimelineVideoFx()Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 467
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetLastTimelineVideoFx(J)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getNextAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 355
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetNextAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getNextCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 247
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetNextCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public getNextTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 489
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetNextTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRateControl()[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;
    .locals 2

    .prologue
    .line 768
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 769
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPlaybackRateControl(J)[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;

    move-result-object v0

    return-object v0
.end method

.method public getPrevAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 343
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPrevAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public getPrevCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 235
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPrevCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public getPrevTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .prologue
    .line 477
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 478
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetPrevTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getThemeMusicVolumeGain()Lcom/meicam/sdk/NvsVolume;
    .locals 2

    .prologue
    .line 641
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 642
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetThemeMusicVolumeGain(J)Lcom/meicam/sdk/NvsVolume;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineVideoFxByTimelinePosition(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/meicam/sdk/NvsTimelineVideoFx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 503
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeGetTimelineVideoFxByTimelinePosition(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFps()Lcom/meicam/sdk/NvsRational;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 65
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetVideoFps(J)Lcom/meicam/sdk/NvsRational;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRes()Lcom/meicam/sdk/NvsVideoResolution;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 46
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetVideoRes(J)Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTrackByIndex(I)Lcom/meicam/sdk/NvsVideoTrack;
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 170
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeGetVideoTrackByIndex(JI)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v0

    return-object v0
.end method

.method public removeAnimatedSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 447
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveAnimatedSticker(JLcom/meicam/sdk/NvsTimelineAnimatedSticker;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v0

    return-object v0
.end method

.method public removeAudioTrack(I)Z
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 132
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveAudioTrack(JI)Z

    move-result v0

    return v0
.end method

.method public removeCaption(Lcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 308
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveCaption(JLcom/meicam/sdk/NvsTimelineCaption;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v0

    return-object v0
.end method

.method public removeCurrentTheme()V
    .locals 2

    .prologue
    .line 593
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 594
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveCurrentTheme(J)V

    .line 595
    return-void
.end method

.method public removeTimelineEndingFilter()V
    .locals 2

    .prologue
    .line 713
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 714
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveTimelineEndingFilter(J)V

    .line 715
    return-void
.end method

.method public removeTimelineEndingLogo()V
    .locals 2

    .prologue
    .line 724
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 725
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveTimelineEndingLogo(J)V

    .line 726
    return-void
.end method

.method public removeTimelineVideoFx(Lcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;
    .locals 2

    .prologue
    .line 553
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 554
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveTimelineVideoFx(JLcom/meicam/sdk/NvsTimelineVideoFx;)Lcom/meicam/sdk/NvsTimelineVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public removeVideoTrack(I)Z
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 117
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeRemoveVideoTrack(JI)Z

    move-result v0

    return v0
.end method

.method public setAudioFadeOutDuration(J)V
    .locals 3

    .prologue
    .line 736
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 737
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeSetAudioFadeOutDuration(JJ)V

    .line 738
    return-void
.end method

.method public setPlaybackRateControl([Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;)V
    .locals 2

    .prologue
    .line 762
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 763
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetPlaybackRateControl(J[Lcom/meicam/sdk/NvsTimeline$PlaybackRateControlRegion;)V

    .line 764
    return-void
.end method

.method public setThemeMusicVolumeGain(FF)V
    .locals 2

    .prologue
    .line 629
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 630
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimeline;->nativeSetThemeMusicVolumeGain(JFF)V

    .line 631
    return-void
.end method

.method public setThemeTitleCaptionText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 605
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 606
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetThemeTitleCaptionText(JLjava/lang/String;)V

    .line 607
    return-void
.end method

.method public setThemeTrailerCaptionText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 618
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetThemeTrailerCaptionText(JLjava/lang/String;)V

    .line 619
    return-void
.end method

.method public setTimelineEndingFilter(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9

    .prologue
    .line 707
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 708
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/meicam/sdk/NvsTimeline;->nativeSetTimelineEndingFilter(JLjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setTimelineEndingLogo(Ljava/lang/String;IIII)Z
    .locals 9

    .prologue
    .line 701
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 702
    iget-wide v2, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/meicam/sdk/NvsTimeline;->nativeSetTimelineEndingLogo(JLjava/lang/String;IIII)Z

    move-result v0

    return v0
.end method

.method public setWatermarkOpacity(F)Z
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 686
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimeline;->nativeSetWatermarkOpacity(JF)Z

    move-result v0

    return v0
.end method

.method public videoTrackCount()I
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 144
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimeline;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimeline;->nativeVideoTrackCount(J)I

    move-result v0

    return v0
.end method

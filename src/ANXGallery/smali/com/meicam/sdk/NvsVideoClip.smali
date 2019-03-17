.class public Lcom/meicam/sdk/NvsVideoClip;
.super Lcom/meicam/sdk/NvsClip;
.source "NvsVideoClip.java"


# static fields
.field public static final CLIP_MOTIONMODE_LETTERBOX_ZOOMIN:I = 0x0

.field public static final CLIP_WRAPMODE_REPEAT_LASTFRAME:I = 0x0

.field public static final ClIP_BACKGROUNDMODE_BLUR:I = 0x1

.field public static final ClIP_BACKGROUNDMODE_COLOR_SOLID:I = 0x0

.field public static final ClIP_EXTRAVIDEOROTATION_0:I = 0x0

.field public static final ClIP_EXTRAVIDEOROTATION_180:I = 0x2

.field public static final ClIP_EXTRAVIDEOROTATION_270:I = 0x3

.field public static final ClIP_EXTRAVIDEOROTATION_90:I = 0x1

.field public static final ClIP_MOTIONMODE_LETTERBOX_ZOOMOUT:I = 0x1

.field public static final ClIP_WRAPMODE_REPEAT:I = 0x2

.field public static final ClIP_WRAPMODE_REPEAT_FIRSTFRAME:I = 0x1

.field public static final IMAGE_CLIP_MOTIONMMODE_ROI:I = 0x2

.field public static final ROLE_IN_THEME_GENERAL:I = 0x0

.field public static final ROLE_IN_THEME_TITLE:I = 0x1

.field public static final ROLE_IN_THEME_TRAILER:I = 0x2

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_1:I = 0x1

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_2:I = 0x2

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_3:I = 0x3

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_BASE:I = 0x0

.field public static final VIDEO_CLIP_DECODE_TEMPORAL_LAYER_NONE:I = -0x1

.field public static final VIDEO_CLIP_TYPE_AV:I = 0x0

.field public static final VIDEO_CLIP_TYPE_IMAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/meicam/sdk/NvsClip;-><init>()V

    return-void
.end method

.method private native nativeAppendBeautyFx(J)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeAppendBuiltinFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeAppendPackagedFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeGetClipWrapMode(J)I
.end method

.method private native nativeGetEndROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetExtraVideoRotation(J)I
.end method

.method private native nativeGetFxByIndex(JI)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeGetImageMaskROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetImageMotionAnimationEnabled(J)Z
.end method

.method private native nativeGetImageMotionMode(J)I
.end method

.method private native nativeGetPanAndScan(J)Lcom/meicam/sdk/NvsPanAndScan;
.end method

.method private native nativeGetPlayInReverse(J)Z
.end method

.method private native nativeGetRoleInTheme(J)I
.end method

.method private native nativeGetSourceBackgroundMode(J)I
.end method

.method private native nativeGetStartROI(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetVideoType(J)I
.end method

.method private native nativeInsertBeautyFx(JI)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertBuiltinFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeInsertPackagedFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
.end method

.method private native nativeRemoveAllFx(J)Z
.end method

.method private native nativeRemoveFx(JI)Z
.end method

.method private native nativeSetClipWrapMode(JI)V
.end method

.method private native nativeSetDecodeTemporalLayer(JI)V
.end method

.method private native nativeSetExtraVideoRotation(JI)V
.end method

.method private native nativeSetImageMaskROI(JLandroid/graphics/RectF;)V
.end method

.method private native nativeSetImageMotionAnimationEnabled(JZ)V
.end method

.method private native nativeSetImageMotionMode(JI)V
.end method

.method private native nativeSetImageMotionROI(JLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method private native nativeSetPanAndScan(JFF)V
.end method

.method private native nativeSetPlayInReverse(JZ)V
.end method

.method private native nativeSetSourceBackgroundMode(JI)V
.end method


# virtual methods
.method public appendBeautyFx()Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 424
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBeautyFx(J)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 342
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendBuiltinFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public appendCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 3

    .prologue
    .line 397
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 398
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsVideoClip;->getFxCount()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public appendPackagedFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 371
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeAppendPackagedFx(JLjava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getClipWrapMode()I
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 326
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetClipWrapMode(J)I

    move-result v0

    return v0
.end method

.method public getEndROI()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 259
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetEndROI(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getExtraVideoRotation()I
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 147
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetExtraVideoRotation(J)I

    move-result v0

    return v0
.end method

.method public getFxByIndex(I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 469
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 470
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetFxByIndex(JI)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public getImageMaskROI()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 286
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMaskROI(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMotionAnimationEnabled()Z
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 226
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMotionAnimationEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getImageMotionMode()I
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 204
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetImageMotionMode(J)I

    move-result v0

    return v0
.end method

.method public getPanAndScan()Lcom/meicam/sdk/NvsPanAndScan;
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 171
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPanAndScan(J)Lcom/meicam/sdk/NvsPanAndScan;

    move-result-object v0

    return-object v0
.end method

.method public getPlayInReverse()Z
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 126
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetPlayInReverse(J)Z

    move-result v0

    return v0
.end method

.method public getRoleInTheme()I
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 98
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetRoleInTheme(J)I

    move-result v0

    return v0
.end method

.method public getSourceBackgroundMode()I
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 181
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetSourceBackgroundMode(J)I

    move-result v0

    return v0
.end method

.method public getStartROI()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 248
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetStartROI(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getVideoType()I
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 88
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeGetVideoType(J)I

    move-result v0

    return v0
.end method

.method public insertBeautyFx(I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 437
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBeautyFx(JI)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertBuiltinFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 357
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertBuiltinFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertCustomFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 411
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertCustomFx(JLcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public insertPackagedFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 386
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeInsertPackagedFx(JLjava/lang/String;I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v0

    return-object v0
.end method

.method public removeAllFx()Z
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 459
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveAllFx(J)Z

    move-result v0

    return v0
.end method

.method public removeFx(I)Z
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 449
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeRemoveFx(JI)Z

    move-result v0

    return v0
.end method

.method public setClipWrapMode(I)V
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 311
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetClipWrapMode(JI)V

    goto :goto_0
.end method

.method public setDecodeTemporalLayer(I)V
    .locals 2

    .prologue
    .line 483
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 484
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetDecodeTemporalLayer(JI)V

    .line 485
    return-void
.end method

.method public setExtraVideoRotation(I)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 136
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetExtraVideoRotation(JI)V

    .line 137
    return-void
.end method

.method public setImageMaskROI(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 299
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMaskROI(JLandroid/graphics/RectF;)V

    .line 300
    return-void
.end method

.method public setImageMotionAnimationEnabled(Z)V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 237
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionAnimationEnabled(JZ)V

    .line 238
    return-void
.end method

.method public setImageMotionMode(I)V
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 215
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionMode(JI)V

    .line 216
    return-void
.end method

.method public setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 274
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetImageMotionROI(JLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 275
    return-void
.end method

.method public setPanAndScan(FF)V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 160
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetPanAndScan(JFF)V

    .line 161
    return-void
.end method

.method public setPlayInReverse(Z)V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 114
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetPlayInReverse(JZ)V

    .line 115
    return-void
.end method

.method public setSourceBackgroundMode(I)V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 192
    iget-wide v0, p0, Lcom/meicam/sdk/NvsVideoClip;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsVideoClip;->nativeSetSourceBackgroundMode(JI)V

    .line 193
    return-void
.end method

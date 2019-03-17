.class public Lcom/meicam/sdk/NvsTimelineCaption;
.super Lcom/meicam/sdk/NvsFx;
.source "NvsTimelineCaption.java"


# static fields
.field public static final DEFAULT_CATEGORY:I = 0x0

.field public static final ROLE_IN_THEME_GENERAL:I = 0x0

.field public static final ROLE_IN_THEME_TITLE:I = 0x1

.field public static final ROLE_IN_THEME_TRAILER:I = 0x2

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x1

.field public static final TEXT_ALIGNMENT_LEFT:I = 0x0

.field public static final TEXT_ALIGNMENT_RIGHT:I = 0x2

.field public static final THEME_CATEGORY:I = 0x2

.field public static final USER_CATEGORY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/meicam/sdk/NvsFx;-><init>()V

    return-void
.end method

.method private native nativeApplyCaptionStyle(JLjava/lang/String;)Z
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeGetAnchorPoint(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetBold(J)Z
.end method

.method private native nativeGetBoundingRectangleVertices(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCaptionStylePackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetCategory(J)I
.end method

.method private native nativeGetCenterAzimuthAngle(J)F
.end method

.method private native nativeGetCenterPolarAngle(J)F
.end method

.method private native nativeGetClipAffinityEnabled(J)Z
.end method

.method private native nativeGetDrawOutline(J)Z
.end method

.method private native nativeGetDrawShadow(J)Z
.end method

.method private native nativeGetFontFilePath(J)Ljava/lang/String;
.end method

.method private native nativeGetFontSize(J)F
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetItalic(J)Z
.end method

.method private native nativeGetLetterSpacing(J)F
.end method

.method private native nativeGetOrthoAngleRange(J)F
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetOutlineWidth(J)F
.end method

.method private native nativeGetPanoramicRotationAngle(J)F
.end method

.method private native nativeGetPanoramicScaleX(J)F
.end method

.method private native nativeGetPanoramicScaleY(J)F
.end method

.method private native nativeGetPolarAngleRange(J)F
.end method

.method private native nativeGetRoleInTheme(J)I
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScaleX(J)F
.end method

.method private native nativeGetScaleY(J)F
.end method

.method private native nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetShadowOffset(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetText(J)Ljava/lang/String;
.end method

.method private native nativeGetTextAlignment(J)I
.end method

.method private native nativeGetTextBoundingRect(J)Landroid/graphics/RectF;
.end method

.method private native nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeIsPanoramic(J)Z
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeRotateCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnchorPoint(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetBold(JZ)V
.end method

.method private native nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetCenterAzimuthAngle(JF)V
.end method

.method private native nativeSetCenterPolarAngle(JF)V
.end method

.method private native nativeSetClipAffinityEnabled(JZ)V
.end method

.method private native nativeSetDrawOutline(JZ)V
.end method

.method private native nativeSetDrawShadow(JZ)V
.end method

.method private native nativeSetFontByFilePath(JLjava/lang/String;)V
.end method

.method private native nativeSetFontSize(JF)V
.end method

.method private native nativeSetItalic(JZ)V
.end method

.method private native nativeSetLetterSpacing(JF)V
.end method

.method private native nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetOutlineWidth(JF)V
.end method

.method private native nativeSetPanoramicRotationAngle(JF)V
.end method

.method private native nativeSetPanoramicScaleX(JF)V
.end method

.method private native nativeSetPanoramicScaleY(JF)V
.end method

.method private native nativeSetPolarAngleRange(JF)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScaleX(JF)V
.end method

.method private native nativeSetScaleY(JF)V
.end method

.method private native nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetShadowOffset(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetText(JLjava/lang/String;)V
.end method

.method private native nativeSetTextAlignment(JI)V
.end method

.method private native nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateCaption(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public applyCaptionStyle(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 181
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeApplyCaptionStyle(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public changeInPoint(J)J
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 109
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeChangeInPoint(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public changeOutPoint(J)J
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 124
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeChangeOutPoint(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAnchorPoint()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 548
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 549
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetAnchorPoint(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getBold()Z
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 248
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBold(J)Z

    move-result v0

    return v0
.end method

.method public getBoundingRectangleVertices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 678
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetBoundingRectangleVertices(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionStylePackageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 168
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionStylePackageId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionTranslation()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 512
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 513
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCaptionTranslation(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()I
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 158
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCategory(J)I

    move-result v0

    return v0
.end method

.method public getCenterAzimuthAngle()F
    .locals 2

    .prologue
    .line 732
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 733
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCenterAzimuthAngle(J)F

    move-result v0

    return v0
.end method

.method public getCenterPolarAngle()F
    .locals 2

    .prologue
    .line 710
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 711
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetCenterPolarAngle(J)F

    move-result v0

    return v0
.end method

.method public getClipAffinityEnabled()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 70
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetClipAffinityEnabled(J)Z

    move-result v0

    return v0
.end method

.method public getDrawOutline()Z
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 336
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetDrawOutline(J)Z

    move-result v0

    return v0
.end method

.method public getDrawShadow()Z
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 402
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetDrawShadow(J)Z

    move-result v0

    return v0
.end method

.method public getFontFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 491
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontFilePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 468
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetFontSize(J)F

    move-result v0

    return v0
.end method

.method public getInPoint()J
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 82
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItalic()Z
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 269
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetItalic(J)Z

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 292
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getOrthoAngleRange()F
    .locals 2

    .prologue
    .line 765
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 766
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOrthoAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getOutPoint()J
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 94
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutlineColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 358
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutlineColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getOutlineWidth()F
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 380
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetOutlineWidth(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicRotation()F
    .locals 2

    .prologue
    .line 831
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 832
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicRotationAngle(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicScaleX()F
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 788
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicScaleX(J)F

    move-result v0

    return v0
.end method

.method public getPanoramicScaleY()F
    .locals 2

    .prologue
    .line 809
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 810
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPanoramicScaleY(J)F

    move-result v0

    return v0
.end method

.method public getPolarAngleRange()F
    .locals 2

    .prologue
    .line 754
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 755
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetPolarAngleRange(J)F

    move-result v0

    return v0
.end method

.method public getRoleInTheme()I
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 148
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetRoleInTheme(J)I

    move-result v0

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    .prologue
    .line 632
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 633
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetRotationZ(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 2

    .prologue
    .line 572
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 573
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    .prologue
    .line 596
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 597
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getShadowColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 424
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetShadowColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getShadowOffset()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 445
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 446
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetShadowOffset(J)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 202
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 226
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextAlignment(J)I

    move-result v0

    return v0
.end method

.method public getTextBoundingRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 666
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 667
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextBoundingRect(J)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()Lcom/meicam/sdk/NvsColor;
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 314
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetTextColor(J)Lcom/meicam/sdk/NvsColor;

    move-result-object v0

    return-object v0
.end method

.method public getZValue()F
    .locals 2

    .prologue
    .line 853
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 854
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeGetZValue(J)F

    move-result v0

    return v0
.end method

.method public isPanoramic()Z
    .locals 2

    .prologue
    .line 688
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 689
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeIsPanoramic(J)Z

    move-result v0

    return v0
.end method

.method public movePosition(J)V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 137
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeMovePosition(JJ)V

    .line 138
    return-void
.end method

.method public rotateCaption(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 655
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 656
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineCaption;->getTextBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 657
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    div-float/2addr v0, v4

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v1}, Lcom/meicam/sdk/NvsTimelineCaption;->rotateCaption(FLandroid/graphics/PointF;)V

    .line 658
    return-void
.end method

.method public rotateCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 644
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 645
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeRotateCaption(JFLandroid/graphics/PointF;)V

    .line 646
    return-void
.end method

.method public scaleCaption(FLandroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 609
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeScaleCaption(JFLandroid/graphics/PointF;)V

    .line 610
    return-void
.end method

.method public setAnchorPoint(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 538
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetAnchorPoint(JLandroid/graphics/PointF;)V

    .line 539
    return-void
.end method

.method public setBold(Z)V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 237
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetBold(JZ)V

    .line 238
    return-void
.end method

.method public setCaptionTranslation(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 501
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 502
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V

    .line 503
    return-void
.end method

.method public setCenterAzimuthAngle(F)V
    .locals 2

    .prologue
    .line 721
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 722
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCenterAzimuthAngle(JF)V

    .line 723
    return-void
.end method

.method public setCenterPolarAngle(F)V
    .locals 2

    .prologue
    .line 699
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 700
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetCenterPolarAngle(JF)V

    .line 701
    return-void
.end method

.method public setClipAffinityEnabled(Z)V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 59
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetClipAffinityEnabled(JZ)V

    .line 60
    return-void
.end method

.method public setDrawOutline(Z)V
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 325
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetDrawOutline(JZ)V

    .line 326
    return-void
.end method

.method public setDrawShadow(Z)V
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 391
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetDrawShadow(JZ)V

    .line 392
    return-void
.end method

.method public setFontByFilePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 479
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 480
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontByFilePath(JLjava/lang/String;)V

    .line 481
    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 457
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetFontSize(JF)V

    .line 458
    return-void
.end method

.method public setItalic(Z)V
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 259
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetItalic(JZ)V

    .line 260
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 281
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetLetterSpacing(JF)V

    .line 282
    return-void
.end method

.method public setOutlineColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 347
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOutlineColor(JLcom/meicam/sdk/NvsColor;)V

    .line 348
    return-void
.end method

.method public setOutlineWidth(F)V
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 369
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetOutlineWidth(JF)V

    .line 370
    return-void
.end method

.method public setPanoramicRotation(F)V
    .locals 2

    .prologue
    .line 820
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 821
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicRotationAngle(JF)V

    .line 822
    return-void
.end method

.method public setPanoramicScaleX(F)V
    .locals 2

    .prologue
    .line 776
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 777
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicScaleX(JF)V

    .line 778
    return-void
.end method

.method public setPanoramicScaleY(F)V
    .locals 2

    .prologue
    .line 798
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 799
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPanoramicScaleY(JF)V

    .line 800
    return-void
.end method

.method public setPolarAngleRange(F)V
    .locals 2

    .prologue
    .line 743
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 744
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetPolarAngleRange(JF)V

    .line 745
    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 621
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetRotationZ(JF)V

    .line 622
    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .prologue
    .line 560
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 561
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetScaleX(JF)V

    .line 562
    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    .prologue
    .line 584
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 585
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetScaleY(JF)V

    .line 586
    return-void
.end method

.method public setShadowColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .prologue
    .line 412
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 413
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetShadowColor(JLcom/meicam/sdk/NvsColor;)V

    .line 414
    return-void
.end method

.method public setShadowOffset(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 434
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 435
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetShadowOffset(JLandroid/graphics/PointF;)V

    .line 436
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 191
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetText(JLjava/lang/String;)V

    .line 192
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 214
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetTextAlignment(JI)V

    .line 215
    return-void
.end method

.method public setTextColor(Lcom/meicam/sdk/NvsColor;)V
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 303
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetTextColor(JLcom/meicam/sdk/NvsColor;)V

    .line 304
    return-void
.end method

.method public setZValue(F)V
    .locals 2

    .prologue
    .line 842
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 843
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeSetZValue(JF)V

    .line 844
    return-void
.end method

.method public translateCaption(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 526
    iget-wide v0, p0, Lcom/meicam/sdk/NvsTimelineCaption;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->nativeTranslateCaption(JLandroid/graphics/PointF;)V

    .line 527
    return-void
.end method

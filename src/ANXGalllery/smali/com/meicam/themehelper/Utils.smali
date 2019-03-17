.class public Lcom/meicam/themehelper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static motionIdxList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meicam/themehelper/Utils;->motionIdxList:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static LtToRb(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V
    .locals 6
    .param p0, "Lt"    # Landroid/graphics/RectF;
    .param p1, "Rb"    # Landroid/graphics/RectF;
    .param p2, "rect"    # [F
    .param p3, "imgRatio"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const v2, 0x3dcccccd    # 0.1f

    .line 416
    aget v0, p2, v5

    const/high16 v1, 0x3e800000    # 0.25f

    sub-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 417
    aget v0, p2, v5

    const/4 v1, 0x2

    aget v1, p2, v1

    add-float/2addr v0, v1

    const v1, 0x3eb33333    # 0.35f

    add-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 418
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 419
    iget v0, p0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 420
    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 421
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 422
    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 423
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 424
    return-void
.end method

.method private static RtToLb(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V
    .locals 5
    .param p0, "Rt"    # Landroid/graphics/RectF;
    .param p1, "Lb"    # Landroid/graphics/RectF;
    .param p2, "rect"    # [F
    .param p3, "imgRatio"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    .line 426
    aget v0, p2, v2

    const/4 v1, 0x2

    aget v1, p2, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 427
    const/high16 v0, -0x40800000    # -1.0f

    aget v1, p2, v2

    const v2, 0x3eb33333    # 0.35f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 428
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 429
    iget v0, p0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    sub-float/2addr v0, v3

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 430
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 431
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 432
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 433
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 434
    return-void
.end method

.method private static calcLandscapeLeftRec(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 2
    .param p0, "ROI"    # Landroid/graphics/RectF;
    .param p1, "imgRatio"    # F

    .prologue
    .line 162
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 163
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 164
    const v0, -0x404ccccd    # -1.4f

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 165
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 171
    return-object p0
.end method

.method private static calcLandscapeRightRec(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 2
    .param p0, "ROI"    # Landroid/graphics/RectF;
    .param p1, "imgRatio"    # F

    .prologue
    .line 174
    const v0, -0x40b33333    # -0.8f

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 175
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 176
    const v0, -0x404ccccd    # -1.4f

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 177
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p1

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 183
    return-object p0
.end method

.method public static changeHoriROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;
    .locals 8
    .param p0, "imgRatio"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "clip"    # Lcom/meicam/sdk/NvsVideoClip;

    .prologue
    .line 547
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 548
    .local v4, "up":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 549
    .local v0, "bottom":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 550
    .local v2, "frect":[F
    if-eqz p1, :cond_0

    .line 551
    const/4 v6, 0x4

    new-array v2, v6, [F

    .line 552
    const/4 v6, 0x0

    iget v7, p1, Landroid/graphics/RectF;->left:F

    aput v7, v2, v6

    .line 553
    const/4 v6, 0x1

    iget v7, p1, Landroid/graphics/RectF;->top:F

    aput v7, v2, v6

    .line 554
    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    aput v7, v2, v6

    .line 555
    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    aput v7, v2, v6

    .line 556
    invoke-static {v4, v0, v2, p0}, Lcom/meicam/themehelper/Utils;->upToBottomByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    .line 561
    :goto_0
    move-object v3, p2

    .line 562
    .local v3, "ret":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 563
    invoke-virtual {p3, v4, v0}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 571
    :goto_1
    return-object v3

    .line 558
    .end local v3    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {v4, v0, p0}, Lcom/meicam/themehelper/Utils;->normalUpToBottomByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 565
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "upstr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "bottomstr":Ljava/lang/String;
    const-string/jumbo v6, "xiaomiEndROI"

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 568
    const-string/jumbo v6, "xiaomiStartROI"

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static changeHoriROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "imgRatio"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "isSecondPic"    # Z

    .prologue
    .line 575
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 576
    .local v4, "up":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 577
    .local v0, "bottom":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 578
    .local v2, "frect":[F
    if-eqz p1, :cond_0

    .line 579
    const/4 v6, 0x4

    new-array v2, v6, [F

    .line 580
    const/4 v6, 0x0

    iget v7, p1, Landroid/graphics/RectF;->left:F

    aput v7, v2, v6

    .line 581
    const/4 v6, 0x1

    iget v7, p1, Landroid/graphics/RectF;->top:F

    aput v7, v2, v6

    .line 582
    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    aput v7, v2, v6

    .line 583
    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    aput v7, v2, v6

    .line 584
    invoke-static {v4, v0, v2, p0}, Lcom/meicam/themehelper/Utils;->upToBottomByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    .line 589
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 590
    .local v5, "upstr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "bottomstr":Ljava/lang/String;
    move-object v3, p2

    .line 593
    .local v3, "ret":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 594
    const-string/jumbo v6, "xiaomiStartROI"

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 595
    const-string/jumbo v6, "xiaomiEndROI"

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 601
    :goto_1
    return-object v3

    .line 586
    .end local v1    # "bottomstr":Ljava/lang/String;
    .end local v3    # "ret":Ljava/lang/String;
    .end local v5    # "upstr":Ljava/lang/String;
    :cond_0
    invoke-static {v4, v0, p0}, Lcom/meicam/themehelper/Utils;->normalUpToBottomByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 597
    .restart local v1    # "bottomstr":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    .restart local v5    # "upstr":Ljava/lang/String;
    :cond_1
    const-string v6, "jieshu"

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 598
    const-string v6, "kaishi"

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static changeROI(FLandroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "imgRatio"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 663
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 664
    .local v3, "start":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 666
    .local v1, "end":Landroid/graphics/RectF;
    invoke-static {v3, v1, p1, p0}, Lcom/meicam/themehelper/Utils;->setImageROI(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "upstr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "bottomstr":Ljava/lang/String;
    const-string/jumbo v5, "xiaomiStartROI"

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "ret":Ljava/lang/String;
    const-string/jumbo v5, "xiaomiEndROI"

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 672
    return-object v2
.end method

.method public static changeROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "imgRatio"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "isSecondPic"    # Z

    .prologue
    .line 676
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 677
    .local v3, "start":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 679
    .local v1, "end":Landroid/graphics/RectF;
    invoke-static {v3, v1, p1, p0}, Lcom/meicam/themehelper/Utils;->setImageROI(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "upstr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "bottomstr":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 685
    const-string/jumbo v5, "xiaomiStartROI"

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "ret":Ljava/lang/String;
    const-string/jumbo v5, "xiaomiEndROI"

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 692
    :goto_0
    return-object v2

    .line 688
    .end local v2    # "ret":Ljava/lang/String;
    :cond_0
    const-string v5, "kaishi"

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 689
    .restart local v2    # "ret":Ljava/lang/String;
    const-string v5, "jieshu"

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static changeROTBottom(Landroid/graphics/RectF;F)F
    .locals 3
    .param p0, "ROI"    # Landroid/graphics/RectF;
    .param p1, "ratio"    # F

    .prologue
    .line 543
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, p1

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static changeVertROI(FLandroid/graphics/RectF;Ljava/lang/String;Lcom/meicam/sdk/NvsVideoClip;)Ljava/lang/String;
    .locals 8
    .param p0, "imgRatio"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "clip"    # Lcom/meicam/sdk/NvsVideoClip;

    .prologue
    .line 605
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 606
    .local v1, "left":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 607
    .local v4, "right":Landroid/graphics/RectF;
    const/4 v0, 0x0

    .line 608
    .local v0, "frect":[F
    if-eqz p1, :cond_0

    .line 609
    const/4 v6, 0x4

    new-array v0, v6, [F

    .line 610
    const/4 v6, 0x0

    iget v7, p1, Landroid/graphics/RectF;->left:F

    aput v7, v0, v6

    .line 611
    const/4 v6, 0x1

    iget v7, p1, Landroid/graphics/RectF;->top:F

    aput v7, v0, v6

    .line 612
    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    aput v7, v0, v6

    .line 613
    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    aput v7, v0, v6

    .line 614
    invoke-static {v1, v4, v0, p0}, Lcom/meicam/themehelper/Utils;->leftToRightByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    .line 619
    :goto_0
    move-object v3, p2

    .line 620
    .local v3, "ret":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 621
    invoke-virtual {p3, v1, v4}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 629
    :goto_1
    return-object v3

    .line 616
    .end local v3    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {v1, v4, p0}, Lcom/meicam/themehelper/Utils;->normalLeftToRightByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 623
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "leftstr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, "rightstr":Ljava/lang/String;
    const-string/jumbo v6, "xiaomiEndROI"

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 626
    const-string/jumbo v6, "xiaomiStartROI"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static changeVertROIV3(FLandroid/graphics/RectF;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "imgRatio"    # F
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "isSecondPic"    # Z

    .prologue
    .line 633
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 634
    .local v1, "left":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 635
    .local v4, "right":Landroid/graphics/RectF;
    const/4 v0, 0x0

    .line 636
    .local v0, "frect":[F
    if-eqz p1, :cond_0

    .line 637
    const/4 v6, 0x4

    new-array v0, v6, [F

    .line 638
    const/4 v6, 0x0

    iget v7, p1, Landroid/graphics/RectF;->left:F

    aput v7, v0, v6

    .line 639
    const/4 v6, 0x1

    iget v7, p1, Landroid/graphics/RectF;->top:F

    aput v7, v0, v6

    .line 640
    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    aput v7, v0, v6

    .line 641
    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    aput v7, v0, v6

    .line 642
    invoke-static {v1, v4, v0, p0}, Lcom/meicam/themehelper/Utils;->leftToRightByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    .line 647
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "leftstr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 650
    .local v5, "rightstr":Ljava/lang/String;
    move-object v3, p2

    .line 651
    .local v3, "ret":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 652
    const-string/jumbo v6, "xiaomiStartROI"

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 653
    const-string/jumbo v6, "xiaomiEndROI"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 659
    :goto_1
    return-object v3

    .line 644
    .end local v2    # "leftstr":Ljava/lang/String;
    .end local v3    # "ret":Ljava/lang/String;
    .end local v5    # "rightstr":Ljava/lang/String;
    :cond_0
    invoke-static {v1, v4, p0}, Lcom/meicam/themehelper/Utils;->normalLeftToRightByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 655
    .restart local v2    # "leftstr":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    .restart local v5    # "rightstr":Ljava/lang/String;
    :cond_1
    const-string v6, "jieshu"

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 656
    const-string v6, "kaishi"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 718
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 719
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getImgRatio(Lcom/meicam/sdk/NvsAVFileInfo;)F
    .locals 6
    .param p0, "fileInfo"    # Lcom/meicam/sdk/NvsAVFileInfo;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0, v4}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamDimension(I)Lcom/meicam/sdk/NvsSize;

    move-result-object v1

    .line 60
    .local v1, "imgSize":Lcom/meicam/sdk/NvsSize;
    invoke-virtual {p0, v4}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamRotation(I)I

    move-result v3

    .line 61
    .local v3, "rotation":I
    new-instance v2, Lcom/meicam/sdk/NvsSize;

    iget v4, v1, Lcom/meicam/sdk/NvsSize;->width:I

    iget v5, v1, Lcom/meicam/sdk/NvsSize;->height:I

    invoke-direct {v2, v4, v5}, Lcom/meicam/sdk/NvsSize;-><init>(II)V

    .line 62
    .local v2, "imgSizeInner":Lcom/meicam/sdk/NvsSize;
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 63
    :cond_0
    iget v4, v1, Lcom/meicam/sdk/NvsSize;->height:I

    iput v4, v2, Lcom/meicam/sdk/NvsSize;->width:I

    .line 64
    iget v4, v1, Lcom/meicam/sdk/NvsSize;->width:I

    iput v4, v2, Lcom/meicam/sdk/NvsSize;->height:I

    .line 67
    :cond_1
    iget v4, v2, Lcom/meicam/sdk/NvsSize;->width:I

    int-to-float v4, v4

    iget v5, v2, Lcom/meicam/sdk/NvsSize;->height:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 68
    .local v0, "imgRatio":F
    return v0
.end method

.method private static getMotionIdx(II)I
    .locals 3
    .param p0, "maxIdx"    # I
    .param p1, "motionType"    # I

    .prologue
    .line 696
    sget-object v2, Lcom/meicam/themehelper/NvsThemeHelper;->rand:Ljava/util/Random;

    invoke-virtual {v2, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 697
    .local v0, "newIdx":I
    sget-object v2, Lcom/meicam/themehelper/Utils;->motionIdxList:[I

    array-length v2, v2

    if-lt p1, v2, :cond_0

    move v1, v0

    .line 706
    .end local v0    # "newIdx":I
    .local v1, "newIdx":I
    :goto_0
    return v1

    .line 700
    .end local v1    # "newIdx":I
    .restart local v0    # "newIdx":I
    :cond_0
    sget-object v2, Lcom/meicam/themehelper/Utils;->motionIdxList:[I

    aget v2, v2, p1

    if-ne v0, v2, :cond_1

    .line 701
    add-int/lit8 v0, v0, 0x1

    .line 702
    if-lt v0, p0, :cond_1

    .line 703
    const/4 v0, 0x0

    .line 705
    :cond_1
    sget-object v2, Lcom/meicam/themehelper/Utils;->motionIdxList:[I

    aput v0, v2, p1

    move v1, v0

    .line 706
    .end local v0    # "newIdx":I
    .restart local v1    # "newIdx":I
    goto :goto_0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 710
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 711
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 712
    .local v1, "mWm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 713
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 714
    .local v2, "screenWidth":I
    return v2
.end method

.method private static leftToRight(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V
    .locals 3
    .param p0, "left"    # Landroid/graphics/RectF;
    .param p1, "right"    # Landroid/graphics/RectF;
    .param p2, "rect"    # [F
    .param p3, "imgRatio"    # F

    .prologue
    .line 284
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    aget v1, p2, v1

    const v2, 0x3e99999a    # 0.3f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 285
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 286
    const v0, -0x404ccccd    # -1.4f

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 287
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    div-float/2addr v0, p3

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 294
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 295
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 296
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/graphics/RectF;->right:F

    const v2, 0x3e19999a    # 0.15f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 297
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 298
    return-void
.end method

.method private static leftToRightByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V
    .locals 7
    .param p0, "left"    # Landroid/graphics/RectF;
    .param p1, "right"    # Landroid/graphics/RectF;
    .param p2, "rect"    # [F
    .param p3, "imgRatio"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 301
    float-to-double v2, p3

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 302
    const v2, 0x3fb33333    # 1.4f

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 303
    const v2, -0x404ccccd    # -1.4f

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 304
    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v2, v3

    div-float v1, v2, p3

    .line 306
    .local v1, "w":F
    const/high16 v2, -0x40800000    # -1.0f

    neg-float v3, v1

    div-float/2addr v3, v6

    const v4, 0x3d99999a    # 0.075f

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 307
    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    div-float/2addr v2, p3

    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 309
    iget v2, p0, Landroid/graphics/RectF;->top:F

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 310
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 311
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/graphics/RectF;->right:F

    const v4, 0x3e19999a    # 0.15f

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 312
    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 343
    .end local v1    # "w":F
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v2, 0x1

    aget v2, p2, v2

    mul-float/2addr v2, v6

    const/4 v3, 0x3

    aget v3, p2, v3

    sub-float/2addr v2, v3

    div-float v0, v2, v6

    .line 316
    .local v0, "centerY":F
    const v2, -0x4099999a    # -0.9f

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 317
    const v2, 0x3f333333    # 0.7f

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 318
    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 319
    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    mul-float/2addr v2, p3

    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 321
    const v2, -0x40cccccd    # -0.7f

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 322
    const v2, 0x3f666666    # 0.9f

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 323
    iget v2, p0, Landroid/graphics/RectF;->top:F

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 324
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private static normalLbToRt(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 5
    .param p0, "Lb"    # Landroid/graphics/RectF;
    .param p1, "Rt"    # Landroid/graphics/RectF;
    .param p2, "ratio"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 454
    const v0, -0x4099999a    # -0.9f

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 455
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 456
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 457
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 458
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 459
    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 460
    invoke-static {p0, p2}, Lcom/meicam/themehelper/Utils;->changeROTBottom(Landroid/graphics/RectF;F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 462
    :cond_0
    const/high16 v0, -0x40c00000    # -0.75f

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 463
    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 464
    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 465
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 466
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 467
    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 468
    invoke-static {p1, p2}, Lcom/meicam/themehelper/Utils;->changeROTBottom(Landroid/graphics/RectF;F)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 470
    :cond_1
    return-void
.end method

.method public static normalLeftToRightByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 7
    .param p0, "left"    # Landroid/graphics/RectF;
    .param p1, "right"    # Landroid/graphics/RectF;
    .param p2, "imgRatio"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 472
    float-to-double v2, p2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 473
    const v1, 0x3fb33333    # 1.4f

    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 474
    const v1, -0x404ccccd    # -1.4f

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 475
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v1, v2

    div-float v0, v1, p2

    .line 477
    .local v0, "w":F
    const/high16 v1, -0x40800000    # -1.0f

    neg-float v2, v0

    div-float/2addr v2, v6

    const v3, 0x3d99999a    # 0.075f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 478
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, p2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/RectF;->right:F

    .line 480
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 481
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 482
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/graphics/RectF;->right:F

    const v3, 0x3e19999a    # 0.15f

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 483
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 512
    .end local v0    # "w":F
    :goto_0
    return-void

    .line 485
    :cond_0
    const v1, -0x40b33333    # -0.8f

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 486
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Landroid/graphics/RectF;->right:F

    .line 487
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 488
    iget v1, p0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 490
    const v1, -0x40cccccd    # -0.7f

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 491
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 492
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 493
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private static normalLtToRb(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 5
    .param p0, "Lt"    # Landroid/graphics/RectF;
    .param p1, "Rb"    # Landroid/graphics/RectF;
    .param p2, "ratio"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 436
    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 437
    iput v4, p0, Landroid/graphics/RectF;->top:F

    .line 438
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 439
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 440
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 441
    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 442
    invoke-static {p0, p2}, Lcom/meicam/themehelper/Utils;->changeROTBottom(Landroid/graphics/RectF;F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 444
    :cond_0
    const v0, -0x40a66666    # -0.85f

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 445
    const v0, 0x3f666666    # 0.9f

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 446
    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 447
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 448
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 449
    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 450
    invoke-static {p1, p2}, Lcom/meicam/themehelper/Utils;->changeROTBottom(Landroid/graphics/RectF;F)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 452
    :cond_1
    return-void
.end method

.method public static normalUpToBottomByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2
    .param p0, "up"    # Landroid/graphics/RectF;
    .param p1, "bottom"    # Landroid/graphics/RectF;
    .param p2, "imgRatio"    # F

    .prologue
    .line 531
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 532
    const v0, -0x40b33333    # -0.8f

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 533
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 534
    iget v0, p0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 536
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 537
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 538
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 539
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 540
    return-void
.end method

.method public static readFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v7, 0x0

    .line 33
    const/4 v2, 0x0

    .line 37
    .local v2, "fileString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "f":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    .end local v1    # "f":Ljava/io/File;
    .local v5, "in":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 44
    .local v6, "size":I
    new-array v4, v6, [B

    .line 45
    .local v4, "filecontent":[B
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    .line 46
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 47
    new-instance v3, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v3, v4, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v2    # "fileString":Ljava/lang/String;
    .local v3, "fileString":Ljava/lang/String;
    move-object v2, v3

    .line 55
    .end local v3    # "fileString":Ljava/lang/String;
    .end local v4    # "filecontent":[B
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "size":I
    .restart local v2    # "fileString":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 41
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .restart local v5    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 48
    .end local v5    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v3, v7

    .line 50
    goto :goto_1

    .line 51
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v7

    .line 53
    goto :goto_1
.end method

.method private static setClipMask(Lcom/meicam/sdk/NvsVideoClip;Z)V
    .locals 5
    .param p0, "clip"    # Lcom/meicam/sdk/NvsVideoClip;
    .param p1, "fullscreen"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 113
    if-eqz p1, :cond_0

    .line 114
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v4, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/meicam/sdk/NvsVideoClip;->setImageMaskROI(Landroid/graphics/RectF;)V

    .line 115
    const-string v1, "fullscreenMode"

    const-string/jumbo v2, "true"

    invoke-virtual {p0, v1, v2}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    sget v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    .line 118
    .local v0, "top":F
    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v0

    invoke-direct {v1, v3, v0, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/meicam/sdk/NvsVideoClip;->setImageMaskROI(Landroid/graphics/RectF;)V

    .line 119
    const-string v1, "fullscreenMode"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/meicam/sdk/NvsVideoClip;->setAttachment(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setImageMotion(Lcom/meicam/sdk/NvsVideoClip;FZLandroid/graphics/RectF;)V
    .locals 7
    .param p0, "clip"    # Lcom/meicam/sdk/NvsVideoClip;
    .param p1, "imgRatio"    # F
    .param p2, "isLargeImg"    # Z
    .param p3, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 72
    if-eqz p2, :cond_1

    .line 73
    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/meicam/themehelper/Utils;->getMotionIdx(II)I

    move-result v1

    .line 74
    .local v1, "idx":I
    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0, v4}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionMode(I)V

    .line 87
    .end local v1    # "idx":I
    :goto_0
    const/high16 v5, 0x3f400000    # 0.75f

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    :goto_1
    invoke-static {p0, v3}, Lcom/meicam/themehelper/Utils;->setClipMask(Lcom/meicam/sdk/NvsVideoClip;Z)V

    .line 88
    return-void

    .line 77
    .restart local v1    # "idx":I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionMode(I)V

    goto :goto_0

    .line 79
    .end local v1    # "idx":I
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 80
    .local v2, "startROI":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 82
    .local v0, "endROI":Landroid/graphics/RectF;
    invoke-static {v2, v0, p3, p1}, Lcom/meicam/themehelper/Utils;->setImageROI(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 84
    invoke-virtual {p0, v2, v0}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionROI(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .end local v0    # "endROI":Landroid/graphics/RectF;
    .end local v2    # "startROI":Landroid/graphics/RectF;
    :cond_2
    move v3, v4

    .line 87
    goto :goto_1
.end method

.method public static setImageROI(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 5
    .param p0, "startROI"    # Landroid/graphics/RectF;
    .param p1, "endROI"    # Landroid/graphics/RectF;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "imgRatio"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, p3, v4

    if-gez v4, :cond_0

    move v1, v2

    .line 93
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz p2, :cond_2

    .line 94
    const/4 v4, 0x4

    new-array v0, v4, [F

    .line 95
    .local v0, "frect":[F
    iget v4, p2, Landroid/graphics/RectF;->left:F

    aput v4, v0, v3

    .line 96
    iget v3, p2, Landroid/graphics/RectF;->top:F

    aput v3, v0, v2

    .line 97
    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    aput v3, v0, v2

    .line 98
    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    aput v3, v0, v2

    .line 99
    if-eqz v1, :cond_1

    .line 100
    invoke-static {p0, p1, p3, v0}, Lcom/meicam/themehelper/Utils;->setPortraitFaceImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F[F)V

    .line 110
    .end local v0    # "frect":[F
    :goto_1
    return-void

    .end local v1    # "isPortrait":Z
    :cond_0
    move v1, v3

    .line 91
    goto :goto_0

    .line 102
    .restart local v0    # "frect":[F
    .restart local v1    # "isPortrait":Z
    :cond_1
    invoke-static {p0, p1, p3, v0}, Lcom/meicam/themehelper/Utils;->setLandscapeFaceImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F[F)V

    goto :goto_1

    .line 104
    .end local v0    # "frect":[F
    :cond_2
    if-eqz v1, :cond_3

    .line 105
    invoke-static {p0, p1, p3}, Lcom/meicam/themehelper/Utils;->setPortraitImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_1

    .line 107
    :cond_3
    invoke-static {p0, p1, p3}, Lcom/meicam/themehelper/Utils;->setLandscapeImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_1
.end method

.method private static setLandscapeFaceImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F[F)V
    .locals 3
    .param p0, "startROI"    # Landroid/graphics/RectF;
    .param p1, "endROI"    # Landroid/graphics/RectF;
    .param p2, "imgRatio"    # F
    .param p3, "rect"    # [F

    .prologue
    .line 267
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/meicam/themehelper/Utils;->getMotionIdx(II)I

    move-result v0

    .line 272
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 274
    :pswitch_0
    invoke-static {p0, p1, p3, p2}, Lcom/meicam/themehelper/Utils;->leftToRight(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-static {p1, p0, p3, p2}, Lcom/meicam/themehelper/Utils;->leftToRight(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setLandscapeImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p0, "startROI"    # Landroid/graphics/RectF;
    .param p1, "endROI"    # Landroid/graphics/RectF;
    .param p2, "imgRatio"    # F

    .prologue
    .line 124
    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/meicam/themehelper/Utils;->getMotionIdx(II)I

    move-result v0

    .line 126
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 138
    if-nez v0, :cond_0

    .line 139
    invoke-static {p0, p2}, Lcom/meicam/themehelper/Utils;->calcLandscapeLeftRec(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 140
    invoke-static {p1, p2}, Lcom/meicam/themehelper/Utils;->calcLandscapeRightRec(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 148
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/meicam/themehelper/Utils;->setZoomIn(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-static {p1, p0, p2}, Lcom/meicam/themehelper/Utils;->setZoomIn(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p1, p2}, Lcom/meicam/themehelper/Utils;->calcLandscapeLeftRec(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 143
    invoke-static {p0, p2}, Lcom/meicam/themehelper/Utils;->calcLandscapeRightRec(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setPortraitFaceImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F[F)V
    .locals 3
    .param p0, "startROI"    # Landroid/graphics/RectF;
    .param p1, "endROI"    # Landroid/graphics/RectF;
    .param p2, "imgRatio"    # F
    .param p3, "rect"    # [F

    .prologue
    .line 237
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/meicam/themehelper/Utils;->getMotionIdx(II)I

    move-result v0

    .line 244
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 246
    :pswitch_0
    invoke-static {p0, p1, p3, p2}, Lcom/meicam/themehelper/Utils;->upToBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-static {p1, p0, p3, p2}, Lcom/meicam/themehelper/Utils;->upToBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setPortraitImgMotion(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 4
    .param p0, "startROI"    # Landroid/graphics/RectF;
    .param p1, "endROI"    # Landroid/graphics/RectF;
    .param p2, "imgRatio"    # F

    .prologue
    const/4 v2, 0x4

    .line 186
    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    move v1, v2

    .line 187
    .local v1, "maxIdx":I
    :goto_0
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/meicam/themehelper/Utils;->getMotionIdx(II)I

    move-result v0

    .line 189
    .local v0, "index":I
    if-ne v0, v2, :cond_1

    .line 190
    invoke-static {p0, p1, p2}, Lcom/meicam/themehelper/Utils;->setPortraitZoomin(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 212
    :goto_1
    return-void

    .line 186
    .end local v0    # "index":I
    .end local v1    # "maxIdx":I
    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    .line 193
    .restart local v0    # "index":I
    .restart local v1    # "maxIdx":I
    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 194
    invoke-static {p1, p0, p2}, Lcom/meicam/themehelper/Utils;->setPortraitZoomin(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_1

    .line 197
    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 199
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/meicam/themehelper/Utils;->normalLtToRb(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_1

    .line 202
    :pswitch_1
    invoke-static {p1, p0, p2}, Lcom/meicam/themehelper/Utils;->normalLtToRb(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_1

    .line 205
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/meicam/themehelper/Utils;->normalLbToRt(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_1

    .line 208
    :pswitch_3
    invoke-static {p1, p0, p2}, Lcom/meicam/themehelper/Utils;->normalLbToRt(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setPortraitZoomin(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 6
    .param p0, "inRect"    # Landroid/graphics/RectF;
    .param p1, "outRect"    # Landroid/graphics/RectF;
    .param p2, "ratio"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3f5eb852    # 0.87f

    const/high16 v1, -0x40800000    # -1.0f

    const v3, -0x40a147ae    # -0.87f

    const/high16 v2, 0x40000000    # 2.0f

    .line 215
    sget v0, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 216
    iput v5, p0, Landroid/graphics/RectF;->top:F

    .line 217
    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 218
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, p2

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 219
    iget v0, p0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 220
    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 221
    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 222
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, p2

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 223
    iget v0, p1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 234
    :goto_0
    return-void

    .line 225
    :cond_0
    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 226
    iput v5, p0, Landroid/graphics/RectF;->right:F

    .line 227
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 228
    iget v0, p0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 229
    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 230
    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 231
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 232
    iget v0, p1, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private static setZoomIn(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p0, "inRect"    # Landroid/graphics/RectF;
    .param p1, "outRect"    # Landroid/graphics/RectF;
    .param p2, "ratio"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 151
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 152
    const v0, -0x404ccccd    # -1.4f

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 153
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 154
    iget v0, p0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 155
    const v0, 0x3f99999a    # 1.2f

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 156
    const v0, -0x40666666    # -1.2f

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 157
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, p2

    sget v1, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 158
    iget v0, p1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 159
    return-void
.end method

.method private static upToBottom(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V
    .locals 7
    .param p0, "up"    # Landroid/graphics/RectF;
    .param p1, "bottom"    # Landroid/graphics/RectF;
    .param p2, "rect"    # [F
    .param p3, "imgRatio"    # F

    .prologue
    const/4 v2, 0x0

    const v3, 0x3eb33333    # 0.35f

    const v6, 0x3e051eb8    # 0.13f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 345
    aget v1, p2, v2

    sub-float/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 346
    aget v1, p2, v2

    const/4 v2, 0x2

    aget v2, p2, v2

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/graphics/RectF;->right:F

    .line 347
    const/4 v1, 0x1

    aget v1, p2, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 348
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    sget v3, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 349
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 350
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v4, v1

    .line 351
    .local v0, "offset":F
    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    .line 352
    iget v1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 353
    iget v1, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    .line 355
    invoke-static {p0, p1, p3}, Lcom/meicam/themehelper/Utils;->setPortraitZoomin(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 373
    .end local v0    # "offset":F
    :goto_0
    return-void

    .line 358
    .restart local v0    # "offset":F
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float v0, v5, v1

    .line 359
    iget v1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 360
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 371
    .end local v0    # "offset":F
    :cond_1
    :goto_1
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 372
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 363
    :cond_2
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v6

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 364
    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v6

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 365
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 366
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v4, v1

    .line 367
    .restart local v0    # "offset":F
    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 368
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_1
.end method

.method private static upToBottomByFx(Landroid/graphics/RectF;Landroid/graphics/RectF;[FF)V
    .locals 6
    .param p0, "up"    # Landroid/graphics/RectF;
    .param p1, "bottom"    # Landroid/graphics/RectF;
    .param p2, "rect"    # [F
    .param p3, "imgRatio"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 394
    const/4 v1, 0x0

    aget v1, p2, v1

    mul-float/2addr v1, v5

    const/4 v2, 0x2

    aget v2, p2, v2

    add-float/2addr v1, v2

    div-float v0, v1, v5

    .line 396
    .local v0, "centerX":F
    iput v4, p0, Landroid/graphics/RectF;->top:F

    .line 397
    const v1, -0x40b33333    # -0.8f

    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 398
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v1, v2

    div-float/2addr v1, p3

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 399
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    sget v2, Lcom/meicam/themehelper/NvsThemeHelper;->m_timelineRatio:F

    mul-float/2addr v1, v2

    div-float/2addr v1, p3

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/RectF;->right:F

    .line 400
    iget v1, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 401
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/RectF;->right:F

    .line 402
    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 404
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 405
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 406
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 409
    :cond_1
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 410
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 411
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 412
    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 413
    return-void
.end method

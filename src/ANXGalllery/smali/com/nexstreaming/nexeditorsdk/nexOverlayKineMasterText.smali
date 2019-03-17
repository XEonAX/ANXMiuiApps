.class public final Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;
.super Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
.source "nexOverlayKineMasterText.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x78000000

.field private static final LOG_TAG:Ljava/lang/String; = "nexOverlayKineMasterText"

.field private static final MAX_TEX_SIZE:I = 0x7d0

.field private static final TEXT_WRAP_WIDTH:I = 0x500

.field private static number:I


# instance fields
.field private TextId:I

.field private actualScale:F

.field private bUserFontMode:Z

.field private backgroundColor:I

.field private cachedTextPaint:Landroid/text/TextPaint;

.field private enableBackground:Z

.field private enableGlow:Z

.field private enableGradient:Z

.field private enableOutline:Z

.field private enableShadow:Z

.field private extendBackground:Z

.field private fontId:Ljava/lang/String;

.field private glowColor:I

.field private glowRadius:F

.field private glowType:I

.field private gradientColors:[I

.field private transient height:I

.field private layerText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private outlineColor:I

.field private outlineWidth:F

.field final serialKMText:Z

.field private shadowColor:I

.field private shadowDx:F

.field private shadowDy:F

.field private shadowRadius:F

.field private textAlign:Landroid/text/Layout$Alignment;

.field private textColor:I

.field private transient textLayout:Landroid/text/StaticLayout;

.field private textSize:F

.field private transient validDimensions:Z

.field private transient width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->number:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 110
    const-string v0, "nexOverlayStandardText"

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    .line 58
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textSize:F

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textColor:I

    .line 63
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableBackground:Z

    .line 64
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->extendBackground:Z

    .line 65
    const/high16 v0, -0x78000000

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->backgroundColor:I

    .line 67
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    .line 68
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowColor:I

    .line 69
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowRadius:F

    .line 70
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDx:F

    .line 71
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDy:F

    .line 73
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    .line 74
    const v0, -0x55000056

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowColor:I

    .line 75
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowRadius:F

    .line 76
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowType:I

    .line 78
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    .line 79
    const v0, -0x333334

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineColor:I

    .line 80
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineWidth:F

    .line 82
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGradient:Z

    .line 90
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    .line 93
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textAlign:Landroid/text/Layout$Alignment;

    .line 94
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->TextId:I

    .line 99
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->serialKMText:Z

    .line 111
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mContext:Landroid/content/Context;

    .line 112
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->number:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->TextId:I

    .line 113
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->number:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->number:I

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 127
    const-string v0, "nexOverlayStandardText"

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    .line 58
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textSize:F

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textColor:I

    .line 63
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableBackground:Z

    .line 64
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->extendBackground:Z

    .line 65
    const/high16 v0, -0x78000000

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->backgroundColor:I

    .line 67
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    .line 68
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowColor:I

    .line 69
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowRadius:F

    .line 70
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDx:F

    .line 71
    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDy:F

    .line 73
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    .line 74
    const v0, -0x55000056

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowColor:I

    .line 75
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowRadius:F

    .line 76
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowType:I

    .line 78
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    .line 79
    const v0, -0x333334

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineColor:I

    .line 80
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineWidth:F

    .line 82
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGradient:Z

    .line 90
    iput v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    .line 93
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textAlign:Landroid/text/Layout$Alignment;

    .line 94
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->TextId:I

    .line 99
    iput-boolean v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->serialKMText:Z

    .line 128
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    .line 130
    int-to-float v0, p3

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textSize:F

    .line 131
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->number:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->TextId:I

    .line 132
    sget v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->number:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->number:I

    .line 133
    return-void
.end method

.method private declared-synchronized calcDimensions()V
    .locals 10

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 645
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->validDimensions:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 678
    :goto_0
    monitor-exit p0

    return-void

    .line 648
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 650
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getText()Ljava/lang/String;

    move-result-object v1

    .line 652
    const/high16 v7, 0x3f800000    # 1.0f

    .line 653
    const/4 v8, 0x0

    .line 654
    const/4 v9, 0x1

    .line 655
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectProfile()Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexAspectProfile;->getWidth()I

    move-result v0

    .line 661
    int-to-float v0, v0

    invoke-static {v1, v4}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v5, v0

    .line 662
    new-instance v0, Ljava/text/Bidi;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 663
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textAlign:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/Layout$Alignment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textAlign:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    .line 673
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getShadowPadding()I

    move-result v0

    .line 674
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->width:I

    .line 675
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->height:I

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->validDimensions:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 665
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textAlign:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/Layout$Alignment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 666
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    goto :goto_1

    .line 667
    :cond_4
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textAlign:Landroid/text/Layout$Alignment;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Landroid/text/Layout$Alignment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getPaint()Landroid/text/TextPaint;
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->cachedTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_2

    .line 614
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->cachedTextPaint:Landroid/text/TextPaint;

    .line 618
    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->cachedTextPaint:Landroid/text/TextPaint;

    .line 619
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textSize:F

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 620
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 621
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 622
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineWidth:F

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 623
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 624
    const/4 v0, 0x0

    .line 626
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 627
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->bUserFontMode:Z

    if-eqz v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 633
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 637
    :cond_1
    return-object v1

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->cachedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    goto :goto_0

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1
.end method

.method private getShadowPadding()I
    .locals 5

    .prologue
    .line 641
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineWidth:F

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowRadius:F

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowRadius:F

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDx:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private declared-synchronized makeTextBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 501
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->calcDimensions()V

    .line 503
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getShadowPadding()I

    move-result v1

    .line 512
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 513
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 516
    if-lez v2, :cond_0

    if-gtz v3, :cond_1

    .line 606
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 519
    :cond_1
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 521
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 522
    int-to-float v3, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 533
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 543
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 544
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 545
    iget-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    if-eqz v3, :cond_2

    .line 546
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowRadius:F

    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 547
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 549
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 550
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDx:F

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowDy:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 551
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 552
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 555
    :cond_2
    iget-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    if-eqz v3, :cond_3

    .line 556
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowRadius:F

    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 557
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 560
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 564
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 565
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 568
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 571
    iget-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    if-eqz v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 573
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 574
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineWidth:F

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->actualScale:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 578
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public EnableGlow(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    if-eq v0, p1, :cond_0

    .line 391
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 394
    :cond_0
    return-void
.end method

.method public EnableOutline(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    if-eq v0, p1, :cond_0

    .line 414
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 417
    :cond_0
    return-void
.end method

.method public EnableShadow(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    if-eq v0, p1, :cond_0

    .line 368
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 371
    :cond_0
    return-void
.end method

.method public getFontId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getFontIdInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFontIdInternal(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    if-eqz p1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    .line 497
    :goto_0
    return-object v0

    .line 493
    :cond_0
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->bUserFontMode:Z

    if-nez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGlowColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getGlowColor(Z)I

    move-result v0

    return v0
.end method

.method getGlowColor(Z)I
    .locals 1

    .prologue
    .line 254
    if-nez p1, :cond_1

    .line 255
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    if-eqz v0, :cond_0

    .line 256
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowColor:I

    .line 261
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowColor:I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->calcDimensions()V

    .line 156
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->height:I

    return v0
.end method

.method public getOutlineColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getOutlineColor(Z)I

    move-result v0

    return v0
.end method

.method getOutlineColor(Z)I
    .locals 1

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 291
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    if-eqz v0, :cond_0

    .line 292
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineColor:I

    .line 297
    :goto_0
    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineColor:I

    goto :goto_0
.end method

.method public getShadowColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->getShadowColor(Z)I

    move-result v0

    return v0
.end method

.method getShadowColor(Z)I
    .locals 1

    .prologue
    .line 325
    if-nez p1, :cond_1

    .line 326
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    if-eqz v0, :cond_0

    .line 327
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowColor:I

    .line 332
    :goto_0
    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowColor:I

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textSize:F

    return v0
.end method

.method protected getUserBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->makeTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getUserBitmapID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KineMasterText-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->TextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->calcDimensions()V

    .line 144
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->width:I

    return v0
.end method

.method public isEnableGlow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    return v0
.end method

.method public isEnableOutline()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    return v0
.end method

.method public isEnableShadow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    return v0
.end method

.method public setFontId(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 445
    if-nez p1, :cond_1

    .line 446
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->bUserFontMode:Z

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    .line 448
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->validDimensions:Z

    .line 449
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 450
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->calcDimensions()V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 455
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 456
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 457
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ttf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->bUserFontMode:Z

    .line 461
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    .line 462
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->validDimensions:Z

    .line 463
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 464
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->calcDimensions()V

    goto :goto_0

    .line 468
    :cond_2
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexFont;->isLoadedFont(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->bUserFontMode:Z

    .line 470
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->fontId:Ljava/lang/String;

    .line 471
    iput-boolean v2, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->validDimensions:Z

    .line 472
    iput-boolean v3, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 473
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->calcDimensions()V

    goto :goto_0
.end method

.method public setGlowColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowColor:I

    if-eq v0, p1, :cond_0

    .line 272
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->glowColor:I

    .line 273
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableGlow:Z

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 277
    :cond_0
    return-void
.end method

.method public setOutlineColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineColor:I

    if-eq v0, p1, :cond_0

    .line 307
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->outlineColor:I

    .line 308
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableOutline:Z

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 312
    :cond_0
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowColor:I

    if-eq v0, p1, :cond_0

    .line 343
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->shadowColor:I

    .line 344
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->enableShadow:Z

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 348
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->layerText:Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->validDimensions:Z

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 192
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textColor:I

    if-eq v0, p1, :cond_0

    .line 217
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textColor:I

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 220
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->textSize:F

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->validDimensions:Z

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayKineMasterText;->mUpdate:Z

    .line 205
    return-void
.end method

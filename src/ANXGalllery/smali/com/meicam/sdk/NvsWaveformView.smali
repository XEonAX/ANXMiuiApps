.class public Lcom/meicam/sdk/NvsWaveformView;
.super Landroid/view/View;
.source "NvsWaveformView.java"

# interfaces
.implements Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;


# instance fields
.field private m_audioFileDuration:J

.field private m_audioFilePath:Ljava/lang/String;

.field private m_audioFileSampleCount:J

.field private m_currentTaskId:J

.field private m_leftWaveformData:[F

.field private m_needUpdateWaveformData:Z

.field private m_rightWaveformData:[F

.field private m_samplesPerGroup:J

.field private m_singleChannelMode:Z

.field private m_trimIn:J

.field private m_trimOut:J

.field private m_waveformColor:I

.field private m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    .line 40
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    .line 43
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    .line 48
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 49
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    .line 54
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    .line 59
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 60
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    .line 40
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    .line 43
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    .line 48
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 49
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    .line 54
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    .line 66
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 67
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    .line 40
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    .line 43
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    .line 48
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 49
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    .line 54
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    .line 73
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 74
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    .line 40
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    .line 41
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    .line 42
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    .line 43
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    .line 44
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    .line 48
    iput-boolean v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 49
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    .line 54
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    .line 80
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 81
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->init()V

    .line 82
    return-void
.end method

.method private calcExpectedSamplesPerGroup()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x1

    .line 276
    iget-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    iget-wide v4, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 277
    iget-wide v4, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 278
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->getWidth()I

    move-result v4

    .line 279
    if-gtz v4, :cond_0

    .line 283
    :goto_0
    return-wide v0

    .line 282
    :cond_0
    div-int/lit8 v5, v4, 0x2

    int-to-long v6, v5

    add-long/2addr v2, v6

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 283
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private cancelCurrentTask()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    iget-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    invoke-virtual {v0, v2, v3}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->cancelTask(J)V

    .line 395
    :cond_0
    iput-wide v4, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    .line 397
    :cond_1
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/meicam/sdk/NvsWaveformDataGenerator;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsWaveformDataGenerator;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    .line 269
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->setWaveformDataCallback(Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;)V

    .line 271
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsWaveformView;->setBackgroundColor(I)V

    .line 272
    return-void
.end method

.method private validateWaveformData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 288
    iget-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 289
    iput-boolean v4, p0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 290
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->cancelCurrentTask()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->calcExpectedSamplesPerGroup()J

    move-result-wide v0

    .line 295
    iget-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 296
    iput-boolean v4, p0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 297
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->cancelCurrentTask()V

    .line 298
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public getAudioFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 130
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleChannelMode()Z
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 238
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    return v0
.end method

.method public getTrimIn()J
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 157
    iget-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    return-wide v0
.end method

.method public getTrimOut()J
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 185
    iget-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    return-wide v0
.end method

.method public getWaveformColor()I
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 211
    iget v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->cancelCurrentTask()V

    .line 381
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->setWaveformDataCallback(Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;)V

    .line 383
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->release()V

    .line 384
    iput-object v1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    .line 387
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 388
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .prologue
    .line 314
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/meicam/sdk/NvsWaveformView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    :cond_0
    return-void

    .line 318
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    if-eqz v2, :cond_2

    .line 322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFilePath:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/meicam/sdk/NvsWaveformView;->calcExpectedSamplesPerGroup()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->generateWaveformData(Ljava/lang/String;JI)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    .line 327
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_leftWaveformData:[F

    if-eqz v2, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_leftWaveformData:[F

    array-length v2, v2

    div-int/lit8 v5, v2, 0x2

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_rightWaveformData:[F

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meicam/sdk/NvsWaveformView;->m_rightWaveformData:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    move v4, v2

    .line 332
    :goto_0
    if-eqz v5, :cond_0

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/meicam/sdk/NvsWaveformView;->getWidth()I

    move-result v6

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/meicam/sdk/NvsWaveformView;->getHeight()I

    move-result v2

    .line 337
    if-eqz v4, :cond_3

    div-int/lit8 v2, v2, 0x2

    .line 338
    :cond_3
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 339
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 340
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 342
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v9, 0xff

    if-ne v3, v9, :cond_4

    .line 344
    :cond_4
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 346
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    long-to-double v12, v12

    div-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    long-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-long v10, v10

    .line 347
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    sub-long/2addr v12, v14

    long-to-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    long-to-double v14, v14

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    long-to-double v14, v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 348
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_0

    .line 351
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_0

    .line 352
    int-to-double v14, v3

    int-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    .line 353
    long-to-double v0, v12

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v14, v10

    .line 354
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v9, v14

    .line 355
    if-ge v9, v5, :cond_5

    .line 356
    int-to-float v14, v2

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/sdk/NvsWaveformView;->m_leftWaveformData:[F

    move-object/from16 v16, v0

    mul-int/lit8 v17, v9, 0x2

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    float-to-int v14, v14

    .line 357
    int-to-float v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/sdk/NvsWaveformView;->m_leftWaveformData:[F

    move-object/from16 v17, v0

    mul-int/lit8 v18, v9, 0x2

    aget v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-int v15, v15

    .line 358
    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v3, v14, v0, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 359
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 362
    :cond_5
    if-ge v9, v4, :cond_6

    .line 363
    int-to-float v14, v2

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/sdk/NvsWaveformView;->m_rightWaveformData:[F

    move-object/from16 v16, v0

    mul-int/lit8 v17, v9, 0x2

    add-int/lit8 v17, v17, 0x1

    aget v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    float-to-int v14, v14

    .line 364
    int-to-float v15, v2

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meicam/sdk/NvsWaveformView;->m_rightWaveformData:[F

    move-object/from16 v17, v0

    mul-int/lit8 v9, v9, 0x2

    aget v9, v17, v9

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v9, v9, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v9, v17

    sub-float v9, v16, v9

    mul-float/2addr v9, v15

    float-to-int v9, v9

    .line 365
    add-int/2addr v14, v2

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v9, v2

    invoke-virtual {v7, v3, v14, v15, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 351
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 331
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 305
    if-eq p3, p1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->validateWaveformData()V

    .line 308
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 309
    return-void
.end method

.method public onWaveformDataGenerationFailed(JLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onWaveformDataReady(JLjava/lang/String;JJ[F[F)V
    .locals 2

    .prologue
    .line 249
    iput-object p8, p0, Lcom/meicam/sdk/NvsWaveformView;->m_leftWaveformData:[F

    .line 250
    iput-object p9, p0, Lcom/meicam/sdk/NvsWaveformView;->m_rightWaveformData:[F

    .line 251
    iput-wide p6, p0, Lcom/meicam/sdk/NvsWaveformView;->m_samplesPerGroup:J

    .line 252
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_currentTaskId:J

    .line 254
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->invalidate()V

    .line 255
    return-void
.end method

.method public setAudioFilePath(Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 92
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 93
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFilePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-nez p1, :cond_2

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFilePath:Ljava/lang/String;

    .line 98
    iput-wide v6, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    .line 99
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->cancelCurrentTask()V

    .line 100
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->invalidate()V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->getAudioFileDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 108
    iget-object v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformDataGenerator:Lcom/meicam/sdk/NvsWaveformDataGenerator;

    invoke-virtual {v2, p1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->getAudioFileSampleCount(Ljava/lang/String;)J

    move-result-wide v2

    .line 109
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 112
    iput-object p1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFilePath:Ljava/lang/String;

    .line 113
    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    .line 114
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileSampleCount:J

    .line 115
    iput-wide v6, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    .line 116
    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_needUpdateWaveformData:Z

    .line 118
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->cancelCurrentTask()V

    .line 119
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->invalidate()V

    goto :goto_0
.end method

.method public setSingleChannelMode(Z)V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 223
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    if-ne p1, v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iput-boolean p1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_singleChannelMode:Z

    .line 227
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->invalidate()V

    goto :goto_0
.end method

.method public setTrimIn(J)V
    .locals 5

    .prologue
    .line 140
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 141
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 142
    iget-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    .line 146
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->validateWaveformData()V

    goto :goto_0
.end method

.method public setTrimOut(J)V
    .locals 5

    .prologue
    .line 167
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 168
    iget-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimIn:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 169
    iget-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_audioFileDuration:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 170
    iget-wide v2, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_trimOut:J

    .line 174
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformView;->validateWaveformData()V

    goto :goto_0
.end method

.method public setWaveformColor(I)V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 196
    iget v0, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    if-ne p1, v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iput p1, p0, Lcom/meicam/sdk/NvsWaveformView;->m_waveformColor:I

    .line 200
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformView;->invalidate()V

    goto :goto_0
.end method

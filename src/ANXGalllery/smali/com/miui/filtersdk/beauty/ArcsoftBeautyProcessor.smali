.class public Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;
.super Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
.source "ArcsoftBeautyProcessor.java"


# instance fields
.field private mBeautyParameters:[I

.field private mBrightEyeRatio:I

.field private mDeblemish:I

.field private mDepouchRatio:I

.field private mEnlargeEyeRatio:I

.field private mIrisShineRatio:I

.field private mLipBeautyRatio:I

.field private mRelightingRatio:I

.field private mRuddyRatio:I

.field private mShrinkFaceRatio:I

.field private mShrinkNooseRatio:I

.field private mSmoothStrength:I

.field private mWhiteStrength:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 27
    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;-><init>()V

    .line 28
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mBeautyParameters:[I

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 30
    iget-object v1, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mBeautyParameters:[I

    aput v3, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0, v1}, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->setExtraSpan(F)V

    .line 34
    const/4 v1, 0x6

    new-array v1, v1, [[F

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v4, [F

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mLevelParameters:[[F

    .line 42
    return-void

    .line 34
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x41700000    # 15.0f
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
        0x428c0000    # 70.0f
        0x0
        0x41c80000    # 25.0f
        0x41200000    # 10.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x41e00000    # 28.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x41700000    # 15.0f
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
        0x428c0000    # 70.0f
        0x0
        0x41c80000    # 25.0f
        0x41200000    # 10.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x41200000    # 10.0f
        0x420c0000    # 35.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x41700000    # 15.0f
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
        0x428c0000    # 70.0f
        0x0
        0x41c80000    # 25.0f
        0x41200000    # 10.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x41200000    # 10.0f
        0x42280000    # 42.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x3f800000    # 1.0f
        0x428c0000    # 70.0f
        0x0
        0x41c80000    # 25.0f
        0x41200000    # 10.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x3f800000    # 1.0f
        0x428c0000    # 70.0f
        0x0
        0x41c80000    # 25.0f
        0x41200000    # 10.0f
        0x0
    .end array-data
.end method

.method private isParametersEmpty()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mBrightEyeRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mSmoothStrength:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mWhiteStrength:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkFaceRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mEnlargeEyeRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDeblemish:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDepouchRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mIrisShineRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mLipBeautyRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRelightingRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRuddyRatio:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkNooseRatio:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public beautify(Landroid/graphics/Bitmap;II)V
    .locals 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->isParametersEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v3, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mWhiteStrength:I

    iget v4, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mSmoothStrength:I

    iget v5, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mEnlargeEyeRatio:I

    iget v6, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkFaceRatio:I

    iget v7, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mBrightEyeRatio:I

    iget v8, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDeblemish:I

    iget v9, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDepouchRatio:I

    iget v10, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mIrisShineRatio:I

    iget v11, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mLipBeautyRatio:I

    iget v12, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRelightingRatio:I

    iget v13, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRuddyRatio:I

    iget v14, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkNooseRatio:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {v0 .. v14}, Lcom/miui/filtersdk/BeautyArcsoftJni;->beautifyProcessBitmap(Landroid/graphics/Bitmap;IIIIIIIIIIIIII)V

    goto :goto_0
.end method

.method public beautify([BIII[BI)V
    .locals 15
    .param p1, "inputImage"    # [B
    .param p2, "inFormat"    # I
    .param p3, "outputWidth"    # I
    .param p4, "outputHeight"    # I
    .param p5, "outputImage"    # [B
    .param p6, "outFormat"    # I

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->isParametersEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget v3, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mWhiteStrength:I

    iget v4, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mSmoothStrength:I

    iget v5, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mEnlargeEyeRatio:I

    iget v6, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkFaceRatio:I

    iget v7, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mBrightEyeRatio:I

    iget v8, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDeblemish:I

    iget v9, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDepouchRatio:I

    iget v10, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mIrisShineRatio:I

    iget v11, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mLipBeautyRatio:I

    iget v12, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRelightingRatio:I

    iget v13, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRuddyRatio:I

    iget v14, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkNooseRatio:I

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {v0 .. v14}, Lcom/miui/filtersdk/BeautyArcsoftJni;->beautifyProcess([BIIIIIIIIIIIIII)V

    goto :goto_0
.end method

.method public clearBeautyParameters()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mBrightEyeRatio:I

    .line 202
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mSmoothStrength:I

    .line 203
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mWhiteStrength:I

    .line 204
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkFaceRatio:I

    .line 205
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mEnlargeEyeRatio:I

    .line 206
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mIrisShineRatio:I

    .line 207
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDeblemish:I

    .line 208
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDepouchRatio:I

    .line 209
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRelightingRatio:I

    .line 210
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mLipBeautyRatio:I

    .line 211
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRuddyRatio:I

    .line 212
    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkNooseRatio:I

    .line 213
    return-void
.end method

.method public getSupportedBeautyParamTypes()[Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->BRIGHT_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEPOUCH_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RELIGHTING_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->LIP_BEAUTY_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_NOSE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F
    .locals 3
    .param p1, "type"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .prologue
    const/4 v2, 0x2

    .line 58
    sget-object v0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-virtual {p1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [F

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    goto :goto_0

    .line 62
    :pswitch_1
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    goto :goto_0

    .line 64
    :pswitch_2
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    goto :goto_0

    .line 66
    :pswitch_3
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    goto :goto_0

    .line 68
    :pswitch_4
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    goto :goto_0

    .line 70
    :pswitch_5
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    goto :goto_0

    .line 72
    :pswitch_6
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    goto :goto_0

    .line 74
    :pswitch_7
    new-array v0, v2, [F

    fill-array-data v0, :array_7

    goto :goto_0

    .line 76
    :pswitch_8
    new-array v0, v2, [F

    fill-array-data v0, :array_8

    goto :goto_0

    .line 78
    :pswitch_9
    new-array v0, v2, [F

    fill-array-data v0, :array_9

    goto :goto_0

    .line 80
    :pswitch_a
    new-array v0, v2, [F

    fill-array-data v0, :array_a

    goto :goto_0

    .line 82
    :pswitch_b
    new-array v0, v2, [F

    fill-array-data v0, :array_b

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 60
    :array_0
    .array-data 4
        0x0
        0x42200000    # 40.0f
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data

    .line 64
    :array_2
    .array-data 4
        0x0
        0x428c0000    # 70.0f
    .end array-data

    .line 66
    :array_3
    .array-data 4
        0x0
        0x428c0000    # 70.0f
    .end array-data

    .line 68
    :array_4
    .array-data 4
        0x0
        0x42200000    # 40.0f
    .end array-data

    .line 70
    :array_5
    .array-data 4
        0x0
        0x42a00000    # 80.0f
    .end array-data

    .line 72
    :array_6
    .array-data 4
        0x0
        0x42700000    # 60.0f
    .end array-data

    .line 74
    :array_7
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data

    .line 76
    :array_8
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data

    .line 78
    :array_9
    .array-data 4
        0x0
        0x42200000    # 40.0f
    .end array-data

    .line 80
    :array_a
    .array-data 4
        0x0
        0x42c80000    # 100.0f
    .end array-data

    .line 82
    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public init(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 180
    return-void
.end method

.method public setBeautyParamDegree(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V
    .locals 2
    .param p1, "type"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .param p2, "degree"    # Ljava/lang/Float;

    .prologue
    .line 97
    sget-object v0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-virtual {p1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mEnlargeEyeRatio:I

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkFaceRatio:I

    goto :goto_0

    .line 105
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mWhiteStrength:I

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mSmoothStrength:I

    goto :goto_0

    .line 111
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mBrightEyeRatio:I

    goto :goto_0

    .line 114
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRuddyRatio:I

    goto :goto_0

    .line 117
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mRelightingRatio:I

    goto :goto_0

    .line 120
    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mLipBeautyRatio:I

    goto :goto_0

    .line 123
    :pswitch_8
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDepouchRatio:I

    goto :goto_0

    .line 126
    :pswitch_9
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mIrisShineRatio:I

    goto :goto_0

    .line 129
    :pswitch_a
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mDeblemish:I

    goto :goto_0

    .line 132
    :pswitch_b
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->mShrinkNooseRatio:I

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public setBeautyParamsDegree(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v1, v2}, Lcom/miui/filtersdk/beauty/ArcsoftBeautyProcessor;->setBeautyParamDegree(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V

    goto :goto_0

    .line 93
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    :cond_0
    return-void
.end method

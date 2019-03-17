.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEngine;
.super Lcom/miui/gallery/editor/photo/core/RenderEngine;
.source "MiuiBeautyEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderEngine;-><init>()V

    return-void
.end method

.method public static preProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 77
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "newHeight":I
    .local v1, "newWidth":I
    :goto_0
    return-object p0

    .line 67
    .end local v0    # "newHeight":I
    .end local v1    # "newWidth":I
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 69
    .restart local v1    # "newWidth":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 70
    const/4 p0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 73
    .restart local v0    # "newHeight":I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 75
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 77
    :cond_2
    invoke-static {p0, v4, v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static preProcessBitmapForPreview(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 101
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "newHeight":I
    .local v1, "newWidth":I
    :goto_0
    return-object p0

    .line 90
    .end local v0    # "newHeight":I
    .end local v1    # "newWidth":I
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 92
    .restart local v1    # "newWidth":I
    if-ne v1, v4, :cond_1

    .line 93
    const/4 p0, 0x0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 95
    const/4 v1, 0x4

    .line 97
    :cond_2
    :goto_1
    rem-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    .line 98
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 101
    .restart local v0    # "newHeight":I
    invoke-static {p0, v1, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public render(Landroid/graphics/Bitmap;Lcom/miui/gallery/editor/photo/core/RenderData;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Lcom/miui/gallery/editor/photo/core/RenderData;

    .prologue
    .line 13
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;

    if-eqz v2, :cond_2

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEngine;->preProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object/from16 v20, p2

    .line 15
    check-cast v20, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;

    .line 16
    .local v20, "renderData":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->mBeautyParamsList:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->mBeautyParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 17
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->mBeautyParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    .line 18
    .local v18, "length":I
    move/from16 v0, v18

    new-array v5, v0, [I

    .line 19
    .local v5, "whiteParams":[I
    move/from16 v0, v18

    new-array v6, v0, [I

    .line 20
    .local v6, "smoothParams":[I
    move/from16 v0, v18

    new-array v7, v0, [I

    .line 21
    .local v7, "eyeLargeParams":[I
    move/from16 v0, v18

    new-array v8, v0, [I

    .line 22
    .local v8, "faceThinParams":[I
    move/from16 v0, v18

    new-array v9, v0, [I

    .line 23
    .local v9, "eyeBrightParams":[I
    move/from16 v0, v18

    new-array v10, v0, [I

    .line 24
    .local v10, "deblemishParams":[I
    move/from16 v0, v18

    new-array v11, v0, [I

    .line 25
    .local v11, "depouchParams":[I
    move/from16 v0, v18

    new-array v14, v0, [I

    .line 26
    .local v14, "relightingParams":[I
    move/from16 v0, v18

    new-array v12, v0, [I

    .line 27
    .local v12, "irisShineParams":[I
    move/from16 v0, v18

    new-array v13, v0, [I

    .line 28
    .local v13, "lipBeautyParams":[I
    move/from16 v0, v18

    new-array v15, v0, [I

    .line 29
    .local v15, "ruddyParams":[I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 31
    .local v16, "noseThinParams":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 32
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;->mBeautyParamsList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;

    .line 33
    .local v19, "params":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mWhite:I

    aput v2, v5, v17

    .line 34
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mSmooth:I

    aput v2, v6, v17

    .line 35
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mEyeLarge:I

    aput v2, v7, v17

    .line 36
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mFaceThin:I

    aput v2, v8, v17

    .line 37
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mBrightEyeRatio:I

    aput v2, v9, v17

    .line 38
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mDeblemish:I

    aput v2, v10, v17

    .line 39
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mDepouchRatio:I

    aput v2, v11, v17

    .line 40
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mRelightingRatio:I

    aput v2, v14, v17

    .line 41
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mIrisShineRatio:I

    aput v2, v12, v17

    .line 42
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mLipBeautyRatio:I

    aput v2, v13, v17

    .line 43
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mRuddyRatio:I

    aput v2, v15, v17

    .line 44
    move-object/from16 v0, v19

    iget v2, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mNoseThin:I

    aput v2, v16, v17

    .line 31
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 47
    .end local v19    # "params":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v16}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->beautifyProcessBitmap(Landroid/graphics/Bitmap;II[I[I[I[I[I[I[I[I[I[I[I[I)V

    .end local v5    # "whiteParams":[I
    .end local v6    # "smoothParams":[I
    .end local v7    # "eyeLargeParams":[I
    .end local v8    # "faceThinParams":[I
    .end local v9    # "eyeBrightParams":[I
    .end local v10    # "deblemishParams":[I
    .end local v11    # "depouchParams":[I
    .end local v12    # "irisShineParams":[I
    .end local v13    # "lipBeautyParams":[I
    .end local v14    # "relightingParams":[I
    .end local v15    # "ruddyParams":[I
    .end local v16    # "noseThinParams":[I
    .end local v17    # "i":I
    .end local v18    # "length":I
    :cond_1
    move-object/from16 v2, p1

    .line 55
    .end local v20    # "renderData":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

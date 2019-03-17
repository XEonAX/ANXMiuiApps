.class public Lcom/miui/gallery/card/core/LayoutParamsHelper;
.super Ljava/lang/Object;
.source "LayoutParamsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    }
.end annotation


# instance fields
.field private mItemMaxHeight:I

.field private mItemMinHeight:I

.field private mLayoutSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    .line 33
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    .line 35
    return-void
.end method

.method private getImageSizeGuaranteed(Ljava/util/List;III)Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    .locals 3
    .param p2, "imageIndex"    # I
    .param p3, "parentWidth"    # I
    .param p4, "decorationWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;",
            ">;III)",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;"
        }
    .end annotation

    .prologue
    .local p1, "imageSizes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;>;"
    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "imageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 189
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    check-cast v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    .line 192
    .restart local v0    # "imageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    :cond_0
    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    .end local v0    # "imageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    invoke-direct {v0, v2, v2}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>(II)V

    .line 195
    .restart local v0    # "imageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    :cond_1
    iget v1, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    if-lez v1, :cond_2

    iget v1, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    if-gtz v1, :cond_3

    .line 196
    :cond_2
    sub-int v1, p3, p4

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 197
    iget v1, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    iput v1, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 199
    :cond_3
    return-object v0
.end method

.method private getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F
    .locals 5
    .param p1, "imageSize"    # Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    .prologue
    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    .local v1, "ratio":F
    :try_start_0
    iget v2, p1, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    int-to-float v2, v2

    iget v3, p1, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 48
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    :goto_0
    return v2

    :cond_0
    move v2, v1

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LayoutParamsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRatio error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 52
    goto :goto_0
.end method


# virtual methods
.method public getLayoutSize(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 204
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 205
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v0, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    iget v2, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    iget-object v0, p0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    invoke-direct {v1, v2, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    move-object v0, v1

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLayoutSizes(Ljava/util/List;II)V
    .locals 19
    .param p2, "parentWidth"    # I
    .param p3, "decorationWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "imageSizes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;>;"
    const/4 v10, 0x0

    .line 67
    .local v10, "rowIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v6, 0x0

    .local v6, "imageIndex":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_0

    .line 74
    const-string v16, "LayoutParamsHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Row index:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    add-int/lit8 v10, v10, 0x1

    .line 76
    new-instance v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v12}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>()V

    .line 77
    .local v12, "size1":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    new-instance v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v13}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>()V

    .line 78
    .local v13, "size2":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    new-instance v14, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    invoke-direct {v14}, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;-><init>()V

    .line 85
    .local v14, "size3":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getImageSizeGuaranteed(Ljava/util/List;III)Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    move-result-object v4

    .line 87
    .local v4, "firstImageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move/from16 v0, p2

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 88
    iget v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v17

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 89
    iget v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 96
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 97
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v6, v0, :cond_4

    .line 99
    iget v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 102
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 106
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getImageSizeGuaranteed(Ljava/util/List;III)Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    move-result-object v11

    .line 107
    .local v11, "secondImageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v7

    .line 108
    .local v7, "ratio1":F
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v8

    .line 110
    .local v8, "ratio2":F
    sub-int v16, p2, p3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v17, v7, v8

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 111
    .local v5, "height":I
    int-to-float v0, v5

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f8ccccd    # 1.1f

    mul-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_6

    .line 113
    iget v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v6, v6, -0x1

    .line 116
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 113
    :cond_5
    iget v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move/from16 v16, v0

    goto :goto_3

    .line 120
    :cond_6
    iput v5, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 121
    int-to-float v0, v5

    move/from16 v16, v0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 122
    iput v5, v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 123
    int-to-float v0, v5

    move/from16 v16, v0

    mul-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 127
    add-int/lit8 v6, v6, 0x1

    .line 128
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ne v6, v0, :cond_8

    .line 130
    iget v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 136
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 142
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getImageSizeGuaranteed(Ljava/util/List;III)Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;

    move-result-object v15

    .line 143
    .local v15, "thirdImageSize":Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/miui/gallery/card/core/LayoutParamsHelper;->getRatio(Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;)F

    move-result v9

    .line 144
    .local v9, "ratio3":F
    mul-int/lit8 v16, p3, 0x2

    sub-int v16, p2, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v17, v7, v8

    add-float v17, v17, v9

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 145
    int-to-float v0, v5

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMinHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f99999a    # 1.2f

    mul-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_a

    .line 147
    iget v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 151
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v6, v6, -0x1

    .line 155
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 160
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v5, v0, :cond_b

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mItemMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v14, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 170
    :goto_4
    int-to-float v0, v5

    move/from16 v16, v0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 171
    int-to-float v0, v5

    move/from16 v16, v0

    mul-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 172
    int-to-float v0, v5

    move/from16 v16, v0

    mul-float v16, v16, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v14, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mWidth:I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/card/core/LayoutParamsHelper;->mLayoutSizes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v16, "LayoutParamsHelper"

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 165
    :cond_b
    iput v5, v12, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 166
    iput v5, v13, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    .line 167
    iput v5, v14, Lcom/miui/gallery/card/core/LayoutParamsHelper$Size;->mHeight:I

    goto :goto_4
.end method

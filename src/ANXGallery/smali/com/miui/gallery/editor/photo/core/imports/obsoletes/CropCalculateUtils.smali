.class public Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;
.super Ljava/lang/Object;
.source "CropCalculateUtils.java"


# direct methods
.method private static doRound(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 174
    mul-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method public static doRound(Landroid/graphics/RectF;)V
    .locals 1
    .param p0, "imageArea"    # Landroid/graphics/RectF;

    .prologue
    .line 161
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 162
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 163
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 164
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 165
    return-void
.end method

.method public static doRound([F)V
    .locals 2
    .param p0, "values"    # [F

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 169
    aget v1, p0, v0

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->doRound(F)F

    move-result v1

    aput v1, p0, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public static getIntersection([F[F[F[F)[F
    .locals 20
    .param p0, "line1Start"    # [F
    .param p1, "line1End"    # [F
    .param p2, "line2Start"    # [F
    .param p3, "line2End"    # [F

    .prologue
    .line 13
    const/16 v18, 0x0

    aget v9, p0, v18

    .local v9, "x1":F
    const/16 v18, 0x1

    aget v14, p0, v18

    .line 14
    .local v14, "y1":F
    const/16 v18, 0x0

    aget v10, p1, v18

    .local v10, "x2":F
    const/16 v18, 0x1

    aget v15, p1, v18

    .line 15
    .local v15, "y2":F
    const/16 v18, 0x0

    aget v11, p2, v18

    .local v11, "x3":F
    const/16 v18, 0x1

    aget v16, p2, v18

    .line 16
    .local v16, "y3":F
    const/16 v18, 0x0

    aget v12, p3, v18

    .local v12, "x4":F
    const/16 v18, 0x1

    aget v17, p3, v18

    .line 17
    .local v17, "y4":F
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 18
    .local v6, "k1":F
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 19
    .local v7, "k2":F
    const/4 v3, 0x0

    .line 20
    .local v3, "isLine1Vertical":Z
    const/4 v4, 0x0

    .line 24
    .local v4, "isLine2Vertical":Z
    sub-float v18, v9, v10

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_0

    .line 25
    const/4 v3, 0x1

    .line 26
    :cond_0
    sub-float v18, v11, v12

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_1

    .line 27
    const/4 v4, 0x1

    .line 29
    :cond_1
    if-nez v3, :cond_2

    .line 30
    sub-float v18, v14, v15

    sub-float v19, v9, v10

    div-float v6, v18, v19

    .line 31
    :cond_2
    if-nez v4, :cond_3

    .line 32
    sub-float v18, v16, v17

    sub-float v19, v11, v12

    div-float v7, v18, v19

    .line 34
    :cond_3
    cmpl-float v18, v6, v7

    if-nez v18, :cond_8

    .line 36
    const/4 v5, 0x0

    .line 37
    .local v5, "isSame":Z
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 38
    cmpl-float v18, v9, v11

    if-nez v18, :cond_4

    .line 39
    const/4 v5, 0x1

    .line 47
    :cond_4
    :goto_0
    if-eqz v5, :cond_7

    .line 48
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isAtSameSide([F[F[F)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 83
    .end local v5    # "isSame":Z
    .end local p1    # "line1End":[F
    :goto_1
    return-object p1

    .line 42
    .restart local v5    # "isSame":Z
    .restart local p1    # "line1End":[F
    :cond_5
    mul-float v18, v6, v9

    sub-float v18, v14, v18

    mul-float v19, v7, v11

    sub-float v19, v16, v19

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    .line 43
    const/4 v5, 0x1

    goto :goto_0

    .line 50
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isAtSameSide([F[F[F)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 p1, p0

    .line 51
    goto :goto_1

    .line 54
    :cond_7
    const/16 p1, 0x0

    goto :goto_1

    .line 57
    .end local v5    # "isSame":Z
    :cond_8
    if-eqz v3, :cond_a

    .line 58
    move v8, v9

    .line 59
    .local v8, "x":F
    const/16 v18, 0x0

    cmpl-float v18, v7, v18

    if-nez v18, :cond_9

    .line 60
    move/from16 v13, v16

    .line 83
    .local v13, "y":F
    :goto_2
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 p1, v0

    .end local p1    # "line1End":[F
    const/16 v18, 0x0

    aput v8, p1, v18

    const/16 v18, 0x1

    aput v13, p1, v18

    goto :goto_1

    .line 62
    .end local v13    # "y":F
    .restart local p1    # "line1End":[F
    :cond_9
    sub-float v18, v8, v12

    mul-float v18, v18, v7

    add-float v13, v18, v17

    .restart local v13    # "y":F
    goto :goto_2

    .line 64
    .end local v8    # "x":F
    .end local v13    # "y":F
    :cond_a
    if-eqz v4, :cond_c

    .line 65
    move v8, v11

    .line 66
    .restart local v8    # "x":F
    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-nez v18, :cond_b

    .line 67
    move v13, v14

    .restart local v13    # "y":F
    goto :goto_2

    .line 69
    .end local v13    # "y":F
    :cond_b
    sub-float v18, v8, v10

    mul-float v18, v18, v6

    add-float v13, v18, v15

    .restart local v13    # "y":F
    goto :goto_2

    .line 72
    .end local v8    # "x":F
    .end local v13    # "y":F
    :cond_c
    const/16 v18, 0x0

    cmpl-float v18, v6, v18

    if-nez v18, :cond_d

    .line 73
    move v13, v14

    .line 74
    .restart local v13    # "y":F
    sub-float v18, v13, v17

    div-float v18, v18, v7

    add-float v8, v18, v12

    .restart local v8    # "x":F
    goto :goto_2

    .line 75
    .end local v8    # "x":F
    .end local v13    # "y":F
    :cond_d
    const/16 v18, 0x0

    cmpl-float v18, v7, v18

    if-nez v18, :cond_e

    .line 76
    move/from16 v13, v16

    .line 77
    .restart local v13    # "y":F
    sub-float v18, v13, v15

    div-float v18, v18, v6

    add-float v8, v18, v10

    .restart local v8    # "x":F
    goto :goto_2

    .line 79
    .end local v8    # "x":F
    .end local v13    # "y":F
    :cond_e
    mul-float v18, v6, v10

    mul-float v19, v7, v12

    sub-float v18, v18, v19

    add-float v18, v18, v17

    sub-float v18, v18, v15

    sub-float v19, v6, v7

    div-float v8, v18, v19

    .line 80
    .restart local v8    # "x":F
    sub-float v18, v8, v10

    mul-float v18, v18, v6

    add-float v13, v18, v15

    .restart local v13    # "y":F
    goto :goto_2
.end method

.method public static getRectIntersection(Ljava/util/List;[F[F)[F
    .locals 5
    .param p1, "lineStart"    # [F
    .param p2, "lineEnd"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;[F[F)[F"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "imageRectPoints":Ljava/util/List;, "Ljava/util/List<[F>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 151
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-static {v2, v3, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getSegmentIntersection([F[F[F[F)[F

    move-result-object v1

    .line 152
    .local v1, "intersection":[F
    if-eqz v1, :cond_0

    .line 157
    .end local v1    # "intersection":[F
    :goto_1
    return-object v1

    .line 150
    .restart local v1    # "intersection":[F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "intersection":[F
    :cond_1
    const-string v2, "CropCalculateUtils"

    const-string v3, "can not find intersection"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p2

    .line 157
    goto :goto_1
.end method

.method private static getSegmentIntersection([F[F[F[F)[F
    .locals 2
    .param p0, "line1Start"    # [F
    .param p1, "line1End"    # [F
    .param p2, "line2Start"    # [F
    .param p3, "line2End"    # [F

    .prologue
    .line 138
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->getIntersection([F[F[F[F)[F

    move-result-object v0

    .line 139
    .local v0, "intersection":[F
    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isOnSegment([F[F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, p3, v0}, Lcom/miui/gallery/editor/photo/core/imports/obsoletes/CropCalculateUtils;->isAtSameSide([F[F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    .end local v0    # "intersection":[F
    :goto_0
    return-object v0

    .restart local v0    # "intersection":[F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtSameSide([F[F[F)Z
    .locals 11
    .param p0, "lineStart"    # [F
    .param p1, "lineEnd"    # [F
    .param p2, "point"    # [F

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 101
    aget v0, p0, v7

    .local v0, "x1":F
    aget v3, p0, v6

    .line 102
    .local v3, "y1":F
    aget v1, p1, v7

    .local v1, "x2":F
    aget v4, p1, v6

    .line 103
    .local v4, "y2":F
    aget v2, p2, v7

    .local v2, "x3":F
    aget v5, p2, v6

    .line 105
    .local v5, "y3":F
    cmpl-float v8, v1, v2

    if-nez v8, :cond_1

    cmpl-float v8, v4, v5

    if-nez v8, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v6

    .line 108
    :cond_1
    sub-float v8, v1, v0

    cmpl-float v8, v8, v10

    if-nez v8, :cond_2

    .line 109
    sub-float v8, v5, v4

    sub-float v9, v4, v3

    mul-float/2addr v8, v9

    cmpl-float v8, v8, v10

    if-gtz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 111
    :cond_2
    sub-float v8, v4, v3

    cmpl-float v8, v8, v10

    if-nez v8, :cond_3

    .line 112
    sub-float v8, v2, v1

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    cmpl-float v8, v8, v10

    if-gtz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 114
    :cond_3
    sub-float v8, v5, v4

    sub-float v9, v4, v3

    mul-float/2addr v8, v9

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    sub-float v8, v2, v1

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    cmpl-float v8, v8, v10

    if-gtz v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public static isOnSegment([F[F[F)Z
    .locals 9
    .param p0, "lineStart"    # [F
    .param p1, "lineEnd"    # [F
    .param p2, "point"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 121
    aget v0, p0, v7

    .local v0, "x1":F
    aget v3, p0, v6

    .line 122
    .local v3, "y1":F
    aget v1, p1, v7

    .local v1, "x2":F
    aget v4, p1, v6

    .line 124
    .local v4, "y2":F
    aget v2, p2, v7

    .local v2, "x3":F
    aget v5, p2, v6

    .line 126
    .local v5, "y3":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_0

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_0

    .line 130
    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public static isParallel([F[F[F[F)Z
    .locals 11
    .param p0, "line1Start"    # [F
    .param p1, "line1End"    # [F
    .param p2, "line2Start"    # [F
    .param p3, "line2End"    # [F

    .prologue
    .line 90
    const/4 v8, 0x0

    aget v0, p0, v8

    .local v0, "x1":F
    const/4 v8, 0x1

    aget v4, p0, v8

    .line 91
    .local v4, "y1":F
    const/4 v8, 0x0

    aget v1, p1, v8

    .local v1, "x2":F
    const/4 v8, 0x1

    aget v5, p1, v8

    .line 92
    .local v5, "y2":F
    const/4 v8, 0x0

    aget v2, p2, v8

    .local v2, "x3":F
    const/4 v8, 0x1

    aget v6, p2, v8

    .line 93
    .local v6, "y3":F
    const/4 v8, 0x0

    aget v3, p3, v8

    .local v3, "x4":F
    const/4 v8, 0x1

    aget v7, p3, v8

    .line 94
    .local v7, "y4":F
    sub-float v8, v2, v3

    sub-float v9, v4, v5

    mul-float/2addr v8, v9

    sub-float v9, v0, v1

    sub-float v10, v6, v7

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

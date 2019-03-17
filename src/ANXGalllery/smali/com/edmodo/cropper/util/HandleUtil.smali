.class public Lcom/edmodo/cropper/util/HandleUtil;
.super Ljava/lang/Object;
.source "HandleUtil.java"


# direct methods
.method public static getOffset(Lcom/edmodo/cropper/cropwindow/handle/Handle;FFFFFFLandroid/graphics/PointF;)V
    .locals 7
    .param p0, "handle"    # Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "touchOffsetOutput"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "touchOffsetX":F
    const/4 v3, 0x0

    .line 125
    .local v3, "touchOffsetY":F
    sget-object v4, Lcom/edmodo/cropper/util/HandleUtil$1;->$SwitchMap$com$edmodo$cropper$cropwindow$handle$Handle:[I

    invoke-virtual {p0}, Lcom/edmodo/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 167
    :goto_0
    iput v2, p7, Landroid/graphics/PointF;->x:F

    .line 168
    iput v3, p7, Landroid/graphics/PointF;->y:F

    .line 169
    return-void

    .line 128
    :pswitch_0
    sub-float v2, p3, p1

    .line 129
    sub-float v3, p4, p2

    .line 130
    goto :goto_0

    .line 132
    :pswitch_1
    sub-float v2, p5, p1

    .line 133
    sub-float v3, p4, p2

    .line 134
    goto :goto_0

    .line 136
    :pswitch_2
    sub-float v2, p3, p1

    .line 137
    sub-float v3, p6, p2

    .line 138
    goto :goto_0

    .line 140
    :pswitch_3
    sub-float v2, p5, p1

    .line 141
    sub-float v3, p6, p2

    .line 142
    goto :goto_0

    .line 144
    :pswitch_4
    sub-float v2, p3, p1

    .line 145
    const/4 v3, 0x0

    .line 146
    goto :goto_0

    .line 148
    :pswitch_5
    const/4 v2, 0x0

    .line 149
    sub-float v3, p4, p2

    .line 150
    goto :goto_0

    .line 152
    :pswitch_6
    sub-float v2, p5, p1

    .line 153
    const/4 v3, 0x0

    .line 154
    goto :goto_0

    .line 156
    :pswitch_7
    const/4 v2, 0x0

    .line 157
    sub-float v3, p6, p2

    .line 158
    goto :goto_0

    .line 160
    :pswitch_8
    add-float v4, p5, p3

    div-float v0, v4, v6

    .line 161
    .local v0, "centerX":F
    add-float v4, p4, p6

    div-float v1, v4, v6

    .line 162
    .local v1, "centerY":F
    sub-float v2, v0, p1

    .line 163
    sub-float v3, v1, p2

    goto :goto_0

    .line 125
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
    .end packed-switch
.end method

.method public static getPressedHandle(FFFFFFF)Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .locals 14
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "targetRadius"    # F

    .prologue
    .line 55
    const/4 v9, 0x0

    .line 56
    .local v9, "closestHandle":Lcom/edmodo/cropper/cropwindow/handle/Handle;
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 58
    .local v8, "closestDistance":F
    invoke-static/range {p0 .. p3}, Lcom/edmodo/cropper/util/MathUtil;->calculateDistance(FFFF)F

    move-result v12

    .line 59
    .local v12, "distanceToTopLeft":F
    cmpg-float v2, v12, v8

    if-gez v2, :cond_0

    .line 60
    move v8, v12

    .line 61
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 64
    :cond_0
    move/from16 v0, p4

    move/from16 v1, p3

    invoke-static {p0, p1, v0, v1}, Lcom/edmodo/cropper/util/MathUtil;->calculateDistance(FFFF)F

    move-result v13

    .line 65
    .local v13, "distanceToTopRight":F
    cmpg-float v2, v13, v8

    if-gez v2, :cond_1

    .line 66
    move v8, v13

    .line 67
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 70
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p5

    invoke-static {p0, p1, v0, v1}, Lcom/edmodo/cropper/util/MathUtil;->calculateDistance(FFFF)F

    move-result v10

    .line 71
    .local v10, "distanceToBottomLeft":F
    cmpg-float v2, v10, v8

    if-gez v2, :cond_2

    .line 72
    move v8, v10

    .line 73
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 76
    :cond_2
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p0, p1, v0, v1}, Lcom/edmodo/cropper/util/MathUtil;->calculateDistance(FFFF)F

    move-result v11

    .line 77
    .local v11, "distanceToBottomRight":F
    cmpg-float v2, v11, v8

    if-gez v2, :cond_3

    .line 78
    move v8, v11

    .line 79
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 82
    :cond_3
    cmpg-float v2, v8, p6

    if-gtz v2, :cond_4

    .line 103
    .end local v9    # "closestHandle":Lcom/edmodo/cropper/cropwindow/handle/Handle;
    :goto_0
    return-object v9

    .restart local v9    # "closestHandle":Lcom/edmodo/cropper/cropwindow/handle/Handle;
    :cond_4
    move v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p6

    .line 87
    invoke-static/range {v2 .. v7}, Lcom/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_5
    move v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 89
    invoke-static/range {v2 .. v7}, Lcom/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 90
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_6
    move v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    .line 91
    invoke-static/range {v2 .. v7}, Lcom/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 92
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_7
    move v2, p0

    move v3, p1

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    .line 93
    invoke-static/range {v2 .. v7}, Lcom/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 94
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 99
    :cond_8
    invoke-static/range {p0 .. p5}, Lcom/edmodo/cropper/util/HandleUtil;->isWithinBounds(FFFFFF)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 100
    sget-object v9, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 103
    :cond_9
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private static isInHorizontalTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleXStart"    # F
    .param p3, "handleXEnd"    # F
    .param p4, "handleY"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 193
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p3

    if-gez v0, :cond_0

    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInVerticalTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleX"    # F
    .param p3, "handleYStart"    # F
    .param p4, "handleYEnd"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 216
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWithinBounds(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 220
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_0

    cmpg-float v0, p0, p4

    if-gtz v0, :cond_0

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    cmpg-float v0, p1, p5

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

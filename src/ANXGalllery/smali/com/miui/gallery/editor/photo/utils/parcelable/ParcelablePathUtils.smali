.class public Lcom/miui/gallery/editor/photo/utils/parcelable/ParcelablePathUtils;
.super Ljava/lang/Object;
.source "ParcelablePathUtils.java"


# direct methods
.method public static getPathFromPointList(Ljava/util/List;)Landroid/graphics/Path;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .local p0, "pointFList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/high16 v10, 0x40000000    # 2.0f

    .line 11
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 12
    .local v2, "path":Landroid/graphics/Path;
    const/4 v4, 0x0

    .line 13
    .local v4, "prePoint":Landroid/graphics/PointF;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 14
    .local v3, "pointF":Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 15
    .local v5, "x":F
    iget v6, v3, Landroid/graphics/PointF;->y:F

    .line 16
    .local v6, "y":F
    if-nez v4, :cond_0

    .line 17
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 23
    :goto_1
    move-object v4, v3

    .line 24
    goto :goto_0

    .line 19
    :cond_0
    iget v8, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v5

    div-float v0, v8, v10

    .line 20
    .local v0, "currentX":F
    iget v8, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v6

    div-float v1, v8, v10

    .line 21
    .local v1, "currentY":F
    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v8, v9, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 25
    .end local v0    # "currentX":F
    .end local v1    # "currentY":F
    .end local v3    # "pointF":Landroid/graphics/PointF;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    return-object v2
.end method

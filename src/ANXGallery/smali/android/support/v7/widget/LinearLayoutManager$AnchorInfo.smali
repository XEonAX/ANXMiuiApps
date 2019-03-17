.class Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPosition:I

.field mValid:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2382
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 2383
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .prologue
    .line 2397
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2398
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 2399
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2400
    return-void

    .line 2398
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2399
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method public assignFromView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2466
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2468
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2473
    :goto_0
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2474
    return-void

    .line 2470
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;I)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v14

    .line 2420
    .local v14, "spaceChange":I
    if-ltz v14, :cond_1

    .line 2421
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;I)V

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2424
    :cond_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2425
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v10, v17, v14

    .line 2427
    .local v10, "prevLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 2428
    .local v2, "childEnd":I
    sub-int v11, v10, v2

    .line 2429
    .local v11, "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2431
    if-lez v11, :cond_0

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 2433
    .local v3, "childSize":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    sub-int v7, v17, v3

    .line 2434
    .local v7, "estimatedChildStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    .line 2435
    .local v9, "layoutStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    sub-int v13, v17, v9

    .line 2437
    .local v13, "previousStartMargin":I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    add-int v16, v9, v17

    .line 2438
    .local v16, "startReference":I
    sub-int v15, v7, v16

    .line 2439
    .local v15, "startMargin":I
    if-gez v15, :cond_0

    .line 2441
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 2445
    .end local v2    # "childEnd":I
    .end local v3    # "childSize":I
    .end local v7    # "estimatedChildStart":I
    .end local v9    # "layoutStart":I
    .end local v10    # "prevLayoutEnd":I
    .end local v11    # "previousEndMargin":I
    .end local v13    # "previousStartMargin":I
    .end local v15    # "startMargin":I
    .end local v16    # "startReference":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 2446
    .local v4, "childStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v17

    sub-int v15, v4, v17

    .line 2447
    .restart local v15    # "startMargin":I
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2448
    if-lez v15, :cond_0

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    .line 2450
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v17

    add-int v8, v4, v17

    .line 2451
    .local v8, "estimatedEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v12, v17, v14

    .line 2453
    .local v12, "previousLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    .line 2454
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    sub-int v11, v12, v17

    .line 2455
    .restart local v11    # "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v17

    const/16 v18, 0x0

    .line 2456
    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v6, v17, v18

    .line 2457
    .local v6, "endReference":I
    sub-int v5, v6, v8

    .line 2458
    .local v5, "endMargin":I
    if-gez v5, :cond_0

    .line 2459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method isViewValidAsAnchor(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 2413
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2414
    .local v0, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2415
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2386
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2387
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2388
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2389
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2390
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

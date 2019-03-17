.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    const/4 v1, 0x0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 546
    iput-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 547
    iput-object p4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 548
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 549
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 550
    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 551
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 552
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 553
    iput-boolean p5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 554
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->addRootSnake()V

    .line 555
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    .line 556
    return-void
.end method

.method private addRootSnake()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 563
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 564
    .local v0, "firstSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    new-instance v1, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v1}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 566
    .local v1, "root":Landroid/support/v7/util/DiffUtil$Snake;
    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 567
    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 568
    iput-boolean v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 569
    iput v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 570
    iput-boolean v3, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 571
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 573
    .end local v1    # "root":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_1
    return-void

    .line 563
    .end local v0    # "firstSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_2
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$Snake;

    move-object v0, v2

    goto :goto_0
.end method

.method private dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .locals 8
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    .line 802
    iget-boolean v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v4, :cond_1

    .line 803
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 838
    :cond_0
    return-void

    .line 806
    :cond_1
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 807
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .line 808
    .local v2, "status":I
    sparse-switch v2, :sswitch_data_0

    .line 833
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    .line 835
    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 810
    :sswitch_0
    invoke-interface {p2, p3, v7}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 811
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 812
    .local v3, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_1

    .line 817
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :sswitch_1
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .line 818
    .local v1, "pos":I
    invoke-static {p1, v1, v7}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    .line 822
    .restart local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v4, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v4, p3}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 823
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 825
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v5, p5, v0

    .line 826
    invoke-virtual {v4, v1, v5}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 825
    invoke-interface {p2, p3, v7, v4}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 806
    .end local v1    # "pos":I
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 830
    :sswitch_2
    new-instance v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v5, p5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, p3, v6}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 808
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .locals 8
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    .line 842
    iget-boolean v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v4, :cond_1

    .line 843
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 879
    :cond_0
    return-void

    .line 846
    :cond_1
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 847
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .line 848
    .local v2, "status":I
    sparse-switch v2, :sswitch_data_0

    .line 874
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    .line 876
    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 850
    :sswitch_0
    add-int v4, p3, v0

    invoke-interface {p2, v4, v7}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 851
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 852
    .local v3, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_1

    .line 857
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :sswitch_1
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .line 858
    .local v1, "pos":I
    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v3

    .line 863
    .restart local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    add-int v4, p3, v0

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v4, v5}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 864
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 866
    iget v4, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v6, p5, v0

    .line 867
    invoke-virtual {v5, v6, v1}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v5

    .line 866
    invoke-interface {p2, v4, v7, v5}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 846
    .end local v1    # "pos":I
    .end local v3    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 871
    :sswitch_2
    new-instance v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v5, p5, v0

    add-int v6, p3, v0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 848
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private findAddition(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    goto :goto_0
.end method

.method private findMatchingItem(IIIZ)Z
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    .prologue
    .line 652
    if-eqz p4, :cond_0

    .line 653
    add-int/lit8 v6, p2, -0x1

    .line 654
    .local v6, "myItemPos":I
    move v1, p1

    .line 655
    .local v1, "curX":I
    add-int/lit8 v2, p2, -0x1

    .line 661
    .local v2, "curY":I
    :goto_0
    move/from16 v5, p3

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_7

    .line 662
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/util/DiffUtil$Snake;

    .line 663
    .local v8, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v10, v8, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v11, v8, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v3, v10, v11

    .line 664
    .local v3, "endX":I
    iget v10, v8, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v11, v8, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v4, v10, v11

    .line 665
    .local v4, "endY":I
    if-eqz p4, :cond_3

    .line 667
    add-int/lit8 v7, v1, -0x1

    .local v7, "pos":I
    :goto_2
    if-lt v7, v3, :cond_6

    .line 668
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 670
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v7, v6}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    .line 671
    .local v9, "theSame":Z
    if-eqz v9, :cond_1

    const/16 v0, 0x8

    .line 673
    .local v0, "changeFlag":I
    :goto_3
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v11, v7, 0x5

    or-int/lit8 v11, v11, 0x10

    aput v11, v10, v6

    .line 674
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v11, v6, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    .line 675
    const/4 v10, 0x1

    .line 695
    .end local v0    # "changeFlag":I
    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v9    # "theSame":Z
    :goto_4
    return v10

    .line 657
    .end local v1    # "curX":I
    .end local v2    # "curY":I
    .end local v5    # "i":I
    .end local v6    # "myItemPos":I
    :cond_0
    add-int/lit8 v6, p1, -0x1

    .line 658
    .restart local v6    # "myItemPos":I
    add-int/lit8 v1, p1, -0x1

    .line 659
    .restart local v1    # "curX":I
    move v2, p2

    .restart local v2    # "curY":I
    goto :goto_0

    .line 671
    .restart local v3    # "endX":I
    .restart local v4    # "endY":I
    .restart local v5    # "i":I
    .restart local v7    # "pos":I
    .restart local v8    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .restart local v9    # "theSame":Z
    :cond_1
    const/4 v0, 0x4

    goto :goto_3

    .line 667
    .end local v9    # "theSame":Z
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 680
    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    .restart local v7    # "pos":I
    :goto_5
    if-lt v7, v4, :cond_6

    .line 681
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 683
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v10, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v9

    .line 684
    .restart local v9    # "theSame":Z
    if-eqz v9, :cond_4

    const/16 v0, 0x8

    .line 686
    .restart local v0    # "changeFlag":I
    :goto_6
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v12, v7, 0x5

    or-int/lit8 v12, v12, 0x10

    aput v12, v10, v11

    .line 687
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v11, v11, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    .line 688
    const/4 v10, 0x1

    goto :goto_4

    .line 684
    .end local v0    # "changeFlag":I
    :cond_4
    const/4 v0, 0x4

    goto :goto_6

    .line 680
    .end local v9    # "theSame":Z
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 692
    :cond_6
    iget v1, v8, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 693
    iget v2, v8, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 661
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 695
    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4
.end method

.method private findMatchingItems()V
    .locals 13

    .prologue
    .line 587
    iget v8, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 588
    .local v8, "posOld":I
    iget v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 590
    .local v7, "posNew":I
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 591
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/util/DiffUtil$Snake;

    .line 592
    .local v9, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v1, v11, v12

    .line 593
    .local v1, "endX":I
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int v2, v11, v12

    .line 594
    .local v2, "endY":I
    iget-boolean v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v11, :cond_1

    .line 595
    :goto_1
    if-le v8, v1, :cond_0

    .line 597
    invoke-direct {p0, v8, v7, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->findAddition(III)V

    .line 598
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 600
    :cond_0
    :goto_2
    if-le v7, v2, :cond_1

    .line 603
    invoke-direct {p0, v8, v7, v3}, Landroid/support/v7/util/DiffUtil$DiffResult;->findRemoval(III)V

    .line 604
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 607
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-ge v4, v11, :cond_3

    .line 609
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v6, v11, v4

    .line 610
    .local v6, "oldItemPos":I
    iget v11, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v5, v11, v4

    .line 611
    .local v5, "newItemPos":I
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 612
    invoke-virtual {v11, v6, v5}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    .line 613
    .local v10, "theSame":Z
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    .line 614
    .local v0, "changeFlag":I
    :goto_4
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v12, v5, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v6

    .line 615
    iget-object v11, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v12, v6, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v5

    .line 607
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 613
    .end local v0    # "changeFlag":I
    :cond_2
    const/4 v0, 0x2

    goto :goto_4

    .line 617
    .end local v5    # "newItemPos":I
    .end local v6    # "oldItemPos":I
    .end local v10    # "theSame":Z
    :cond_3
    iget v8, v9, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 618
    iget v7, v9, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 590
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 620
    .end local v1    # "endX":I
    .end local v2    # "endY":I
    .end local v4    # "j":I
    .end local v9    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_4
    return-void
.end method

.method private findRemoval(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 633
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    goto :goto_0
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 787
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 788
    .local v2, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_1

    .line 789
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 790
    move v1, v0

    .local v1, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 792
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v5, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_2
    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 792
    :cond_0
    const/4 v4, -0x1

    goto :goto_2

    .line 786
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 797
    .end local v2    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 16
    .param p1, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;

    .prologue
    .line 745
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v1, :cond_3

    move-object/from16 v3, p1

    .line 746
    check-cast v3, Landroid/support/v7/util/BatchingListUpdateCallback;

    .line 756
    .local v3, "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v2, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 758
    .local v10, "posOld":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 759
    .local v9, "posNew":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "snakeIndex":I
    :goto_1
    if-ltz v12, :cond_5

    .line 760
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/util/DiffUtil$Snake;

    .line 761
    .local v11, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v13, v11, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 762
    .local v13, "snakeSize":I
    iget v1, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v4, v1, v13

    .line 763
    .local v4, "endX":I
    iget v1, v11, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v7, v1, v13

    .line 764
    .local v7, "endY":I
    if-ge v4, v10, :cond_0

    .line 765
    sub-int v5, v10, v4

    move-object/from16 v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    .line 768
    :cond_0
    if-ge v7, v9, :cond_1

    .line 769
    sub-int v5, v9, v7

    move-object/from16 v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    .line 772
    :cond_1
    add-int/lit8 v8, v13, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_4

    .line 773
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v5, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v5, v8

    aget v1, v1, v5

    and-int/lit8 v1, v1, 0x1f

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 774
    iget v1, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v1, v8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    iget v14, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v14, v8

    iget v15, v11, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v15, v8

    .line 775
    invoke-virtual {v6, v14, v15}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    .line 774
    invoke-virtual {v3, v1, v5, v6}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 772
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 748
    .end local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    .end local v3    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v9    # "posNew":I
    .end local v10    # "posOld":I
    .end local v11    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v12    # "snakeIndex":I
    .end local v13    # "snakeSize":I
    :cond_3
    new-instance v3, Landroid/support/v7/util/BatchingListUpdateCallback;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 752
    .restart local v3    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    move-object/from16 p1, v3

    goto :goto_0

    .line 778
    .restart local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    .restart local v4    # "endX":I
    .restart local v7    # "endY":I
    .restart local v8    # "i":I
    .restart local v9    # "posNew":I
    .restart local v10    # "posOld":I
    .restart local v11    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .restart local v12    # "snakeIndex":I
    .restart local v13    # "snakeSize":I
    :cond_4
    iget v10, v11, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 779
    iget v9, v11, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 759
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 781
    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v11    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v13    # "snakeSize":I
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 782
    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 731
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 732
    return-void
.end method

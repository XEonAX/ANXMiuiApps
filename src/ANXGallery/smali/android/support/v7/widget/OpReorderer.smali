.class Landroid/support/v7/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final mCallback:Landroid/support/v7/widget/OpReorderer$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/OpReorderer$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v7/widget/OpReorderer$Callback;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    .line 34
    return-void
.end method

.method private getLastMoveOutOfOrder(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 220
    .local v0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 222
    .local v2, "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 223
    if-eqz v0, :cond_1

    .line 230
    .end local v1    # "i":I
    .end local v2    # "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :goto_1
    return v1

    .line 227
    .restart local v1    # "i":I
    .restart local v2    # "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_0
    const/4 v0, 0x1

    .line 220
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 230
    .end local v2    # "op1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private swapMoveAdd(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 3
    .param p2, "move"    # I
    .param p3, "moveOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p4, "add"    # I
    .param p5, "addOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v0, 0x0

    .line 164
    .local v0, "offset":I
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_0

    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 167
    :cond_0
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_1

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_1
    iget v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_2

    .line 171
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 173
    :cond_2
    iget v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_3

    .line 174
    iget v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 176
    :cond_3
    iget v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 177
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private swapMoveOp(Ljava/util/List;II)V
    .locals 6
    .param p2, "badMove"    # I
    .param p3, "next"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 47
    .local v3, "moveOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 48
    .local v5, "nextOp":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v0, v5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 53
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method reorderOps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    .local v0, "badMove":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method swapMoveRemove(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 8
    .param p2, "movePos"    # I
    .param p3, "moveOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p4, "removePos"    # I
    .param p5, "removeOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v7, 0x2

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "extraRm":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    const/4 v3, 0x0

    .line 68
    .local v3, "revertedMove":Z
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v4, v5, :cond_4

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "moveIsBackwards":Z
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, v5, :cond_0

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v6, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    .line 72
    const/4 v3, 0x1

    .line 83
    :cond_0
    :goto_0
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, v5, :cond_5

    .line 84
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 99
    :cond_1
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, v5, :cond_6

    .line 100
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 109
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    .line 110
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v4, p3}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 158
    :cond_3
    :goto_2
    return-void

    .line 75
    .end local v1    # "moveIsBackwards":Z
    :cond_4
    const/4 v1, 0x1

    .line 76
    .restart local v1    # "moveIsBackwards":Z
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    .line 78
    const/4 v3, 0x1

    goto :goto_0

    .line 85
    :cond_5
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 87
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 88
    iput v7, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 89
    const/4 v4, 0x1

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 90
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez v4, :cond_3

    .line 91
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v4, p5}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2

    .line 101
    :cond_6
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_2

    .line 102
    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int v2, v4, v5

    .line 104
    .local v2, "remaining":I
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v7, v5, v2, v6}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 105
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v4, v5

    iput v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 117
    .end local v2    # "remaining":I
    :cond_7
    if-eqz v1, :cond_c

    .line 118
    if-eqz v0, :cond_9

    .line 119
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_8

    .line 120
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_8
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_9

    .line 123
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 126
    :cond_9
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_a

    .line 127
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 129
    :cond_a
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v4, v5, :cond_b

    .line 130
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 149
    :cond_b
    :goto_3
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v5, :cond_10

    .line 151
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_4
    if-eqz v0, :cond_3

    .line 156
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 133
    :cond_c
    if-eqz v0, :cond_e

    .line 134
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_d

    .line 135
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_d
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_e

    .line 138
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 141
    :cond_e
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_f

    .line 142
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 144
    :cond_f
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v4, v5, :cond_b

    .line 145
    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v4, v5

    iput v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3

    .line 153
    :cond_10
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4
.end method

.method swapMoveUpdate(Ljava/util/List;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;ILandroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 8
    .param p2, "move"    # I
    .param p3, "moveOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .param p4, "update"    # I
    .param p5, "updateOp"    # Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            "I",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v7, 0x4

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "extraUp1":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    const/4 v1, 0x0

    .line 186
    .local v1, "extraUp2":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v4, :cond_4

    .line 187
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 194
    :cond_0
    :goto_0
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v4, :cond_5

    .line 195
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 203
    :cond_1
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez v3, :cond_6

    .line 205
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_2
    if-eqz v0, :cond_2

    .line 211
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    :cond_2
    if-eqz v1, :cond_3

    .line 214
    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    :cond_3
    return-void

    .line 188
    :cond_4
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 190
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 191
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v5, 0x1

    iget-object v6, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v7, v4, v5, v6}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_5
    iget v3, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 197
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int v2, v3, v4

    .line 199
    .local v2, "remaining":I
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    iget v4, p3, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v3, v7, v4, v2, v5}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v1

    .line 201
    iget v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v3, v2

    iput v3, p5, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 207
    .end local v2    # "remaining":I
    :cond_6
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer;->mCallback:Landroid/support/v7/widget/OpReorderer$Callback;

    invoke-interface {v3, p5}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

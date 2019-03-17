.class Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "RecyclerViewOverScrollDecorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemTouchHelperCallbackWrapper"
.end annotation


# instance fields
.field final mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$1;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "selected"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 194
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 1
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    return v0
.end method

.method public getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v0

    return v0
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v0

    return v0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v0

    return v0
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .locals 9
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .prologue
    .line 213
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v0

    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 199
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 204
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    .line 189
    return-void
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 184
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 139
    return-void
.end method

.class public Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "RecyclerViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/overscroll/IOverScrollInterface$IOverScrollDecoratorAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ItemTouchHelperCallbackWrapper;,
        Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;,
        Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;,
        Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;
    }
.end annotation


# instance fields
.field protected final mImpl:Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;

.field protected mIsItemTouchInEffect:Z

.field protected final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    .line 31
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 33
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 34
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_3

    .line 36
    :cond_0
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 38
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    .line 41
    .local v1, "orientation":I
    :goto_0
    if-nez v1, :cond_2

    .line 42
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;-><init>(Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;

    .line 50
    :goto_1
    return-void

    .line 38
    .end local v1    # "orientation":I
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 39
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v1

    goto :goto_0

    .line 44
    .restart local v1    # "orientation":I
    :cond_2
    new-instance v2, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;

    invoke-direct {v2, p0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$ImplVerticalLayout;-><init>(Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;)V

    iput-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;

    goto :goto_1

    .line 47
    .end local v1    # "orientation":I
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit \'impl\' parameter to the other c\'tors, or otherwise create a custom adapter subclass of your own."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "itemTouchHelperCallback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->setUpTouchHelperCallback(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public isInAbsoluteEnd()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;->isInAbsoluteEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mIsItemTouchInEffect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mImpl:Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$Impl;->isInAbsoluteStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setUpTouchHelperCallback(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 2
    .param p1, "itemTouchHelperCallback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .prologue
    .line 68
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v1, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/overscroll/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 75
    return-void
.end method

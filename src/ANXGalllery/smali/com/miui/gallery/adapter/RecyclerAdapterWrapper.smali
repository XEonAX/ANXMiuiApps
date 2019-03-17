.class public abstract Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field protected final mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    .local p1, "wrapped":Landroid/support/v7/widget/RecyclerView$Adapter;, "TT;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The wrapped adapter can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 16
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v1, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper$1;-><init>(Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public final getWrappedAdapterItemCount()I
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 91
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 92
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 47
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 96
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 97
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method protected abstract onHandleWrappedAdapterItemRangeChanged(II)V
.end method

.method protected abstract onHandleWrappedAdapterItemRangeInserted(II)V
.end method

.method protected abstract onHandleWrappedAdapterItemRangeMoved(III)V
.end method

.method protected abstract onHandleWrappedAdapterItemRangeRemoved(II)V
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 82
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 87
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 72
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1
    .param p1, "hasStableIds"    # Z

    .prologue
    .line 61
    .local p0, "this":Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper<TT;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->mWrapped:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 62
    return-void
.end method

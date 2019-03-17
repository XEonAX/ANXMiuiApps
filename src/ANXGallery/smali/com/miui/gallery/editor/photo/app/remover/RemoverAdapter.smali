.class public Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;
.super Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;
.source "RemoverAdapter.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;",
        ">;",
        "Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V
    .locals 2
    .param p2, "selector"    # Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;",
            ">;",
            "Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;>;"
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDataList:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;-><init>(ILcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Selector;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    .line 19
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->getSelection()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 52
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->onBindViewHolder(Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;I)V
    .locals 1
    .param p1, "removerItemHolder"    # Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;->bind(Lcom/miui/gallery/editor/photo/core/common/model/RemoverData;)V

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 31
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 23
    new-instance v0, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04011a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/editor/photo/app/remover/RemoverItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 57
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 58
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/app/remover/RemoverAdapter;->mDelegator:Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/editor/photo/widgets/recyclerview/Selectable$Delegator;->setSelection(I)V

    .line 41
    return-void
.end method

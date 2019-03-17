.class public abstract Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;,
        Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mItemSelectChangeListener:Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;

.field protected mLastSelectedItemPosition:I

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mSelectedItemPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mLastSelectedItemPosition:I

    .line 50
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private setSelected(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;Z)V
    .locals 2
    .param p1, "holder"    # Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .param p2, "selected"    # Z

    .prologue
    .line 69
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget-object v0, p1, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 70
    iget-object v1, p1, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->mSelected:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method protected abstract getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemData(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    check-cast p1, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->onBindViewHolder(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    check-cast p1, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->onBindViewHolder(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .param p2, "position"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget-object v1, p1, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget v1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 64
    .local v0, "selected":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->setSelected(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;Z)V

    .line 65
    invoke-virtual {p1, p2}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->bindView(I)V

    .line 66
    return-void

    .line 63
    .end local v0    # "selected":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;ILjava/util/List;)V
    .locals 1
    .param p1, "holder"    # Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->setSelected(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;Z)V

    .line 77
    invoke-virtual {p1, p2, p3}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->bindView(ILjava/lang/Object;)V

    .line 81
    :goto_1
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    const v2, 0x7f1201e0

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;

    .line 86
    .local v0, "holder":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;->getAdapterPosition()I

    move-result v1

    .line 87
    .local v1, "position":I
    iget v2, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    if-eq v2, v1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mItemSelectChangeListener:Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mItemSelectChangeListener:Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;->onItemSelect(Landroid/support/v7/widget/RecyclerView;Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0, v1}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->setSelectedItemPosition(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mItemSelectChangeListener:Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;

    if-eqz v2, :cond_0

    .line 93
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mItemSelectChangeListener:Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;->onItemSelect(Landroid/support/v7/widget/RecyclerView;Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;IZ)Z

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 55
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget-object v1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->getHolder(Landroid/view/View;)Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$BaseHolder;

    move-result-object v1

    return-object v1
.end method

.method public setItemSelectChangeListener(Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;)V
    .locals 0
    .param p1, "itemSelectChangeListener"    # Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;

    .prologue
    .line 38
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mItemSelectChangeListener:Lcom/miui/gallery/movie/ui/adapter/BaseAdapter$ItemSelectChangeListener;

    .line 39
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mList:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    const/4 v2, 0x1

    .line 22
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    if-ne p1, v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mLastSelectedItemPosition:I

    .line 26
    iput p1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    .line 27
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mLastSelectedItemPosition:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 28
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setSelectedItemPositionWithoutNotify(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    .local p0, "this":Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;, "Lcom/miui/gallery/movie/ui/adapter/BaseAdapter<TT;>;"
    iget v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    iput v0, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mLastSelectedItemPosition:I

    .line 33
    iput p1, p0, Lcom/miui/gallery/movie/ui/adapter/BaseAdapter;->mSelectedItemPosition:I

    .line 34
    return-void
.end method

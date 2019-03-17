.class public Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;
.source "FilterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter",
        "<",
        "Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final ITEM_TYPE_ITEM_NORMAL:I

.field private filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstMarginLeft:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/video/editor/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/video/editor/Filter;>;"
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->ITEM_TYPE_ITEM_NORMAL:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mFirstMarginLeft:I

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getFilter(I)Lcom/miui/gallery/video/editor/Filter;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/Filter;

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public onBindView(Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    if-nez p2, :cond_1

    iget v1, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mFirstMarginLeft:I

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->setMarginLeft(I)V

    .line 52
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->filterList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/Filter;

    .line 53
    .local v0, "filter":Lcom/miui/gallery/video/editor/Filter;
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/Filter;->getNameResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->setName(I)V

    .line 54
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/Filter;->getIconResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;->setIcon(I)V

    goto :goto_0

    .line 51
    .end local v0    # "filter":Lcom/miui/gallery/video/editor/Filter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onBindView(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->onBindView(Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;I)V

    return-void
.end method

.method public onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04016f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;

    invoke-direct {v1, v0}, Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecycleView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/FilterRecyclerViewAdapter;->onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/FilterViewHolder;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;
.super Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;
.source "HeaderFooterRecyclerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/miui/gallery/adapter/RecyclerAdapterWrapper",
        "<TADAPTER;TVH;>;"
    }
.end annotation


# instance fields
.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    .local p1, "wrapped":Landroid/support/v7/widget/RecyclerView$Adapter;, "TADAPTER;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/util/List;Ljava/util/List;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    .local p1, "wrapped":Landroid/support/v7/widget/RecyclerView$Adapter;, "TADAPTER;"
    .local p2, "headerViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "footerViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderViews:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterViews:Ljava/util/ArrayList;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    if-eqz p3, :cond_1

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_1
    return-void
.end method

.method private mapPosition2ViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 257
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/high16 v0, -0x80000000

    add-int/2addr v0, p1

    return v0
.end method

.method private mapViewType2Position(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 253
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/high16 v0, -0x80000000

    sub-int v0, p1, v0

    return v0
.end method

.method private static removeFromParentFor(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 54
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 55
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 4
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 94
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getFootersCount()I

    move-result v1

    .line 98
    .local v1, "preFootersCount":I
    iget-object v2, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapterItemCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int v0, v2, v1

    .line 100
    .local v0, "notifyPosition":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 63
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v0

    .line 67
    .local v0, "preHeadersCount":I
    iget-object v1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 160
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapterItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const-wide/16 v0, -0x1

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-wide v0

    .line 169
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapterPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mapPosition2ViewType(I)I

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mapPosition2ViewType(I)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapterPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getWrappedAdapterPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/4 v0, -0x1

    .line 227
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method public isFooterPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 241
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getFootersCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFooterViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 249
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mapViewType2Position(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterPosition(I)Z

    move-result v0

    return v0
.end method

.method public isHeaderPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 237
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 245
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mapViewType2Position(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderPosition(I)Z

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 148
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-super {p0, p1}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 149
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 150
    iget-object v1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 152
    .local v0, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;

    .line 153
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    invoke-direct {v1, v2, p0, v3}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper$HeaderFooterSpanSizeLookup;-><init>(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;I)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 156
    .end local v0    # "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    :cond_0
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
    .line 220
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapterPosition(I)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method protected abstract onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
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
    .line 192
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/4 v0, 0x0

    .line 193
    .local v0, "itemView":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isHeaderViewType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderViews:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mapViewType2Position(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "itemView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 198
    .restart local v0    # "itemView":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 199
    invoke-static {v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->removeFromParentFor(Landroid/view/View;)V

    .line 200
    iget-object v3, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 203
    .local v2, "targetParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 204
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 208
    .local v1, "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .end local v1    # "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v2    # "targetParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->onCreateHeaderFooterViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 213
    :goto_2
    return-object v3

    .line 195
    :cond_2
    invoke-virtual {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->isFooterViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterViews:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mapViewType2Position(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapterItemCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "itemView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "itemView":Landroid/view/View;
    goto :goto_0

    .line 206
    .restart local v2    # "targetParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .restart local v1    # "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    goto :goto_1

    .line 213
    .end local v1    # "staggerLayoutParams":Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .end local v2    # "targetParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/adapter/RecyclerAdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    goto :goto_2
.end method

.method protected onHandleWrappedAdapterItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 262
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemRangeChanged(II)V

    .line 267
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 271
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemRangeInserted(II)V

    .line 276
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 290
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemMoved(II)V

    .line 295
    return-void
.end method

.method protected onHandleWrappedAdapterItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 280
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemRangeRemoved(II)V

    .line 285
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 4
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "preFooterIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 113
    invoke-static {p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->removeFromParentFor(Landroid/view/View;)V

    .line 114
    iget-object v2, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getHeadersCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->getWrappedAdapterItemCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int v0, v2, v1

    .line 116
    .local v0, "notifyPosition":I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemRemoved(I)V

    .line 121
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;, "Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper<TADAPTER;TVH;>;"
    const/4 v1, 0x0

    .line 76
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "preHeaderIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 81
    invoke-static {p1}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->removeFromParentFor(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, v0}, Lcom/miui/gallery/adapter/HeaderFooterRecyclerAdapterWrapper;->notifyItemRemoved(I)V

    .line 88
    const/4 v1, 0x1

    goto :goto_0
.end method

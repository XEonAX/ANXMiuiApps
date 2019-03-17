.class public Lcom/miui/gallery/card/ui/cardlist/CardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;,
        Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mEmptyView:Landroid/view/View;

.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mHideFooterWhenEmpty:Z

.field private mHideHeaderWhenEmpty:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 57
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mHideFooterWhenEmpty:Z

    .line 49
    iput-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mHideHeaderWhenEmpty:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mContext:Landroid/app/Activity;

    .line 59
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 60
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 61
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 62
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f0201a9

    .line 64
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/card/ui/cardlist/CardAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private getDataItem(I)Lcom/miui/gallery/card/Card;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isHeaderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/card/Card;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getHeaderLayoutCount()I
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isHeaderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFooterVisible()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getDataItemSize()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mHideFooterWhenEmpty:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderVisible()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getDataItemSize()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mHideHeaderWhenEmpty:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDataItemSize()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getDataItemSize()I

    move-result v0

    .line 119
    .local v0, "dataItemSize":I
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isHeaderVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 120
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isHeaderVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    add-int/2addr v3, v0

    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isFooterVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isHeaderVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 113
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getDataItemSize()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isHeaderVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    if-ne p1, v0, :cond_2

    .line 108
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 107
    goto :goto_1

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->isFooterVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p2}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getItemViewType(I)I

    move-result v0

    .line 144
    .local v0, "viewType":I
    if-nez v0, :cond_0

    .line 145
    check-cast p1, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p2}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getDataItem(I)Lcom/miui/gallery/card/Card;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;->bindData(Lcom/miui/gallery/card/Card;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 134
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;

    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mHeaderView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;-><init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;Landroid/view/View;)V

    .line 138
    :goto_0
    return-object v1

    .line 135
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;

    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mFooterView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;-><init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    new-instance v1, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;

    iget-object v2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mEmptyView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$ViewHolderImpl;-><init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "cardView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter$CardHolder;-><init>(Lcom/miui/gallery/card/ui/cardlist/CardAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method final refreshNotifyItemChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->notifyItemChanged(I)V

    .line 151
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mEmptyView:Landroid/view/View;

    .line 82
    return-void
.end method

.method public setFooter(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hideWhenEmpty"    # Z

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mFooterView:Landroid/view/View;

    .line 91
    iput-boolean p2, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mHideFooterWhenEmpty:Z

    .line 92
    return-void
.end method

.method updateDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/card/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/Card;>;"
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/card/ui/cardlist/CardAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.class Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/widget/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewGridAdapter"
.end annotation


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mLastVisibleItemHeight:I

.field private mNumColumns:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;>;"
    const/4 v0, 0x1

    .line 289
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 270
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 273
    iput v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 290
    iput-object p3, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 291
    instance-of v1, p3, Landroid/widget/Filterable;

    iput-boolean v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    if-nez p1, :cond_1

    .line 297
    sget-object v1, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 301
    :goto_0
    if-nez p2, :cond_2

    .line 302
    sget-object v1, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 307
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 308
    invoke-direct {p0, v1}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 309
    return-void

    .line 299
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 304
    :cond_2
    iput-object p2, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 308
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;

    .line 338
    .local v0, "info":Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;
    iget-boolean v2, v0, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 339
    const/4 v1, 0x0

    .line 343
    .end local v0    # "info":Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getAlignedAdapterCount()I
    .locals 4

    .prologue
    .line 383
    iget-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 384
    .local v0, "adapterCount":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPlaceholderView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "height"    # I

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance p1, Landroid/view/View;

    .end local p1    # "convertView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 393
    .restart local p1    # "convertView":Landroid/view/View;
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    invoke-virtual {p1, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 395
    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 409
    iget-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 410
    iget-boolean v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getFootersCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v0, v1, v2

    .line 401
    .local v0, "count":I
    iget-object v1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getAlignedAdapterCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_0
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 450
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 451
    iget v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-nez v5, :cond_0

    .line 452
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;

    iget-object v4, v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 475
    :cond_0
    :goto_0
    return-object v4

    .line 458
    :cond_1
    sub-int v0, p1, v3

    .line 459
    .local v0, "adjPosition":I
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getAlignedAdapterCount()I

    move-result v1

    .line 460
    .local v1, "alignedAdapterCount":I
    iget-object v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    .line 461
    iget-object v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 462
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 463
    :cond_2
    if-lt v0, v1, :cond_0

    .line 469
    :cond_3
    sub-int p1, v0, v1

    .line 470
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getFootersCount()I

    move-result v5

    iget v6, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v5, v6

    .line 471
    .local v2, "numFooterAndPlaceholders":I
    if-ge p1, v2, :cond_4

    .line 472
    iget v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-nez v5, :cond_0

    .line 473
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;

    iget-object v4, v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0

    .line 477
    :cond_4
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 483
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 484
    sub-int v1, p1, v2

    .line 485
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 486
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 487
    iget-object v3, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 490
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 557
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 558
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    iget v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 560
    iget-object v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    .line 579
    :cond_0
    :goto_0
    return v4

    .line 562
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    if-lt p1, v3, :cond_3

    .line 563
    sub-int v1, p1, v3

    .line 564
    .local v1, "adjPosition":I
    iget-object v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 565
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 566
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    goto :goto_0

    .line 567
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getAlignedAdapterCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 568
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    goto :goto_0

    .line 572
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getAlignedAdapterCount()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr p1, v5

    .line 573
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getFootersCount()I

    move-result v5

    iget v6, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v5, v6

    .line 574
    .local v2, "numFootersAndPlaceholders":I
    if-ge p1, v2, :cond_4

    iget v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_4

    .line 576
    iget-object v5, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v4

    goto :goto_0

    .line 579
    :cond_4
    const/4 v4, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    .line 504
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v9

    iget v10, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v6, v9, v10

    .line 505
    .local v6, "numHeadersAndPlaceholders":I
    if-ge p1, v6, :cond_1

    .line 506
    iget-object v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v10, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v10, p1, v10

    .line 507
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;

    iget-object v3, v9, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 508
    .local v3, "headerViewContainer":Landroid/view/View;
    iget v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v9, p1, v9

    if-nez v9, :cond_0

    .line 510
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 548
    .end local v3    # "headerViewContainer":Landroid/view/View;
    :goto_0
    return-object v3

    .line 513
    .restart local v3    # "headerViewContainer":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {p0, p2, p3, v9}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getPlaceholderView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 518
    .end local v3    # "headerViewContainer":Landroid/view/View;
    :cond_1
    sub-int v0, p1, v6

    .line 519
    .local v0, "adjPosition":I
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getAlignedAdapterCount()I

    move-result v1

    .line 520
    .local v1, "alignedAdapterCount":I
    iget-object v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_4

    .line 521
    iget-object v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 522
    iget-object v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v0, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 523
    .local v7, "view":Landroid/view/View;
    iget v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v9, v0, v9

    if-nez v9, :cond_2

    .line 524
    const/4 v9, -0x1

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 526
    .local v8, "widthMeasureSpec":I
    const/4 v9, -0x2

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 528
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v7, v8, v4}, Landroid/view/View;->measure(II)V

    .line 529
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mLastVisibleItemHeight:I

    .end local v4    # "heightMeasureSpec":I
    .end local v8    # "widthMeasureSpec":I
    :cond_2
    move-object v3, v7

    .line 531
    goto :goto_0

    .line 532
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    if-ge v0, v1, :cond_4

    .line 533
    iget v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mLastVisibleItemHeight:I

    invoke-direct {p0, p2, p3, v9}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getPlaceholderView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 538
    :cond_4
    sub-int p1, v0, v1

    .line 539
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getFootersCount()I

    move-result v9

    iget v10, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v5, v9, v10

    .line 540
    .local v5, "numFootersAndPlaceholders":I
    if-ge p1, v5, :cond_6

    .line 541
    iget-object v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v10, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v10, p1, v10

    .line 542
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;

    iget-object v2, v9, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 543
    .local v2, "footerViewContainer":Landroid/view/View;
    iget v9, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v9, p1, v9

    if-nez v9, :cond_5

    .line 545
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    move-object v3, v2

    .line 546
    goto :goto_0

    .line 548
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {p0, p2, p3, v9}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getPlaceholderView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 552
    .end local v2    # "footerViewContainer":Landroid/view/View;
    :cond_6
    new-instance v9, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v9, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v9
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v7, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v7

    .line 420
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 421
    iget v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    .line 422
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;

    iget-boolean v4, v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 441
    :goto_0
    return v4

    :cond_0
    move v4, v6

    .line 422
    goto :goto_0

    .line 426
    :cond_1
    sub-int v0, p1, v3

    .line 427
    .local v0, "adjPosition":I
    invoke-direct {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getAlignedAdapterCount()I

    move-result v1

    .line 428
    .local v1, "alignedAdapterCount":I
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    .line 429
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 430
    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    goto :goto_0

    .line 431
    :cond_2
    if-ge v0, v1, :cond_3

    move v4, v6

    .line 432
    goto :goto_0

    .line 437
    :cond_3
    sub-int p1, v0, v1

    .line 438
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->getFootersCount()I

    move-result v4

    iget v7, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v4, v7

    .line 439
    .local v2, "numFooterAndPlaceholders":I
    if-ge p1, v2, :cond_5

    .line 440
    iget v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    .line 441
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;

    iget-boolean v4, v4, Lcom/miui/gallery/widget/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-eqz v4, :cond_4

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    .line 443
    :cond_5
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 618
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 598
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    .prologue
    .line 326
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 330
    iput p1, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 331
    invoke-virtual {p0}, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 333
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/miui/gallery/widget/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 606
    :cond_0
    return-void
.end method

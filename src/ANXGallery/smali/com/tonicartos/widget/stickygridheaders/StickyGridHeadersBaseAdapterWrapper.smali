.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

.field private mFooterViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private mHeaderViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeaderViewSeen:Landroid/view/View;

.field private mLastViewSeen:Landroid/view/View;

.field private mPositionMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionStartItemIndexMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p3, "delegate"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p4, "headerViewInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;>;"
    .local p5, "footerViewInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$1;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 116
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    .line 117
    iput-object p3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 118
    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    .line 122
    if-eqz p4, :cond_0

    .line 123
    iput-object p4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    .line 125
    :cond_0
    if-eqz p5, :cond_1

    .line 126
    iput-object p5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    .line 129
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p3, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    return-void
.end method

.method static synthetic access$100(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .locals 1
    .param p0, "x0"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method private genDataMap()V
    .locals 13

    .prologue
    .line 408
    const-string v10, "StickyGridHeadersBaseAdapterWrapper"

    const-string v11, "generate data map"

    invoke-static {v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 411
    invoke-virtual {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRequestedNumColumns()I

    move-result v0

    .line 413
    .local v0, "columns":I
    :goto_0
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v10

    iget-object v11, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 414
    invoke-interface {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v11

    mul-int/2addr v11, v0

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 415
    invoke-interface {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v12, v0, -0x1

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    .line 416
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    mul-int/2addr v11, v0

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    .line 417
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    mul-int/2addr v11, v0

    add-int v4, v10, v11

    .line 418
    .local v4, "idealCapacity":I
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->shouldDrawDivider()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 419
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v10

    mul-int/2addr v10, v0

    add-int/2addr v4, v10

    .line 421
    :cond_0
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 422
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 423
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 424
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 425
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 426
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 428
    const/4 v3, 0x0

    .line 429
    .local v3, "i":I
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 430
    const/4 v6, 0x0

    .line 431
    .local v6, "j":I
    :goto_1
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 432
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    const/4 v2, 0x1

    .local v2, "header":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 435
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 411
    .end local v0    # "columns":I
    .end local v2    # "header":I
    .end local v3    # "i":I
    .end local v4    # "idealCapacity":I
    .end local v6    # "j":I
    :cond_1
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getNumColumns()I

    move-result v0

    goto/16 :goto_0

    .line 438
    .restart local v0    # "columns":I
    .restart local v2    # "header":I
    .restart local v3    # "i":I
    .restart local v4    # "idealCapacity":I
    .restart local v6    # "j":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 443
    .end local v2    # "header":I
    .end local v6    # "j":I
    :cond_3
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v10

    if-nez v10, :cond_6

    .line 444
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v10

    if-ge v6, v10, :cond_4

    .line 445
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 448
    :cond_4
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_5
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 481
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v10

    if-nez v10, :cond_b

    .line 482
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v10

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    div-int/2addr v10, v0

    mul-int v9, v10, v0

    .line 483
    .local v9, "upperBound":I
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v8

    .local v8, "placeHolder":I
    :goto_4
    if-ge v8, v9, :cond_b

    .line 484
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 450
    .end local v6    # "j":I
    .end local v8    # "placeHolder":I
    .end local v9    # "upperBound":I
    :cond_6
    const/4 v5, 0x0

    .line 451
    .local v5, "item":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 452
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v2, 0x1

    .restart local v2    # "header":I
    :goto_6
    if-ge v2, v0, :cond_7

    .line 456
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 459
    :cond_7
    const/4 v7, 0x0

    .local v7, "offset":I
    :goto_7
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v10

    if-ge v7, v10, :cond_8

    .line 460
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v5, v5, 0x1

    .line 459
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 464
    :cond_8
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v10

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    div-int/2addr v10, v0

    mul-int v9, v10, v0

    .line 465
    .restart local v9    # "upperBound":I
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v8

    .restart local v8    # "placeHolder":I
    :goto_8
    if-ge v8, v9, :cond_9

    .line 466
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 469
    :cond_9
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->shouldDrawDivider()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 470
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    const/4 v1, 0x1

    .local v1, "divider":I
    :goto_9
    if-ge v1, v0, :cond_a

    .line 473
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 451
    .end local v1    # "divider":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 489
    .end local v2    # "header":I
    .end local v5    # "item":I
    .end local v7    # "offset":I
    .end local v8    # "placeHolder":I
    .end local v9    # "upperBound":I
    :cond_b
    const/4 v6, 0x0

    .line 490
    :goto_a
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_d

    .line 491
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    const/4 v2, 0x1

    .restart local v2    # "header":I
    :goto_b
    if-ge v2, v0, :cond_c

    .line 494
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v11, -0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 497
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 501
    .end local v2    # "header":I
    :cond_d
    return-void
.end method

.method private getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "lastViewSeen"    # Landroid/view/View;

    .prologue
    .line 321
    move-object v0, p1

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    .line 322
    .local v0, "fillerView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    .end local v0    # "fillerView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 326
    .restart local v0    # "fillerView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    :cond_0
    invoke-virtual {v0, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->setMeasureTarget(Landroid/view/View;)V

    .line 328
    return-object v0
.end method

.method private getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .locals 2
    .param p1, "headerPosition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 333
    move-object v0, p2

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    .line 334
    .local v0, "headerFillerView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    .end local v0    # "headerFillerView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 337
    .restart local v0    # "headerFillerView":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setHeaderId(I)V

    .line 338
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v0

    return v0
.end method

.method public getGroupIndexByItemIndex(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 380
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 381
    const/4 v0, 0x1

    .line 382
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 384
    add-int/lit8 v1, v0, -0x1

    .line 392
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 382
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 389
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 392
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getGroupItemStartIndex(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderNum()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v0

    return v0
.end method

.method protected getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 175
    .local v0, "adapterPosition":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    .line 180
    :cond_0
    const/4 v1, 0x0

    .line 183
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 188
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 189
    .local v0, "adapterPosition":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-wide v2

    .line 193
    :cond_1
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x4

    if-eq v1, v4, :cond_0

    .line 197
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 198
    const-wide/16 v2, -0x2

    goto :goto_0

    .line 201
    :cond_2
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 202
    const-wide/16 v2, -0x3

    goto :goto_0

    .line 205
    :cond_3
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_4

    .line 206
    const-wide/16 v2, -0x4

    goto :goto_0

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemPositionByItemIndex(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 404
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 398
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 213
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 215
    .local v0, "adapterPosition":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    .line 216
    const/4 v1, 0x3

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 220
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    if-ne v2, v4, :cond_3

    .line 223
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    :cond_3
    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_4

    .line 226
    const/4 v1, 0x2

    goto :goto_0

    .line 228
    :cond_4
    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x5

    if-ne v2, v3, :cond_5

    .line 229
    const/4 v1, 0x4

    goto :goto_0

    .line 231
    :cond_5
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getItemViewType(I)I

    move-result v1

    .line 232
    .local v1, "itemViewType":I
    if-eq v1, v4, :cond_0

    .line 235
    add-int/lit8 v1, v1, 0x5

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 241
    .local v0, "adapterPosition":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 242
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-direct {p0, v3, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    move-result-object v1

    .line 243
    .local v1, "v":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v4, v5, v3, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 244
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 245
    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    .line 246
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 247
    move-object p2, v1

    .line 248
    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    .line 249
    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->forceLayout()V

    .line 282
    .end local v1    # "v":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object p2

    .line 250
    :cond_0
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    .line 251
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-direct {p0, v3, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    move-result-object v1

    .line 254
    .restart local v1    # "v":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 255
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    iget v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    iget-object v2, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 259
    .restart local v2    # "view":Landroid/view/View;
    :goto_1
    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    .line 260
    move-object p2, v1

    .line 261
    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    .line 262
    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->forceLayout()V

    goto :goto_0

    .line 257
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    iget v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;

    iget-object v2, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 263
    .end local v1    # "v":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_3

    .line 264
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    goto :goto_0

    .line 266
    :cond_3
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 267
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    goto :goto_0

    .line 268
    :cond_4
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x5

    if-ne v3, v4, :cond_5

    .line 269
    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    move-result-object v1

    .line 270
    .restart local v1    # "v":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v5, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v4, v5, v3, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getDividerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 271
    .restart local v2    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 272
    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    .line 273
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 274
    move-object p2, v1

    .line 275
    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    .line 276
    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->forceLayout()V

    goto/16 :goto_0

    .line 278
    .end local v1    # "v":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v3, v4, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 279
    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 310
    .local v0, "adapterPosition":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    .line 314
    :cond_0
    const/4 v1, 0x0

    .line 317
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method onColumnChanged()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    .line 364
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 365
    return-void
.end method

.method public setFooter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "viewInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    .line 152
    :goto_0
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    .line 153
    return-void

    .line 150
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/List;

    goto :goto_0
.end method

.method public setHeader(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "viewInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    .line 144
    return-void

    .line 141
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mHeaderViewInfos:Ljava/util/List;

    goto :goto_0
.end method

.method protected translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 354
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 355
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    .line 359
    :goto_0
    return-object v0

    .line 358
    :cond_0
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v2, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    .line 359
    .local v0, "pos":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
    goto :goto_0
.end method

.method protected translateVisibleInfo(II)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;
    .locals 7
    .param p1, "firstPos"    # I
    .param p2, "visibleCount"    # I

    .prologue
    .line 504
    const/4 v0, -0x1

    .line 505
    .local v0, "dataFirstPos":I
    const/4 v1, 0x0

    .line 506
    .local v1, "dataVisibleCount":I
    add-int v5, p1, p2

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 507
    .local v3, "length":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 508
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 509
    .local v4, "position":I
    if-ltz v4, :cond_1

    .line 510
    if-gez v0, :cond_0

    .line 511
    move v0, v4

    .line 513
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 507
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v4    # "position":I
    :cond_2
    new-instance v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;

    invoke-direct {v5, p0, v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$VisibleInfo;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    return-object v5
.end method

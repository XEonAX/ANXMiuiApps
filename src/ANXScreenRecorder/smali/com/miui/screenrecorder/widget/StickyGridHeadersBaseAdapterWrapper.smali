.class public Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;,
        Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;
    }
.end annotation


# static fields
.field protected static final ID_FILLER:I = -0x2

.field protected static final ID_HEADER:I = -0x1

.field protected static final ID_HEADER_FILLER:I = -0x3

.field protected static final POSITION_FILLER:I = -0x1

.field protected static final POSITION_FOOTER:I = -0x4

.field protected static final POSITION_HEADER:I = -0x2

.field protected static final POSITION_HEADER_FILLER:I = -0x3

.field protected static final VIEW_TYPE_FILLER:I = 0x0

.field protected static final VIEW_TYPE_HEADER:I = 0x1

.field protected static final VIEW_TYPE_HEADER_FILLER:I = 0x2

.field protected static final VIEW_TYPE_LIST_FOOTER:I = 0x3

.field private static final sNumViewTypes:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private final mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

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
.method public constructor <init>(Landroid/content/Context;Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .param p3, "delegate"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    invoke-static {}, Lcom/miui/screenrecorder/compat/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$1;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 99
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    .line 101
    iput-object p2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    .line 105
    invoke-direct {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    .line 106
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p3, v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;)Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    return-object v0
.end method

.method private genDataMap()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, -0x3

    .line 352
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v9

    if-ne v9, v13, :cond_0

    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    .line 353
    invoke-virtual {v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getRequestedNumColumns()I

    move-result v0

    .line 355
    .local v0, "columns":I
    :goto_0
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v9

    iget-object v10, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    .line 356
    invoke-interface {v10}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v10

    mul-int/2addr v10, v0

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    .line 357
    invoke-interface {v10}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v10

    add-int/lit8 v11, v0, -0x1

    mul-int/2addr v10, v11

    add-int v3, v9, v10

    .line 358
    .local v3, "idealCapacity":I
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 359
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 360
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v10}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 361
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 362
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 363
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v9

    if-nez v9, :cond_3

    .line 366
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getCount()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 367
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "columns":I
    .end local v2    # "i":I
    .end local v3    # "idealCapacity":I
    :cond_0
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->getNumColumns()I

    move-result v0

    goto :goto_0

    .line 370
    .restart local v0    # "columns":I
    .restart local v2    # "i":I
    .restart local v3    # "idealCapacity":I
    :cond_1
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_2
    return-void

    .line 374
    .end local v2    # "i":I
    :cond_3
    const/4 v4, 0x0

    .line 375
    .local v4, "item":I
    const/4 v2, 0x0

    .line 376
    .restart local v2    # "i":I
    :goto_2
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v9}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 377
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v10, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v1, 0x1

    .local v1, "header":I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 381
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 384
    :cond_4
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_4
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v9, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v9

    if-ge v6, v9, :cond_5

    .line 385
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v4, v4, 0x1

    .line 384
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 389
    :cond_5
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v9, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v9

    add-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    div-int/2addr v9, v0

    mul-int v8, v9, v0

    .line 390
    .local v8, "upperBound":I
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v9, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v7

    .local v7, "placeHolder":I
    :goto_5
    if-ge v7, v8, :cond_6

    .line 391
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 376
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 395
    .end local v1    # "header":I
    .end local v6    # "offset":I
    .end local v7    # "placeHolder":I
    .end local v8    # "upperBound":I
    :cond_7
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 396
    const/4 v5, 0x0

    .line 397
    .local v5, "j":I
    :goto_6
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 398
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    const/4 v10, -0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    const/4 v1, 0x1

    .restart local v1    # "header":I
    :goto_7
    if-ge v1, v0, :cond_8

    .line 401
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v9, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 404
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "lastViewSeen"    # Landroid/view/View;

    .prologue
    .line 262
    move-object v0, p1

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;

    .line 263
    .local v0, "fillerView":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;
    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;

    .end local v0    # "fillerView":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 266
    .restart local v0    # "fillerView":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->setEnabled(Z)V

    .line 267
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->setImportantForAccessibility(I)V

    .line 268
    invoke-virtual {v0, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;->setMeasureTarget(Landroid/view/View;)V

    .line 270
    return-object v0
.end method

.method private getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .locals 3
    .param p1, "headerPosition"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x1

    .line 275
    move-object v0, p2

    check-cast v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    .line 276
    .local v0, "headerFillerView":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    .end local v0    # "headerFillerView":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    .line 279
    .restart local v0    # "headerFillerView":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    :cond_0
    invoke-virtual {v0, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setFocusable(Z)V

    .line 280
    invoke-virtual {v0, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setFocusableInTouchMode(Z)V

    .line 281
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getCountForHeader(I)I

    move-result v0

    return v0
.end method

.method public getGroupIndexByItemIndex(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 325
    const/4 v0, 0x1

    .line 326
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 328
    add-int/lit8 v1, v0, -0x1

    .line 336
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 326
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 333
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 336
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getGroupItemStartIndex(I)I
    .locals 1
    .param p1, "headerIndex"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionStartItemIndexMap:Ljava/util/ArrayList;

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
    .line 286
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    iget v0, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderNum()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v0

    return v0
.end method

.method protected getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v1, v1, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-interface {v0, v1, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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
    .line 137
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 138
    .local v0, "adapterPosition":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 149
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 150
    .local v0, "adapterPosition":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-wide v2

    .line 154
    :cond_1
    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x4

    if-eq v1, v4, :cond_0

    .line 158
    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 159
    const-wide/16 v2, -0x2

    goto :goto_0

    .line 162
    :cond_2
    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 163
    const-wide/16 v2, -0x3

    goto :goto_0

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemPositionByItemIndex(I)I
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 340
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 348
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 342
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
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

    .line 170
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 172
    .local v0, "adapterPosition":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    .line 173
    const/4 v1, 0x3

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 177
    const/4 v1, 0x1

    goto :goto_0

    .line 179
    :cond_2
    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    if-ne v2, v4, :cond_3

    .line 180
    const/4 v1, 0x0

    goto :goto_0

    .line 182
    :cond_3
    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_4

    .line 183
    const/4 v1, 0x2

    goto :goto_0

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v2, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getItemViewType(I)I

    move-result v1

    .line 186
    .local v1, "itemViewType":I
    if-eq v1, v4, :cond_0

    .line 189
    add-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 195
    .local v0, "adapterPosition":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 196
    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-direct {p0, v3, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    move-result-object v1

    .line 197
    .local v1, "v":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    iget v5, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-virtual {v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v4, v5, v3, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    .line 201
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v3, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 202
    move-object p2, v1

    .line 203
    iput-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    .line 204
    invoke-virtual {v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->forceLayout()V

    .line 225
    .end local v1    # "v":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object p2

    .line 205
    :cond_0
    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_1

    .line 206
    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    invoke-direct {p0, v3, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getHeaderFillerView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    move-result-object v1

    .line 208
    .restart local v1    # "v":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v4, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    iget-object v5, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    .line 209
    invoke-interface {v5}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    .line 208
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;

    iget-object v2, v3, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 210
    .restart local v2    # "view":Landroid/view/View;
    iget-object v4, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 211
    invoke-virtual {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mGridView:Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;

    invoke-virtual {v3, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 213
    move-object p2, v1

    .line 214
    invoke-virtual {v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->forceLayout()V

    goto :goto_0

    .line 215
    .end local v1    # "v":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_2

    .line 216
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mLastHeaderViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    goto :goto_0

    .line 218
    :cond_2
    iget v3, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 219
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    invoke-direct {p0, p2, p3, v3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->getFillerView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    goto :goto_0

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    iget v4, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v3, v4, p2, p3}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 222
    iput-object p2, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mLastViewSeen:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getWrappedAdapter()Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    invoke-interface {v0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v0

    .line 253
    .local v0, "adapterPosition":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 255
    :cond_0
    const/4 v1, 0x0

    .line 258
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mDelegate:Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;

    iget v2, v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    invoke-interface {v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method onColumnChanged()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->genDataMap()V

    .line 308
    invoke-virtual {p0}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->notifyDataSetChanged()V

    .line 309
    return-void
.end method

.method public setFooter(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "viewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/widget/StickyGridHeadersGridView$FixedViewInfo;>;"
    iput-object p1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method protected translatePosition(I)Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 298
    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 299
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;II)V

    .line 303
    :goto_0
    return-object v0

    .line 302
    :cond_0
    new-instance v0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mPositionMap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;-><init>(Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper;II)V

    .line 303
    .local v0, "pos":Lcom/miui/screenrecorder/widget/StickyGridHeadersBaseAdapterWrapper$Position;
    goto :goto_0
.end method

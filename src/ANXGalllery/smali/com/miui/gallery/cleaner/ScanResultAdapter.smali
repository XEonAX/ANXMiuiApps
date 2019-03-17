.class public Lcom/miui/gallery/cleaner/ScanResultAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ScanResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;,
        Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;,
        Lcom/miui/gallery/cleaner/ScanResultAdapter$HeaderHolder;
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
.field private final mContentLayoutMinHeight:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mHeaderView:Landroid/view/View;

.field private final mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private mNotifyObservers:Lmiui/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/ArraySet",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDataList:Ljava/util/List;

    .line 36
    new-instance v0, Lmiui/util/ArraySet;

    invoke-direct {v0}, Lmiui/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mNotifyObservers:Lmiui/util/ArraySet;

    .line 45
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mTitleMarginTop:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mContentLayoutMinHeight:I

    .line 48
    invoke-static {}, Lcom/miui/gallery/Config$ThumbConfig;->get()Lcom/miui/gallery/Config$ThumbConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/gallery/Config$ThumbConfig;->sMicroTargetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 49
    sget-object v0, Lcom/miui/gallery/Config$ThumbConfig;->MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cleaner/ScanResultAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mContentLayoutMinHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/cleaner/ScanResultAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .prologue
    .line 27
    iget v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mTitleMarginTop:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mImageSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cleaner/ScanResultAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResultAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mHeaderView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getDataItemSize()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->getDataItemSize()I

    move-result v1

    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p2}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->getItemViewType(I)I

    move-result v0

    .line 91
    .local v0, "viewType":I
    if-nez v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mHeaderView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 93
    :goto_0
    check-cast p1, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/ScanResult;

    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/ScanResultAdapter;->getDataItemSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;->bindData(Lcom/miui/gallery/cleaner/ScanResult;Z)V

    .line 95
    :cond_0
    return-void

    .line 92
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 93
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 83
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance v1, Lcom/miui/gallery/cleaner/ScanResultAdapter$HeaderHolder;

    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mHeaderView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/cleaner/ScanResultAdapter$HeaderHolder;-><init>(Lcom/miui/gallery/cleaner/ScanResultAdapter;Landroid/view/View;)V

    .line 85
    :goto_0
    return-object v1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040049

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "resultView":Landroid/view/View;
    new-instance v1, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/cleaner/ScanResultAdapter$ScanResultHolder;-><init>(Lcom/miui/gallery/cleaner/ScanResultAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 5
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The observer is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mNotifyObservers:Lmiui/util/ArraySet;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mNotifyObservers:Lmiui/util/ArraySet;

    invoke-virtual {v1}, Lmiui/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;

    .line 104
    .local v0, "notifyObserver":Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;
    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;->getDataObserver()Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0    # "notifyObserver":Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_2
    :try_start_1
    new-instance v0, Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;-><init>(Lcom/miui/gallery/cleaner/ScanResultAdapter;Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 109
    .restart local v0    # "notifyObserver":Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;
    iget-object v1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mNotifyObservers:Lmiui/util/ArraySet;

    invoke-virtual {v1, v0}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 111
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    return-void
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mHeaderView:Landroid/view/View;

    .line 62
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 6
    .param p1, "observer"    # Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The observer is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mNotifyObservers:Lmiui/util/ArraySet;

    monitor-enter v3

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mNotifyObservers:Lmiui/util/ArraySet;

    invoke-virtual {v2}, Lmiui/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;

    .line 123
    .local v1, "notifyObserver":Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;
    invoke-virtual {v1}, Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;->getDataObserver()Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 124
    invoke-super {p0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 126
    monitor-exit v3

    return-void

    .line 129
    .end local v1    # "notifyObserver":Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/gallery/cleaner/ScanResultAdapter$NotifyObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cleaner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cleaner/ScanResult;>;"
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResultAdapter;->mDataList:Ljava/util/List;

    .line 54
    return-void
.end method

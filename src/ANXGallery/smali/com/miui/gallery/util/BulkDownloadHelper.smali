.class public Lcom/miui/gallery/util/BulkDownloadHelper;
.super Ljava/lang/Object;
.source "BulkDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;,
        Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;,
        Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    }
.end annotation


# instance fields
.field private mCurSize:J

.field private mDownloadListener:Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

.field private mExcutingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mSuccessList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mFailList:Ljava/util/List;

    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->reset()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;
    .param p1, "x1"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/BulkDownloadHelper;->contains(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;
    .param p1, "x1"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/BulkDownloadHelper;->onItemLoadingFail(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/BulkDownloadHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mCurSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/util/BulkDownloadHelper;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mCurSize:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/BulkDownloadHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mSuccessList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/util/BulkDownloadHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->isDownloadEnd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/util/BulkDownloadHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->onDownloadEnd()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/gallery/util/BulkDownloadHelper;)Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mDownloadListener:Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/util/BulkDownloadHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/util/BulkDownloadHelper;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mTotalSize:J

    return-wide v0
.end method

.method private contains(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private generatorItemListener(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 101
    new-instance v0, Lcom/miui/gallery/util/BulkDownloadHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/util/BulkDownloadHelper$1;-><init>(Lcom/miui/gallery/util/BulkDownloadHelper;Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V

    return-object v0
.end method

.method private isDownloadEnd()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mSuccessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDownloadEnd()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mDownloadListener:Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mDownloadListener:Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mSuccessList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mFailList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;->onDownloadEnd(Ljava/util/List;Ljava/util/List;)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->reset()V

    .line 90
    return-void
.end method

.method private onItemLoadingFail(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mTotalSize:J

    invoke-virtual {p1}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mTotalSize:J

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mFailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->isDownloadEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->onDownloadEnd()V

    .line 98
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mSuccessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    iput-wide v2, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mCurSize:J

    .line 41
    iput-wide v2, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mTotalSize:J

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mDownloadListener:Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

    .line 43
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .line 137
    .local v0, "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/uil/CloudImageLoader;->cancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    goto :goto_0

    .line 140
    .end local v0    # "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->reset()V

    .line 141
    return-void
.end method

.method public download(Ljava/util/List;ZLcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;)V
    .locals 12
    .param p2, "cancelExcuting"    # Z
    .param p3, "listener"    # Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;Z",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 47
    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->cancel()V

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/util/BulkDownloadHelper;->reset()V

    .line 51
    iget-object v6, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v6, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mExcutingList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .line 54
    .local v1, "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    iget-wide v8, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mTotalSize:J

    invoke-virtual {v1}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mTotalSize:J

    goto :goto_0

    .line 56
    .end local v1    # "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    :cond_1
    iput-object p3, p0, Lcom/miui/gallery/util/BulkDownloadHelper;->mDownloadListener:Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadListener;

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "imageTypes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/DownloadType;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v3, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoadingListener;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v4, "progressListeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    .line 62
    .restart local v1    # "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    invoke-virtual {v1}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_2

    .line 63
    const-string v7, "BulkDownloadHelper"

    const-string v8, "Null download uri for item %s"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/miui/gallery/util/BulkDownloadHelper;->onItemLoadingFail(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)V

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getDownloadUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v1}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-direct {p0, v1}, Lcom/miui/gallery/util/BulkDownloadHelper;->generatorItemListener(Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;)Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;

    move-result-object v2

    .line 70
    .local v2, "itemListener":Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v1    # "item":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    .end local v2    # "itemListener":Lcom/miui/gallery/util/BulkDownloadHelper$BulkItemLoadingListener;
    :cond_3
    invoke-static {}, Lcom/miui/gallery/util/uil/CloudImageLoader;->getInstance()Lcom/miui/gallery/util/uil/CloudImageLoader;

    move-result-object v6

    invoke-virtual {v6, v5, v0, v3, v4}, Lcom/miui/gallery/util/uil/CloudImageLoader;->loadImages(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 75
    .end local v0    # "imageTypes":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/sdk/download/DownloadType;>;"
    .end local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoadingListener;>;"
    .end local v4    # "progressListeners":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/uil/CloudImageLoadingProgressListener;>;"
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_4
    return-void
.end method

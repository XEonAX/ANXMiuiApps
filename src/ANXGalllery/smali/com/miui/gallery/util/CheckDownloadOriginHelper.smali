.class public Lcom/miui/gallery/util/CheckDownloadOriginHelper;
.super Ljava/lang/Object;
.source "CheckDownloadOriginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;,
        Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;,
        Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;
    }
.end annotation


# instance fields
.field private mAlbumId:J

.field private mContext:Landroid/content/Context;

.field private mFragmentManger:Landroid/app/FragmentManager;

.field private mListener:Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

.field private mMediaIds:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;J[J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p3, "albumId"    # J
    .param p5, "mediaIds"    # [J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mFragmentManger:Landroid/app/FragmentManager;

    .line 37
    iput-wide p3, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mAlbumId:J

    .line 38
    iput-object p5, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mMediaIds:[J

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->doDownloadOrigin(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mListener:Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->startDownloadOrigin(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mAlbumId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)[J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mMediaIds:[J

    return-object v0
.end method

.method private doDownloadOrigin(Ljava/util/List;Z)V
    .locals 11
    .param p2, "ignoreNetwork"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;>;"
    const/4 v1, 0x0

    .line 51
    const-string v2, "CheckDownloadOriginHelper"

    const-string v3, "doDownloadOrigin %s"

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0176

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0177

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x104000a

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;

    invoke-direct {v6, p0, p1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Ljava/util/List;)V

    new-instance v7, Lcom/miui/gallery/util/CheckDownloadOriginHelper$2;

    invoke-direct {v7, p0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$2;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)V

    .line 53
    invoke-static/range {v0 .. v7}, Lcom/miui/gallery/util/DialogUtil;->showInfoDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    .line 85
    :goto_1
    return-void

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v9, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;

    .line 73
    .local v10, "item":Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;
    new-instance v8, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;

    iget-wide v2, v10, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mId:J

    .line 75
    invoke-static {v2, v3}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    iget-wide v4, v10, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mSize:J

    invoke-direct {v8, v1, v2, v4, v5}, Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;-><init>(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;J)V

    .line 79
    .local v8, "downloadItem":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    .end local v8    # "downloadItem":Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;
    .end local v10    # "item":Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;
    :cond_2
    invoke-direct {p0, v9}, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->startDownloadOrigin(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private startDownloadOrigin(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/BulkDownloadHelper$BulkDownloadItem;>;"
    const-string v3, "CheckDownloadOriginHelper"

    const-string/jumbo v4, "startDownloadOrigin %s"

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    new-instance v1, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$3;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper;)V

    .line 134
    .local v1, "onDownloadListener":Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;
    invoke-static {p1}, Lcom/miui/gallery/ui/DownloadFragment;->newInstance(Ljava/util/ArrayList;)Lcom/miui/gallery/ui/DownloadFragment;

    move-result-object v0

    .line 135
    .local v0, "downloadFragment":Lcom/miui/gallery/ui/DownloadFragment;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DownloadFragment;->setOnDownloadListener(Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;)V

    .line 136
    iget-object v2, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mFragmentManger:Landroid/app/FragmentManager;

    const-string v3, "DownloadFragment"

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/ui/DownloadFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 137
    return-void

    .line 88
    .end local v0    # "downloadFragment":Lcom/miui/gallery/ui/DownloadFragment;
    .end local v1    # "onDownloadListener":Lcom/miui/gallery/ui/DownloadFragment$OnDownloadListener;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public setListener(Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mListener:Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckDownloadOriginListener;

    .line 48
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "CheckDownloadOriginHelper"

    const-string v1, "doCheckOrigin"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;

    iget-object v1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method

.class public Lcom/miui/gallery/movie/utils/MovieDownloadManager;
.super Ljava/lang/Object;
.source "MovieDownloadManager.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/movie/utils/MovieDownloadManager;


# instance fields
.field private mResourceDownloadManager:Lcom/miui/gallery/net/resource/ResourceDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    invoke-direct {v0}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->sInstance:Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/movie/utils/MovieDownloadManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->sInstance:Lcom/miui/gallery/movie/utils/MovieDownloadManager;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->mResourceDownloadManager:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->mResourceDownloadManager:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    invoke-virtual {v0}, Lcom/miui/gallery/net/resource/ResourceDownloadManager;->cancelAll()V

    .line 95
    :cond_0
    return-void
.end method

.method public downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;Z)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p2, "downloadListener"    # Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;
    .param p3, "isActiveNetworkMetered"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->mResourceDownloadManager:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    invoke-direct {v0}, Lcom/miui/gallery/net/resource/ResourceDownloadManager;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->mResourceDownloadManager:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    .line 62
    :cond_0
    if-eqz p2, :cond_1

    .line 63
    invoke-interface {p2}, Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;->onStart()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->mResourceDownloadManager:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    invoke-virtual {p1}, Lcom/miui/gallery/movie/entity/MovieResource;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gallery/movie/utils/MovieDownloadManager$2;-><init>(Lcom/miui/gallery/movie/utils/MovieDownloadManager;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/miui/gallery/net/resource/ResourceDownloadManager;->download(Lcom/miui/gallery/net/resource/Resource;Ljava/lang/String;Lcom/miui/gallery/net/download/Request$Listener;Z)V

    .line 89
    return-void
.end method

.method public downloadResourceWithCheck(Landroid/app/Activity;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V
    .locals 7
    .param p1, "mContext"    # Landroid/app/Activity;
    .param p2, "data"    # Lcom/miui/gallery/movie/entity/MovieResource;
    .param p3, "onCompletedListener"    # Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    .prologue
    .line 31
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const v0, 0x7f0c02c6

    invoke-static {p1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    .line 33
    const-string v0, "MovieDownloadManager"

    const-string v1, "download resource no network"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v5, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;

    invoke-direct {v5, p0, p2, p3}, Lcom/miui/gallery/movie/utils/MovieDownloadManager$1;-><init>(Lcom/miui/gallery/movie/utils/MovieDownloadManager;Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V

    .line 47
    .local v5, "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c02c4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/ConfirmDialog;->showConfirmDialog(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;)V

    goto :goto_0

    .line 54
    .end local v5    # "confirmDialogInterface":Lcom/miui/gallery/ui/ConfirmDialog$ConfirmDialogInterface;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->downloadResource(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;Z)V

    goto :goto_0
.end method

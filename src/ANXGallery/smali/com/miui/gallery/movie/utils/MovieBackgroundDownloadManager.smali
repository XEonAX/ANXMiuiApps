.class public Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;
.super Ljava/lang/Object;
.source "MovieBackgroundDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;


# instance fields
.field private mTemplateResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/movie/entity/TemplateResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    invoke-direct {v0}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->sInstance:Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->mTemplateResources:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->mTemplateResources:Ljava/util/List;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;->sInstance:Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;

    return-object v0
.end method


# virtual methods
.method public downloadTemplate(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "templateId"    # I

    .prologue
    .line 35
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, "MovieBackgroundDownloadManager"

    const-string v1, "download templateId %d no network"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "MovieBackgroundDownloadManager"

    const-string v1, "download templateId %d in network metered"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/movie/MovieConfig;->init(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;

    invoke-direct {v0, p0, p2}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;-><init>(Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/movie/utils/MovieBackgroundDownloadManager$BackgroundDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

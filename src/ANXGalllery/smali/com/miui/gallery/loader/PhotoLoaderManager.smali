.class public Lcom/miui/gallery/loader/PhotoLoaderManager;
.super Ljava/lang/Object;
.source "PhotoLoaderManager.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/loader/PhotoLoaderManager;


# instance fields
.field private mSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/model/PhotoLoaderSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/loader/PhotoLoaderManager;->initSources()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/loader/PhotoLoaderManager;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/miui/gallery/loader/PhotoLoaderManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/loader/PhotoLoaderManager;->sInstance:Lcom/miui/gallery/loader/PhotoLoaderManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/miui/gallery/loader/PhotoLoaderManager;

    invoke-direct {v0}, Lcom/miui/gallery/loader/PhotoLoaderManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/loader/PhotoLoaderManager;->sInstance:Lcom/miui/gallery/loader/PhotoLoaderManager;

    .line 53
    :cond_0
    sget-object v0, Lcom/miui/gallery/loader/PhotoLoaderManager;->sInstance:Lcom/miui/gallery/loader/PhotoLoaderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSources()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/model/LocalSource;

    invoke-direct {v1}, Lcom/miui/gallery/model/LocalSource;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/model/FaceSource;

    invoke-direct {v1}, Lcom/miui/gallery/model/FaceSource;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/model/SearchResultSource;

    invoke-direct {v1}, Lcom/miui/gallery/model/SearchResultSource;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/model/MediaSource;

    invoke-direct {v1}, Lcom/miui/gallery/model/MediaSource;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/model/StorageSource;

    invoke-direct {v1}, Lcom/miui/gallery/model/StorageSource;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/model/ContentProxySource;

    invoke-direct {v1}, Lcom/miui/gallery/model/ContentProxySource;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/gallery/model/UriSource;

    invoke-direct {v1}, Lcom/miui/gallery/model/UriSource;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method


# virtual methods
.method public getPhotoDataSet(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    if-eqz p2, :cond_1

    .line 40
    iget-object v1, p0, Lcom/miui/gallery/loader/PhotoLoaderManager;->mSources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/PhotoLoaderSource;

    .line 41
    .local v0, "dataSource":Lcom/miui/gallery/model/PhotoLoaderSource;
    invoke-virtual {v0, p2, p3}, Lcom/miui/gallery/model/PhotoLoaderSource;->match(Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/model/PhotoLoaderSource;->createDataLoader(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;

    move-result-object v1

    .line 46
    .end local v0    # "dataSource":Lcom/miui/gallery/model/PhotoLoaderSource;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

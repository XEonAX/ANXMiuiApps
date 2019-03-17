.class public abstract Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Initializer"
.end annotation


# instance fields
.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->initialize()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method private final initialize()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 8

    .prologue
    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1085
    .local v2, "start":J
    monitor-enter p0

    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1088
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1094
    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait for initialize ImageLoader cost: %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v1

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1093
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract getConfig()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.end method

.method public final preInitialize()V
    .locals 2

    .prologue
    .line 1099
    monitor-enter p0

    .line 1100
    :try_start_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    .line 1101
    .local v0, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->getConfig()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 1102
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$Initializer;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1103
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1104
    monitor-exit p0

    .line 1105
    return-void

    .line 1104
    .end local v0    # "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

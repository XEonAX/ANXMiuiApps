.class Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;
.super Ljava/lang/Object;
.source "UpDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/UpDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemChangedDecorator"
.end annotation


# instance fields
.field final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/cloud/UpDownloadManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/cloud/UpDownloadManager;)V
    .locals 1

    .prologue
    .line 363
    iput-object p1, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->this$0:Lcom/miui/gallery/cloud/UpDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->mListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/UpDownloadManager;Lcom/miui/gallery/cloud/UpDownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/UpDownloadManager;
    .param p2, "x1"    # Lcom/miui/gallery/cloud/UpDownloadManager$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;-><init>(Lcom/miui/gallery/cloud/UpDownloadManager;)V

    return-void
.end method


# virtual methods
.method public addOnItemChangedListener(Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V
    .locals 2
    .param p1, "l"    # Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAddItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 390
    invoke-static {p1}, Lcom/miui/gallery/cloud/UpDownloadManager;->access$100(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 391
    iget-object v2, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .line 393
    .local v0, "l":Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;
    invoke-interface {v0, p1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;->onAddItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    goto :goto_0

    .line 395
    .end local v0    # "l":Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    return-void
.end method

.method public onRemoveItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 4
    .param p1, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 380
    invoke-static {p1}, Lcom/miui/gallery/cloud/UpDownloadManager;->access$000(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    .line 381
    iget-object v2, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .line 383
    .local v0, "l":Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;
    invoke-interface {v0, p1}, Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;->onRemoveItem(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    goto :goto_0

    .line 385
    .end local v0    # "l":Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    return-void
.end method

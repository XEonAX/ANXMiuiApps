.class public Lcom/miui/gallery/cloud/UpDownloadManager;
.super Ljava/lang/Object;
.source "UpDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;,
        Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_FILE_PRIORITY:[I

.field private static final PRIORITY_ELEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_ELEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFactory:Lcom/miui/gallery/cloud/thread/TaskFactory;

.field private static final sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;


# instance fields
.field private final mExecutor:Lcom/miui/gallery/cloud/RequestItemExecutor;

.field private final mItemChangedListener:Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 67
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 68
    .local v0, "elements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    const/16 v4, 0xa

    invoke-direct {v3, v10, v4, v8}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    invoke-direct {v3, v7, v9, v8}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    const/16 v4, 0xa

    invoke-direct {v3, v9, v4, v8}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    const/16 v4, 0x1e

    invoke-direct {v3, v11, v7, v4}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    const/4 v4, 0x4

    const/16 v5, 0xa

    const/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v7, v8}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v7, v8}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v7, v8}, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;-><init>(III)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/cloud/UpDownloadManager;->THREAD_ELEMENTS:Ljava/util/Map;

    .line 80
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 81
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/miui/gallery/cloud/UpDownloadManager;->PRIORITY_ELEMENTS:Ljava/util/Map;

    .line 99
    new-array v2, v11, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/miui/gallery/cloud/UpDownloadManager;->DOWNLOAD_FILE_PRIORITY:[I

    .line 401
    const/16 v2, 0x8

    new-array v2, v2, [Lcom/miui/gallery/cloud/UpDownloadManager;

    sput-object v2, Lcom/miui/gallery/cloud/UpDownloadManager;->sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;

    .line 403
    new-instance v2, Lcom/miui/gallery/cloud/UpDownloadManager$1;

    invoke-direct {v2}, Lcom/miui/gallery/cloud/UpDownloadManager$1;-><init>()V

    sput-object v2, Lcom/miui/gallery/cloud/UpDownloadManager;->sFactory:Lcom/miui/gallery/cloud/thread/TaskFactory;

    return-void

    .line 99
    :array_0
    .array-data 4
        0x9
        0xa
        0xb
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;-><init>(Lcom/miui/gallery/cloud/UpDownloadManager;Lcom/miui/gallery/cloud/UpDownloadManager$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mItemChangedListener:Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;

    .line 425
    new-instance v6, Lcom/miui/gallery/cloud/RequestItemExecutor;

    sget-object v0, Lcom/miui/gallery/cloud/UpDownloadManager;->sFactory:Lcom/miui/gallery/cloud/thread/TaskFactory;

    sget-object v1, Lcom/miui/gallery/cloud/UpDownloadManager;->PRIORITY_ELEMENTS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {p1}, Lcom/miui/gallery/cloud/UpDownloadManager;->getBatchLimit(I)I

    move-result v3

    .line 426
    invoke-static {p1}, Lcom/miui/gallery/cloud/UpDownloadManager;->getCommandMaxSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mItemChangedListener:Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;

    move v1, p1

    .line 425
    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/cloud/thread/TaskFactory;->createTask(IIIILcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)Lcom/miui/gallery/cloud/thread/BaseTask;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/miui/gallery/cloud/RequestItemExecutor;-><init>(Lcom/miui/gallery/cloud/thread/BaseTask;)V

    iput-object v6, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mExecutor:Lcom/miui/gallery/cloud/RequestItemExecutor;

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/miui/gallery/cloud/UpDownloadManager;->endDownload(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/miui/gallery/cloud/UpDownloadManager;->startDownload(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    return-void
.end method

.method public static cancel(IZZ)V
    .locals 4
    .param p0, "priority"    # I
    .param p1, "abandon"    # Z
    .param p2, "interruptExecuting"    # Z

    .prologue
    .line 328
    invoke-static {p0}, Lcom/miui/gallery/cloud/UpDownloadManager;->getThreadType(I)I

    move-result v0

    .line 329
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 330
    const-string v1, "UpDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid thread type, priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    sget-object v1, Lcom/miui/gallery/cloud/UpDownloadManager;->sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 335
    sget-object v1, Lcom/miui/gallery/cloud/UpDownloadManager;->sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0, p1, p2}, Lcom/miui/gallery/cloud/UpDownloadManager;->cancelAll(IZZ)V

    goto :goto_0
.end method

.method public static cancelAllBackgroundPriority(ZZ)V
    .locals 6
    .param p0, "abandon"    # Z
    .param p1, "interruptExecuting"    # Z

    .prologue
    .line 348
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 349
    .local v2, "prioritiesCancelled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/miui/gallery/cloud/UpDownloadManager;->PRIORITY_ELEMENTS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/cloud/RequestItemBase;->isBackgroundPriority(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    sget-object v5, Lcom/miui/gallery/cloud/UpDownloadManager;->sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v5, v3

    .line 354
    .local v1, "mgr":Lcom/miui/gallery/cloud/UpDownloadManager;
    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {v1, p0, p1}, Lcom/miui/gallery/cloud/UpDownloadManager;->cancelAll(ZZ)V

    .line 356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "mgr":Lcom/miui/gallery/cloud/UpDownloadManager;
    :cond_1
    return-void
.end method

.method private static deleteTempFile(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 7
    .param p0, "requestItem"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getDownloadTempFilePath()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "tempFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, "tempFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".kinfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "kinfoFilePath":Ljava/lang/String;
    sget-object v3, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 485
    sget-object v3, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    .line 486
    return-void
.end method

.method public static dispatchList(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->dispatchList(Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public static dispatchList(Ljava/util/List;Z)I
    .locals 3
    .param p1, "interruptExecuting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    const/4 v1, 0x0

    .line 259
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    :goto_0
    return v1

    .line 263
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/RequestCloudItem;

    iget v0, v1, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    .line 264
    .local v0, "priority":I
    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->instance(I)Lcom/miui/gallery/cloud/UpDownloadManager;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/miui/gallery/cloud/UpDownloadManager;->invokeList(Ljava/util/List;Z)I

    move-result v1

    goto :goto_0
.end method

.method private static endDownload(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 5
    .param p0, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 451
    invoke-static {p0}, Lcom/miui/gallery/cloud/UpDownloadManager;->needPersisit(Lcom/miui/gallery/cloud/RequestCloudItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    :goto_0
    return-void

    .line 455
    :cond_0
    const-string v2, "UpDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end download, status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getStatus()I

    move-result v1

    .line 458
    .local v1, "status":I
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    .line 459
    .local v0, "dbCloud":Lcom/miui/gallery/data/DBImage;
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 462
    :pswitch_0
    const-string v2, "UpDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad status: status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", file name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :pswitch_1
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/miui/gallery/cloud/UpDownloadManager;->toDatabase(Lcom/miui/gallery/data/DBImage;I)V

    goto :goto_0

    .line 468
    :pswitch_2
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/miui/gallery/cloud/UpDownloadManager;->toDatabase(Lcom/miui/gallery/data/DBImage;I)V

    goto :goto_0

    .line 471
    :pswitch_3
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/gallery/cloud/UpDownloadManager;->toDatabase(Lcom/miui/gallery/data/DBImage;I)V

    .line 472
    invoke-static {p0}, Lcom/miui/gallery/cloud/UpDownloadManager;->deleteTempFile(Lcom/miui/gallery/cloud/RequestCloudItem;)V

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static getBatchLimit(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/miui/gallery/cloud/UpDownloadManager;->THREAD_ELEMENTS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    iget v0, v0, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;->batchSize:I

    return v0
.end method

.method private static getCommandMaxSize(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 110
    sget-object v0, Lcom/miui/gallery/cloud/UpDownloadManager;->THREAD_ELEMENTS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;

    iget v0, v0, Lcom/miui/gallery/cloud/UpDownloadManager$ThreadElement;->commandMaxSize:I

    return v0
.end method

.method public static getThreadType(I)I
    .locals 2
    .param p0, "priority"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/miui/gallery/cloud/UpDownloadManager;->PRIORITY_ELEMENTS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static instance(I)Lcom/miui/gallery/cloud/UpDownloadManager;
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 430
    invoke-static {p0}, Lcom/miui/gallery/cloud/UpDownloadManager;->getThreadType(I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->instanceInternel(I)Lcom/miui/gallery/cloud/UpDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized instanceInternel(I)Lcom/miui/gallery/cloud/UpDownloadManager;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 434
    const-class v1, Lcom/miui/gallery/cloud/UpDownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/cloud/UpDownloadManager;->sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 435
    sget-object v0, Lcom/miui/gallery/cloud/UpDownloadManager;->sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;

    new-instance v2, Lcom/miui/gallery/cloud/UpDownloadManager;

    invoke-direct {v2, p0}, Lcom/miui/gallery/cloud/UpDownloadManager;-><init>(I)V

    aput-object v2, v0, p0

    .line 438
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/UpDownloadManager;->sInstances:[Lcom/miui/gallery/cloud/UpDownloadManager;

    aget-object v0, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static mapStatusToRequestItem(I)I
    .locals 1
    .param p0, "dbStatus"    # I

    .prologue
    const/4 v0, -0x1

    .line 489
    packed-switch p0, :pswitch_data_0

    .line 499
    :goto_0
    :pswitch_0
    return v0

    .line 493
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 497
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static needPersisit(Lcom/miui/gallery/cloud/RequestCloudItem;)Z
    .locals 6
    .param p0, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    const/4 v2, 0x0

    .line 552
    iget v1, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->priority:I

    .line 553
    .local v1, "priority":I
    sget-object v4, Lcom/miui/gallery/cloud/UpDownloadManager;->DOWNLOAD_FILE_PRIORITY:[I

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget v0, v4, v3

    .line 554
    .local v0, "p":I
    if-ne v0, v1, :cond_1

    .line 555
    const/4 v2, 0x1

    .line 558
    .end local v0    # "p":I
    :cond_0
    return v2

    .line 553
    .restart local v0    # "p":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static startDownload(Lcom/miui/gallery/cloud/RequestCloudItem;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/cloud/RequestCloudItem;

    .prologue
    .line 442
    invoke-static {p0}, Lcom/miui/gallery/cloud/UpDownloadManager;->needPersisit(Lcom/miui/gallery/cloud/RequestCloudItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    const-string v0, "UpDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/RequestCloudItem;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/miui/gallery/cloud/RequestCloudItem;->dbCloud:Lcom/miui/gallery/data/DBImage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/UpDownloadManager;->toDatabase(Lcom/miui/gallery/data/DBImage;I)V

    goto :goto_0
.end method

.method private static toDatabase(Lcom/miui/gallery/data/DBImage;I)V
    .locals 12
    .param p0, "dbCloud"    # Lcom/miui/gallery/data/DBImage;
    .param p1, "newStatus"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 593
    const-string v2, "_id=?"

    .line 595
    .local v2, "where":Ljava/lang/String;
    if-ne p1, v10, :cond_0

    .line 596
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v0, "updateTimeValues":Landroid/content/ContentValues;
    const-string v3, "downloadFileTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 598
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "(%s) AND (%s is null OR %s=%d)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "_id=?"

    aput-object v7, v6, v9

    const-string v7, "downloadFileStatus"

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const-string v8, "downloadFileStatus"

    aput-object v8, v6, v7

    .line 605
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    .line 600
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/String;

    .line 606
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 598
    invoke-static {v3, v0, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 609
    .end local v0    # "updateTimeValues":Landroid/content/ContentValues;
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "downloadFileStatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    if-eq p1, v11, :cond_1

    .line 614
    const-string v3, "localFile"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v1, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 617
    return-void
.end method


# virtual methods
.method public addOnItemChangedListener(Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mItemChangedListener:Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloud/UpDownloadManager$OnItemChangedDecorator;->addOnItemChangedListener(Lcom/miui/gallery/cloud/thread/RequestCommandQueue$OnItemChangedListener;)V

    .line 119
    return-void
.end method

.method public cancelAll(IZZ)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "abandon"    # Z
    .param p3, "interruptExecuting"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mExecutor:Lcom/miui/gallery/cloud/RequestItemExecutor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/cloud/RequestItemExecutor;->cancelAll(IZZ)V

    .line 204
    return-void
.end method

.method public cancelAll(ZZ)V
    .locals 4
    .param p1, "abandon"    # Z
    .param p2, "interruptExecuting"    # Z

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    .line 208
    invoke-static {v0}, Lcom/miui/gallery/cloud/SyncConditionManager;->check(I)I

    move-result v1

    .line 209
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 210
    invoke-static {v0}, Lcom/miui/gallery/cloud/UpDownloadManager;->getThreadType(I)I

    move-result v2

    .line 211
    .local v2, "type":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mExecutor:Lcom/miui/gallery/cloud/RequestItemExecutor;

    invoke-virtual {v3, v0, p1, p2}, Lcom/miui/gallery/cloud/RequestItemExecutor;->cancelAll(IZZ)V

    .line 207
    .end local v2    # "type":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "result":I
    :cond_1
    return-void
.end method

.method public hasDelayedItem()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mExecutor:Lcom/miui/gallery/cloud/RequestItemExecutor;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/RequestItemExecutor;->hasDelayedItem()Z

    move-result v0

    return v0
.end method

.method public invokeList(Ljava/util/List;Z)I
    .locals 1
    .param p2, "interruptExecuting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloud/RequestCloudItem;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloud/RequestCloudItem;>;"
    iget-object v0, p0, Lcom/miui/gallery/cloud/UpDownloadManager;->mExecutor:Lcom/miui/gallery/cloud/RequestItemExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/cloud/RequestItemExecutor;->invoke(Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

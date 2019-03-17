.class public Lcom/miui/gallery/assistant/library/LibraryDownloadTask;
.super Lcom/miui/gallery/pendingtask/base/PendingTask;
.source "LibraryDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/pendingtask/base/PendingTask",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDownloadFutures:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/threadpool/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadListener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

.field private mOriginalData:Lorg/json/JSONObject;

.field private mOriginalType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTask;-><init>(I)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mDownloadFutures:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask$1;-><init>(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)V

    iput-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mDownloadListener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mDownloadFutures:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mOriginalType:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/assistant/library/LibraryDownloadTask;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mOriginalData:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic parseData([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->parseData([B)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public parseData([B)Lorg/json/JSONObject;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic process(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->process(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public process(Lorg/json/JSONObject;)Z
    .locals 13
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 80
    if-eqz p1, :cond_1

    .line 82
    :try_start_0
    const-string v5, "originalType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mOriginalType:I

    .line 83
    const-string v5, "originalData"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mOriginalData:Lorg/json/JSONObject;

    .line 84
    const-string v5, "libraryIds"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v7, [J

    invoke-static {v5, v7}, Lcom/miui/gallery/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 85
    .local v4, "libraryIds":[J
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 86
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-wide v2, v4, v5

    .line 87
    .local v2, "libraryId":J
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/miui/gallery/assistant/library/LibraryManager;->getLibrarySync(J)Lcom/miui/gallery/assistant/library/Library;

    move-result-object v1

    .line 88
    .local v1, "library":Lcom/miui/gallery/assistant/library/Library;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/assistant/library/Library;->getLibraryStatus()Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    move-result-object v8

    sget-object v9, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    if-ne v8, v9, :cond_0

    .line 89
    iget-object v8, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mDownloadFutures:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 90
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->mDownloadListener:Lcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;

    invoke-virtual {v10, v1, v11, v12}, Lcom/miui/gallery/assistant/library/LibraryManager;->downloadLibrary(Lcom/miui/gallery/assistant/library/Library;ZLcom/miui/gallery/assistant/library/LibraryManager$DownloadListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v10

    .line 89
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "library":Lcom/miui/gallery/assistant/library/Library;
    .end local v2    # "libraryId":J
    .end local v4    # "libraryIds":[J
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "LibraryDownloadTask"

    invoke-static {v5, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v6
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public requireDeviceIdle()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic wrapData(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;->wrapData(Lorg/json/JSONObject;)[B

    move-result-object v0

    return-object v0
.end method

.method public wrapData(Lorg/json/JSONObject;)[B
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

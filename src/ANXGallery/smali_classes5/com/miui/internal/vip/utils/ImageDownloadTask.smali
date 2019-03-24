.class public Lcom/miui/internal/vip/utils/ImageDownloadTask;
.super Lmiui/util/async/tasks/HttpTask;
.source "ImageDownloadTask.java"

# interfaces
.implements Lmiui/util/async/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/tasks/HttpTask<",
        "Ljava/io/File;",
        ">;",
        "Lmiui/util/async/Cacheable;"
    }
.end annotation


# static fields
.field static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field static final DELAY:J

.field static final RETRY_TIMES:I = 0x3


# instance fields
.field final mSavePath:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;

.field mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->DELAY:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "savePath"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lmiui/util/async/tasks/HttpTask;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mUrl:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private static checkIfDownloadSuccess(Ljava/io/File;J)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "length"    # J

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 85
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 87
    .local v1, "fileLength":J
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 88
    .local v3, "deleted":Z
    const-string v4, "ImageDownloadTask, file is corrupted, file.length = %d, deleted = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 89
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    .line 88
    invoke-static {v4, v5}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const/4 v0, 0x0

    .line 92
    .end local v1    # "fileLength":J
    .end local v3    # "deleted":Z
    :cond_1
    return v0
.end method


# virtual methods
.method public doLoad()Ljava/io/File;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "retryTimes":I
    const/4 v1, 0x0

    move v2, v0

    move-object v0, v1

    .line 50
    .local v0, "file":Ljava/io/File;
    .local v2, "retryTimes":I
    :goto_0
    if-nez v0, :cond_3

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 51
    if-lez v2, :cond_0

    .line 52
    sget-wide v4, Lcom/miui/internal/vip/utils/ImageDownloadTask;->DELAY:J

    int-to-long v6, v2

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 54
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    iget-object v4, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->request()Lmiui/net/http/HttpResponse;

    move-result-object v4

    .line 59
    .local v4, "response":Lmiui/net/http/HttpResponse;
    invoke-interface {v4}, Lmiui/net/http/HttpResponse;->getContentLength()J

    move-result-wide v7

    .line 60
    .local v7, "length":J
    invoke-interface {v4}, Lmiui/net/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v5

    .line 61
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "content-length"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 62
    .local v9, "contentLength":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    .line 63
    invoke-interface {v4}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v0}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v10

    .line 64
    .local v10, "isCopySuccess":Z
    const-string v11, "ImageDownloadTask, %s, isCopySuccess = %s, file.exists = %s, length = %d, file.length = %d, content-length: %s"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mUrl:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 65
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v12, v3

    const/4 v3, 0x5

    aput-object v9, v12, v3

    .line 64
    invoke-static {v11, v12}, Lcom/miui/internal/vip/utils/Utils;->logI(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {v0, v7, v8}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->checkIfDownloadSuccess(Ljava/io/File;J)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    move-object v0, v3

    .line 67
    invoke-interface {v4}, Lmiui/net/http/HttpResponse;->release()V

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .end local v4    # "response":Lmiui/net/http/HttpResponse;
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "length":J
    .end local v9    # "contentLength":Ljava/lang/String;
    .end local v10    # "isCopySuccess":Z
    goto/16 :goto_0

    .line 70
    :cond_3
    :goto_2
    return-object v0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->doLoad()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public isWaitNetwork()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mWaitNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

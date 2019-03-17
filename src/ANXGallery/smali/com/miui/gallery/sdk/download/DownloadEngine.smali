.class Lcom/miui/gallery/sdk/download/DownloadEngine;
.super Ljava/lang/Object;
.source "DownloadEngine.java"


# static fields
.field private static final sDownloaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/sdk/download/DownloadType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDownloaders:[Lcom/miui/gallery/sdk/download/downloader/IDownloader;

.field private static final sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

.field private static final sExecutorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/sdk/download/DownloadType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mDefaultDownloadOptions:Lcom/miui/gallery/sdk/download/DownloadOptions;

.field private final mUriLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    sput-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    .line 36
    new-array v0, v5, [Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    sput-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaders:[Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_FORCE:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN_BATCH:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;-><init>()V

    new-instance v1, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;

    invoke-direct {v1}, Lcom/miui/gallery/sdk/download/adapter/BaseUriAdapter;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setUriAdapter(Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/DownloadEngine;->mDefaultDownloadOptions:Lcom/miui/gallery/sdk/download/DownloadOptions;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/DownloadEngine;->mUriLocks:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private static createDownloader(I)Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 132
    packed-switch p0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/sdk/download/downloader/MicroThumbnailDownloader;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/downloader/MicroThumbnailDownloader;-><init>()V

    .line 138
    :goto_0
    return-object v0

    .line 136
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/sdk/download/downloader/ThumbnailDownloader;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/downloader/ThumbnailDownloader;-><init>()V

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/downloader/OriginDownloader;-><init>()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createExecutor(I)Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;
    .locals 5
    .param p0, "type"    # I

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 155
    packed-switch p0, :pswitch_data_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate executor type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_0
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    invoke-direct {v0, v3, v4}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;-><init>(II)V

    .line 163
    :goto_0
    return-object v0

    .line 159
    :pswitch_1
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    invoke-direct {v0, v2, v4}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;-><init>(II)V

    goto :goto_0

    .line 161
    :pswitch_2
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;

    invoke-direct {v0, v2, v1}, Lcom/miui/gallery/sdk/download/executor/SingleThreadExecutor;-><init>(II)V

    goto :goto_0

    .line 163
    :pswitch_3
    new-instance v0, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;

    invoke-direct {v0, v3, v1}, Lcom/miui/gallery/sdk/download/executor/ThreadPoolExecutor;-><init>(II)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private generateLockKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 78
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadEngine$1;->$SwitchMap$com$miui$gallery$sdk$download$DownloadType:[I

    invoke-virtual {p2}, Lcom/miui/gallery/sdk/download/DownloadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-static {p1, p2}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getExecutor(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;
    .locals 4
    .param p0, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 145
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutorsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, "type":I
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    monitor-enter v2

    .line 147
    :try_start_0
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 148
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    invoke-static {v0}, Lcom/miui/gallery/sdk/download/DownloadEngine;->createExecutor(I)Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    move-result-object v3

    aput-object v3, v1, v0

    .line 150
    :cond_0
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    aget-object v1, v1, v0

    monitor-exit v2

    return-object v1

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getExecutor(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->cancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v0

    return v0
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 111
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sExecutors:[Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->cancelAll()V

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public cancelAll(Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 1
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getExecutor(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->cancelAll()V

    .line 107
    return-void
.end method

.method public contains(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getExecutor(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->contains(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Z

    move-result v0

    return v0
.end method

.method public download(Lcom/miui/gallery/sdk/download/assist/DownloadItem;ZZ)V
    .locals 2
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .param p2, "atFirst"    # Z
    .param p3, "interruptExecuting"    # Z

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid download item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/sdk/download/DownloadEngine;->getExecutor(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/sdk/download/executor/AbsDownloadExecutor;->download(Lcom/miui/gallery/sdk/download/assist/DownloadItem;ZZ)V

    .line 75
    return-void
.end method

.method public getDownloader(Lcom/miui/gallery/sdk/download/DownloadType;)Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    .locals 4
    .param p1, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 122
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 123
    .local v0, "index":I
    sget-object v2, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaders:[Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    monitor-enter v2

    .line 124
    :try_start_0
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaders:[Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaders:[Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    invoke-static {v0}, Lcom/miui/gallery/sdk/download/DownloadEngine;->createDownloader(I)Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    move-result-object v3

    aput-object v3, v1, v0

    .line 127
    :cond_0
    sget-object v1, Lcom/miui/gallery/sdk/download/DownloadEngine;->sDownloaders:[Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    aget-object v1, v1, v0

    monitor-exit v2

    return-object v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLockForUri(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 90
    iget-object v3, p0, Lcom/miui/gallery/sdk/download/DownloadEngine;->mUriLocks:Ljava/util/Map;

    monitor-enter v3

    .line 91
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/sdk/download/DownloadEngine;->generateLockKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/DownloadEngine;->mUriLocks:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-nez v1, :cond_0

    .line 94
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 95
    .restart local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v2, p0, Lcom/miui/gallery/sdk/download/DownloadEngine;->mUriLocks:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    monitor-exit v3

    return-object v1

    .line 98
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

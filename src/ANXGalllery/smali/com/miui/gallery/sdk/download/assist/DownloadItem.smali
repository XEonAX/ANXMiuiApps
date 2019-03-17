.class public Lcom/miui/gallery/sdk/download/assist/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    }
.end annotation


# instance fields
.field private final mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

.field private final mDownloader:Lcom/miui/gallery/sdk/download/downloader/IDownloader;

.field private final mManual:Z

.field private final mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

.field private final mRequireCharging:Z

.field private final mRequireDeviceStorage:Z

.field private final mRequirePower:Z

.field private final mRequireWLAN:Z

.field private mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private final mUri:Landroid/net/Uri;

.field private final mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

.field private final mUriLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$000(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUri:Landroid/net/Uri;

    .line 36
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$100(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    .line 37
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$200(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$300(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 39
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$400(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    .line 40
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$500(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    .line 41
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$600(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mDownloader:Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    .line 43
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$700(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequirePower:Z

    .line 44
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$800(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequireCharging:Z

    .line 45
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$900(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequireWLAN:Z

    .line 46
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$1000(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequireDeviceStorage:Z

    .line 47
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->access$1100(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mManual:Z

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;Lcom/miui/gallery/sdk/download/assist/DownloadItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;
    .param p2, "x1"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;-><init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 51
    new-instance v0, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;->cloneFrom(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;-><init>(Lcom/miui/gallery/sdk/download/assist/DownloadItem$Builder;)V

    .line 52
    return-void
.end method

.method public static callbackCancel(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v0

    .line 269
    .local v0, "listener":Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/sdk/download/listener/DownloadListener;->onDownloadCancel(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 272
    :cond_0
    return-void
.end method

.method public static callbackError(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .param p1, "reason"    # Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v0

    .line 262
    .local v0, "listener":Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/gallery/sdk/download/listener/DownloadListener;->onDownloadFail(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;)V

    .line 265
    :cond_0
    return-void
.end method

.method public static callbackProgress(Lcom/miui/gallery/sdk/download/assist/DownloadItem;JJ)V
    .locals 9
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .param p1, "cur"    # J
    .param p3, "total"    # J

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getProgressListener()Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    move-result-object v1

    .line 276
    .local v1, "listener":Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;->onDownloadProgress(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;JJ)V

    .line 279
    :cond_0
    return-void
.end method

.method public static callbackStarted(Lcom/miui/gallery/sdk/download/assist/DownloadItem;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v0

    .line 248
    .local v0, "listener":Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/sdk/download/listener/DownloadListener;->onDownloadStarted(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 251
    :cond_0
    return-void
.end method

.method public static callbackSuccess(Lcom/miui/gallery/sdk/download/assist/DownloadItem;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V
    .locals 3
    .param p0, "item"    # Lcom/miui/gallery/sdk/download/assist/DownloadItem;
    .param p1, "downloaded"    # Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    move-result-object v0

    .line 255
    .local v0, "listener":Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/gallery/sdk/download/listener/DownloadListener;->onDownloadSuccess(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/assist/DownloadedItem;)V

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public compareAnsSetStatus(II)Z
    .locals 1
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method public getDownloadListener()Lcom/miui/gallery/sdk/download/listener/DownloadListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mDownloadListener:Lcom/miui/gallery/sdk/download/listener/DownloadListener;

    return-object v0
.end method

.method public getDownloader()Lcom/miui/gallery/sdk/download/downloader/IDownloader;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mDownloader:Lcom/miui/gallery/sdk/download/downloader/IDownloader;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v0, v1}, Lcom/miui/gallery/sdk/download/util/DownloadUtil;->generateKey(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 112
    const/16 v0, 0x3e8

    .line 113
    .local v0, "base":I
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isManual()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    add-int/lit8 v0, v0, -0x1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireWLAN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    add-int/lit8 v0, v0, -0x3

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequirePower()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    add-int/lit8 v0, v0, -0x5

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireDeviceStorage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    add-int/lit8 v0, v0, -0xb

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    add-int/lit8 v0, v0, -0x15

    .line 128
    :cond_4
    return v0
.end method

.method public getProgressListener()Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mProgressListener:Lcom/miui/gallery/sdk/download/listener/DownloadProgressListener;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriAdapter()Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    return-object v0
.end method

.method public getUriLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public isManual()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mManual:Z

    return v0
.end method

.method public isRequireCharging()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequireCharging:Z

    return v0
.end method

.method public isRequireDeviceStorage()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequireDeviceStorage:Z

    return v0
.end method

.method public isRequirePower()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequirePower:Z

    return v0
.end method

.method public isRequireWLAN()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mRequireWLAN:Z

    return v0
.end method

.method public isStatusOk()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "uri[%s], type[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/gallery/sdk/download/assist/DownloadItem;->mType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-virtual {v4}, Lcom/miui/gallery/sdk/download/DownloadType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

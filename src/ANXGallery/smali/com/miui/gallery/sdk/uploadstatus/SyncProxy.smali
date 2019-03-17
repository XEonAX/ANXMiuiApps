.class public Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;
.super Ljava/lang/Object;
.source "SyncProxy.java"


# static fields
.field private static sInstance:Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUploadStatusProxy:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

.field private mUriAdapter:Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->sInstance:Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;-><init>()V

    sput-object v0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->sInstance:Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;

    .line 17
    :cond_0
    sget-object v0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->sInstance:Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getUploadStatusProxy()Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->mUploadStatusProxy:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    invoke-direct {v0}, Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->mUploadStatusProxy:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->mUploadStatusProxy:Lcom/miui/gallery/sdk/uploadstatus/UploadStatusProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUriAdapter()Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->mUriAdapter:Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uriAdapter"    # Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/miui/gallery/sdk/uploadstatus/SyncProxy;->mUriAdapter:Lcom/miui/gallery/sdk/uploadstatus/UriAdapter;

    .line 33
    return-void
.end method

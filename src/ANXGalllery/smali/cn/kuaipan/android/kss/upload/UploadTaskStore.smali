.class public Lcn/kuaipan/android/kss/upload/UploadTaskStore;
.super Ljava/lang/Object;
.source "UploadTaskStore.java"

# interfaces
.implements Lcn/kuaipan/android/kss/KssDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    }
.end annotation


# static fields
.field private static volatile sLooper:Landroid/os/Looper;


# instance fields
.field private final mAccessor:Lcn/kuaipan/android/utils/SyncAccessor;

.field private final mDBHelper:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

.field private final mDataFactory:Lcn/kuaipan/android/kss/IDataFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/kuaipan/android/kss/IDataFactory;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataFactory"    # Lcn/kuaipan/android/kss/IDataFactory;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;

    invoke-static {}, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->getCommonLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$1;-><init>(Lcn/kuaipan/android/kss/upload/UploadTaskStore;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mAccessor:Lcn/kuaipan/android/utils/SyncAccessor;

    .line 33
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 34
    :cond_0
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    const v1, 0x7a122

    const-string v2, "context and dataFactory can\'t be null"

    invoke-direct {v0, v1, v2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    invoke-static {p1}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->getInstance(Landroid/content/Context;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mDBHelper:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    .line 39
    iput-object p2, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mDataFactory:Lcn/kuaipan/android/kss/IDataFactory;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mDBHelper:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuaipan/android/kss/upload/UploadTaskStore;)Lcn/kuaipan/android/kss/IDataFactory;
    .locals 1
    .param p0, "x0"    # Lcn/kuaipan/android/kss/upload/UploadTaskStore;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mDataFactory:Lcn/kuaipan/android/kss/IDataFactory;

    return-object v0
.end method

.method private static getCommonLooper()Landroid/os/Looper;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 247
    sget-object v1, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->sLooper:Landroid/os/Looper;

    .line 248
    .local v1, "result":Landroid/os/Looper;
    if-nez v1, :cond_6

    move-object v2, v3

    .line 249
    .local v2, "t":Ljava/lang/Thread;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 252
    :cond_1
    if-nez v1, :cond_5

    .line 253
    const-class v4, Lcn/kuaipan/android/kss/KssMaster;

    monitor-enter v4

    .line 254
    :try_start_0
    sget-object v1, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->sLooper:Landroid/os/Looper;

    .line 255
    if-nez v1, :cond_7

    move-object v2, v3

    .line 256
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 257
    :cond_2
    const/4 v1, 0x0

    .line 259
    :cond_3
    if-nez v1, :cond_4

    .line 260
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "KssMaster - UploadRecorder"

    const/16 v5, 0xa

    invoke-direct {v0, v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 262
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 263
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 265
    .end local v0    # "ht":Landroid/os/HandlerThread;
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_5
    return-object v1

    .line 248
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_6
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    goto :goto_0

    .line 255
    .restart local v2    # "t":Ljava/lang/Thread;
    :cond_7
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public getUploadInfo(I)Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .locals 5
    .param p1, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mAccessor:Lcn/kuaipan/android/utils/SyncAccessor;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/utils/SyncAccessor;->access(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/kss/upload/KssUploadInfo;

    return-object v0
.end method

.method public getUploadPos(I)Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;
    .locals 5
    .param p1, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mAccessor:Lcn/kuaipan/android/utils/SyncAccessor;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/kuaipan/android/utils/SyncAccessor;->access(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    return-object v0
.end method

.method public putUploadInfo(ILcn/kuaipan/android/kss/upload/KssUploadInfo;)V
    .locals 5
    .param p1, "taskHash"    # I
    .param p2, "uploadInfo"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 44
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mAccessor:Lcn/kuaipan/android/utils/SyncAccessor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    invoke-direct {v3}, Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcn/kuaipan/android/utils/SyncAccessor;->access(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public removeUploadInfo(I)V
    .locals 5
    .param p1, "taskHash"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mAccessor:Lcn/kuaipan/android/utils/SyncAccessor;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcn/kuaipan/android/utils/SyncAccessor;->access(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public updateUploadInfo(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V
    .locals 1
    .param p1, "taskHash"    # I
    .param p2, "uploadInfo"    # Lcn/kuaipan/android/kss/upload/KssUploadInfo;
    .param p3, "uploadChunkInfoPersist"    # Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadTaskStore;->mDBHelper:Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/kuaipan/android/kss/upload/UploadTaskStore$DBHelper;->update(ILcn/kuaipan/android/kss/upload/KssUploadInfo;Lcn/kuaipan/android/kss/upload/UploadChunkInfoPersist;)V

    .line 74
    return-void
.end method

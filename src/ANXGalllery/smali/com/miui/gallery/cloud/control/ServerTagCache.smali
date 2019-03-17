.class public Lcom/miui/gallery/cloud/control/ServerTagCache;
.super Ljava/lang/Object;
.source "ServerTagCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/control/ServerTagCache$Singleton;
    }
.end annotation


# static fields
.field private static final MAX_CAPACITY:I


# instance fields
.field private final mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mPushTags:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSyncStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SyncStrategy;->getMaxTempOperationServerTagCapacity()I

    move-result v0

    sput v0, Lcom/miui/gallery/cloud/control/ServerTagCache;->MAX_CAPACITY:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mPushTags:Ljava/util/LinkedList;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cloud/control/ServerTagCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cloud/control/ServerTagCache$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/gallery/cloud/control/ServerTagCache;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/gallery/cloud/control/ServerTagCache;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/miui/gallery/cloud/control/ServerTagCache$Singleton;->access$100()Lcom/miui/gallery/cloud/control/ServerTagCache;

    move-result-object v0

    return-object v0
.end method

.method private lock(Z)V
    .locals 1
    .param p1, "write"    # Z

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_0
.end method

.method private trim()V
    .locals 2

    .prologue
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mPushTags:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v1, Lcom/miui/gallery/cloud/control/ServerTagCache;->MAX_CAPACITY:I

    if-le v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mPushTags:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private unlock(Z)V
    .locals 1
    .param p1, "write"    # Z

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 3
    .param p1, "serverTag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/control/ServerTagCache;->lock(Z)V

    .line 65
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "ServerTagCache"

    const-string v2, "add server tag: %s"

    invoke-static {v1, v2, p1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mPushTags:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/miui/gallery/cloud/control/ServerTagCache;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/control/ServerTagCache;->unlock(Z)V

    :goto_0
    return v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/control/ServerTagCache;->unlock(Z)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/control/ServerTagCache;->unlock(Z)V

    throw v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serverTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/control/ServerTagCache;->lock(Z)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/control/ServerTagCache;->mPushTags:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 58
    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/control/ServerTagCache;->unlock(Z)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/miui/gallery/cloud/control/ServerTagCache;->unlock(Z)V

    throw v0
.end method

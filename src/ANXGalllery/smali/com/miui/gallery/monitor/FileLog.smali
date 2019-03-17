.class public Lcom/miui/gallery/monitor/FileLog;
.super Ljava/lang/Object;
.source "FileLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/monitor/FileLog$LogTask;
    }
.end annotation


# instance fields
.field private mActiveCache:I

.field private final mCache0:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTask:Lcom/miui/gallery/monitor/FileLog$LogTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/monitor/FileLog;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "logPath"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/miui/gallery/monitor/FileLog$LogTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/monitor/FileLog$LogTask;-><init>(Lcom/miui/gallery/monitor/FileLog;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mTask:Lcom/miui/gallery/monitor/FileLog$LogTask;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mCache0:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mCache1:Ljava/util/LinkedList;

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mTask:Lcom/miui/gallery/monitor/FileLog$LogTask;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/monitor/FileLog$LogTask;->setPriority(I)V

    .line 33
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mTask:Lcom/miui/gallery/monitor/FileLog$LogTask;

    invoke-virtual {v0}, Lcom/miui/gallery/monitor/FileLog$LogTask;->start()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/monitor/FileLog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/monitor/FileLog;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/monitor/FileLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/monitor/FileLog;

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/gallery/monitor/FileLog;->mActiveCache:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/monitor/FileLog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/monitor/FileLog;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/miui/gallery/monitor/FileLog;->mActiveCache:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/monitor/FileLog;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/monitor/FileLog;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mCache0:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/monitor/FileLog;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/monitor/FileLog;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mCache1:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 39
    .local v2, "start":J
    iget-object v4, p0, Lcom/miui/gallery/monitor/FileLog;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 40
    :try_start_0
    iget v1, p0, Lcom/miui/gallery/monitor/FileLog;->mActiveCache:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mCache0:Ljava/util/LinkedList;

    .line 41
    .local v0, "activeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/monitor/FileLog;->mTask:Lcom/miui/gallery/monitor/FileLog$LogTask;

    invoke-virtual {v1}, Lcom/miui/gallery/monitor/FileLog$LogTask;->active()V

    .line 44
    const-string v1, "FileLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "log cost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 40
    .end local v0    # "activeCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/monitor/FileLog;->mCache1:Ljava/util/LinkedList;

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

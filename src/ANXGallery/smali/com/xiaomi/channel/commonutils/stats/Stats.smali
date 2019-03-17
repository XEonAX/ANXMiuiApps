.class public Lcom/xiaomi/channel/commonutils/stats/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/stats/Stats$Item;
    }
.end annotation


# instance fields
.field private statsQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/xiaomi/channel/commonutils/stats/Stats$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/stats/Stats;->statsQueue:Ljava/util/LinkedList;

    return-void
.end method

.method private checkSize()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/stats/Stats;->statsQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/stats/Stats;->statsQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method

.method public static instance()Lcom/xiaomi/channel/commonutils/stats/Stats;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;->access$000()Lcom/xiaomi/channel/commonutils/stats/Stats;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/stats/Stats;->statsQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStats()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/xiaomi/channel/commonutils/stats/Stats$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/stats/Stats;->statsQueue:Ljava/util/LinkedList;

    .line 68
    .local v0, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaomi/channel/commonutils/stats/Stats$Item;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/channel/commonutils/stats/Stats;->statsQueue:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-object v0

    .line 67
    .end local v0    # "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaomi/channel/commonutils/stats/Stats$Item;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stat(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/stats/Stats;->statsQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/xiaomi/channel/commonutils/stats/Stats$Item;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/stats/Stats;->checkSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

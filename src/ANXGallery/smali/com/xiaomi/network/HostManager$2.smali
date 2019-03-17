.class Lcom/xiaomi/network/HostManager$2;
.super Lcom/xiaomi/network/Fallback;
.source "HostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;Z)Lcom/xiaomi/network/Fallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field local:Lcom/xiaomi/network/Fallback;

.field final synthetic this$0:Lcom/xiaomi/network/HostManager;

.field final synthetic val$localFB:Lcom/xiaomi/network/Fallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/network/HostManager;Ljava/lang/String;Lcom/xiaomi/network/Fallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaomi/network/HostManager;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/xiaomi/network/HostManager$2;->this$0:Lcom/xiaomi/network/HostManager;

    iput-object p3, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    invoke-direct {p0, p2}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    iput-object v0, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    .line 270
    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->val$localFB:Lcom/xiaomi/network/Fallback;

    iget-object v0, v0, Lcom/xiaomi/network/Fallback;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/network/HostManager$2;->ip:Ljava/lang/String;

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized accessHost(Ljava/lang/String;Lcom/xiaomi/network/AccessHistory;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ah"    # Lcom/xiaomi/network/AccessHistory;

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/network/Fallback;->accessHost(Ljava/lang/String;Lcom/xiaomi/network/AccessHistory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHosts(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "usePort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    if-eqz v4, :cond_0

    .line 287
    iget-object v4, p0, Lcom/xiaomi/network/HostManager$2;->local:Lcom/xiaomi/network/Fallback;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    :cond_0
    sget-object v5, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    sget-object v4, Lcom/xiaomi/network/HostManager;->sReservedHosts:Ljava/util/Map;

    iget-object v6, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/Fallback;

    .line 291
    .local v2, "reserved":Lcom/xiaomi/network/Fallback;
    if-eqz v2, :cond_3

    .line 292
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 296
    .local v3, "reservedHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 298
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "reserved":Lcom/xiaomi/network/Fallback;
    .end local v3    # "reservedHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    .end local v1    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 301
    .restart local v1    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "reserved":Lcom/xiaomi/network/Fallback;
    .restart local v3    # "reservedHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    iget-object v4, p0, Lcom/xiaomi/network/HostManager$2;->host:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v3    # "reservedHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    monitor-exit p0

    return-object v1
.end method

.method public isEffective()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

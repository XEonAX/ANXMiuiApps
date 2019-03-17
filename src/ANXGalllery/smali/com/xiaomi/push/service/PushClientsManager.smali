.class public Lcom/xiaomi/push/service/PushClientsManager;
.super Ljava/lang/Object;
.source "PushClientsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;,
        Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;,
        Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/push/service/PushClientsManager;


# instance fields
.field private clientChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager;->clientChangeListeners:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xiaomi/push/service/PushClientsManager;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/xiaomi/push/service/PushClientsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager;->sInstance:Lcom/xiaomi/push/service/PushClientsManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/xiaomi/push/service/PushClientsManager;

    invoke-direct {v0}, Lcom/xiaomi/push/service/PushClientsManager;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/PushClientsManager;->sInstance:Lcom/xiaomi/push/service/PushClientsManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager;->sInstance:Lcom/xiaomi/push/service/PushClientsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSmtpLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "smtp"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 p1, 0x0

    .line 185
    .end local p1    # "smtp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 180
    .restart local p1    # "smtp":Ljava/lang/String;
    :cond_1
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "iAt":I
    if-lez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addActiveClient(Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 56
    .local v1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .restart local v1    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    iget-object v2, p1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->userId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/PushClientsManager;->getSmtpLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager;->clientChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;

    .line 63
    .local v0, "client":Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;
    invoke-interface {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;->onChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "client":Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;
    .end local v1    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 65
    .restart local v1    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addClientChangeListener(Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;)V
    .locals 1
    .param p1, "clientChange"    # Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager;->clientChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deactivateAllClientByChid(Ljava/lang/String;)V
    .locals 5
    .param p1, "chid"    # Ljava/lang/String;

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 91
    .local v2, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 93
    .local v1, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-virtual {v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->unwatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    .end local v1    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v2    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 95
    .restart local v2    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 96
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager;->clientChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;

    .line 99
    .local v0, "client":Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;
    invoke-interface {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;->onChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 101
    .end local v0    # "client":Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deactivateClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 74
    .local v2, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-eqz v2, :cond_1

    .line 75
    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/PushClientsManager;->getSmtpLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 76
    .local v1, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->unwatch()V

    .line 79
    :cond_0
    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/PushClientsManager;->getSmtpLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v1    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :cond_1
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager;->clientChangeListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;

    .line 85
    .local v0, "client":Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;
    invoke-interface {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;->onChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    .end local v0    # "client":Lcom/xiaomi/push/service/PushClientsManager$ClientChangeListener;
    .end local v2    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 87
    .restart local v2    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getActiveClientCount()I
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
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

.method public declared-synchronized getAllClientLoginInfoByChid(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "chid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllClients()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    iget-object v2, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 118
    .local v1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    .end local v1    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 120
    .restart local v0    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getClientLoginInfoByChidAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .locals 2
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v0, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    if-nez v0, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 135
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/PushClientsManager;->getSmtpLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyConnectionFailed(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 162
    .local v6, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 163
    .local v0, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    .end local v0    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v6    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 167
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized queryChannelIdByPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 106
    .local v1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 107
    .local v0, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    iget-object v5, v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->chid:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    .end local v0    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v1    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 111
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized removeActiveClients()V
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/PushClientsManager;->getAllClients()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 152
    .local v0, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    invoke-virtual {v0}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->unwatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    .end local v0    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 154
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeAllClientChangeListeners()V
    .locals 1

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/PushClientsManager;->clientChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetAllClients(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # I

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/PushClientsManager;->mActiveClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 140
    .local v6, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;

    .line 141
    .local v0, "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    sget-object v1, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->unbind:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;->setStatus(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "info":Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;
    .end local v6    # "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaomi/push/service/PushClientsManager$ClientLoginInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 144
    :cond_1
    monitor-exit p0

    return-void
.end method

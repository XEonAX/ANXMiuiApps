.class Lcom/xiaomi/network/Fallbacks;
.super Ljava/lang/Object;
.source "Fallbacks.java"


# instance fields
.field private host:Ljava/lang/String;

.field private final mFallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/network/Fallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the host is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/network/Fallbacks;->host:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized addFallback(Lcom/xiaomi/network/Fallback;)V
    .locals 2
    .param p1, "fb"    # Lcom/xiaomi/network/Fallback;

    .prologue
    .line 41
    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    .local v0, "index":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/network/Fallback;

    invoke-virtual {v1, p1}, Lcom/xiaomi/network/Fallback;->match(Lcom/xiaomi/network/Fallback;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    monitor-exit p0

    return-void

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/Fallbacks;
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    const-string v2, "host"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallbacks;->host:Ljava/lang/String;

    .line 129
    const-string v2, "fbs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 130
    .local v1, "ja":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    new-instance v3, Lcom/xiaomi/network/Fallback;

    iget-object v4, p0, Lcom/xiaomi/network/Fallbacks;->host:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/xiaomi/network/Fallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/network/Fallback;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/Fallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    monitor-exit p0

    return-object p0

    .line 128
    .end local v0    # "i":I
    .end local v1    # "ja":Lorg/json/JSONArray;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFallback()Lcom/xiaomi/network/Fallback;
    .locals 4

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 66
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallback;

    .line 67
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->match()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->getISP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/network/HostManager;->setCurrentISP(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 65
    .restart local v0    # "fb":Lcom/xiaomi/network/Fallback;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 73
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/network/Fallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xiaomi/network/Fallbacks;->host:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized purge(Z)V
    .locals 3
    .param p1, "optimistic"    # Z

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 98
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallback;

    .line 99
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->isEffective()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 97
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 109
    .restart local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "host"

    iget-object v4, p0, Lcom/xiaomi/network/Fallbacks;->host:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 120
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallback;

    .line 121
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    invoke-virtual {v0}, Lcom/xiaomi/network/Fallback;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 123
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v3, "fbs"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lcom/xiaomi/network/Fallbacks;->mFallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/Fallback;

    .line 82
    .local v0, "fb":Lcom/xiaomi/network/Fallback;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    .end local v0    # "fb":Lcom/xiaomi/network/Fallback;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

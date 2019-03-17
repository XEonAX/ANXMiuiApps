.class public Lcom/xiaomi/network/Fallback;
.super Ljava/lang/Object;
.source "Fallback.java"


# instance fields
.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field private effectDuration:J

.field private fallbackHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/network/WeightedHost;",
            ">;"
        }
    .end annotation
.end field

.field public host:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public isp:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mISP:Ljava/lang/String;

.field private mPercent:D

.field public networkLabel:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field private timestamp:J

.field protected xforward:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    .line 38
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/xiaomi/network/Fallback;->mPercent:D

    .line 39
    const-string v0, "s.mi1.cc"

    iput-object v0, p0, Lcom/xiaomi/network/Fallback;->mDomain:Ljava/lang/String;

    .line 44
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the host is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/Fallback;->timestamp:J

    .line 52
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/network/WeightedHost;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lcom/xiaomi/network/HostManager;->getActiveNetworkLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/xiaomi/network/Fallback;->host:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private declared-synchronized deleteWeightedHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 338
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaomi/network/WeightedHost;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/network/WeightedHost;

    .line 340
    .local v1, "weightedHost":Lcom/xiaomi/network/WeightedHost;
    iget-object v2, v1, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 337
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaomi/network/WeightedHost;>;"
    .end local v1    # "weightedHost":Lcom/xiaomi/network/WeightedHost;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 344
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaomi/network/WeightedHost;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public accessHost(Ljava/lang/String;IJJLjava/lang/Exception;)V
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "cost"    # J
    .param p5, "size"    # J
    .param p7, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 164
    new-instance v0, Lcom/xiaomi/network/AccessHistory;

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/network/AccessHistory;-><init>(IJJLjava/lang/Exception;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/network/Fallback;->accessHost(Ljava/lang/String;Lcom/xiaomi/network/AccessHistory;)V

    .line 165
    return-void
.end method

.method public declared-synchronized accessHost(Ljava/lang/String;Lcom/xiaomi/network/AccessHistory;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ah"    # Lcom/xiaomi/network/AccessHistory;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/WeightedHost;

    .line 169
    .local v0, "weightHost":Lcom/xiaomi/network/WeightedHost;
    iget-object v2, v0, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v0, p2}, Lcom/xiaomi/network/WeightedHost;->addAccessHistory(Lcom/xiaomi/network/AccessHistory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0    # "weightHost":Lcom/xiaomi/network/WeightedHost;
    :cond_1
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized addHost(Lcom/xiaomi/network/WeightedHost;)V
    .locals 1
    .param p1, "weightedHost"    # Lcom/xiaomi/network/WeightedHost;

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/network/Fallback;->deleteWeightedHost(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/network/WeightedHost;

    invoke-direct {v0, p1}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/network/Fallback;->addHost(Lcom/xiaomi/network/WeightedHost;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPreferredHost([Ljava/lang/String;)V
    .locals 7
    .param p1, "hosts"    # [Ljava/lang/String;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 218
    array-length v6, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, p1, v5

    .line 219
    .local v0, "host":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/network/WeightedHost;

    iget-object v4, v4, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 218
    .restart local v0    # "host":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 226
    .end local v0    # "host":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 227
    .local v2, "maxWeight":I
    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/network/WeightedHost;

    .line 228
    .local v3, "wh":Lcom/xiaomi/network/WeightedHost;
    iget v5, v3, Lcom/xiaomi/network/WeightedHost;->weight:I

    if-le v5, v2, :cond_3

    .line 229
    iget v2, v3, Lcom/xiaomi/network/WeightedHost;->weight:I

    goto :goto_2

    .line 232
    .end local v3    # "wh":Lcom/xiaomi/network/WeightedHost;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 234
    new-instance v4, Lcom/xiaomi/network/WeightedHost;

    aget-object v5, p1, v1

    array-length v6, p1

    add-int/2addr v6, v2

    sub-int/2addr v6, v1

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lcom/xiaomi/network/Fallback;->addHost(Lcom/xiaomi/network/WeightedHost;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 236
    :cond_5
    monitor-exit p0

    return-void

    .line 217
    .end local v1    # "i":I
    .end local v2    # "maxWeight":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public failedHost(Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cost"    # J
    .param p4, "size"    # J
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 160
    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/network/Fallback;->accessHost(Ljava/lang/String;IJJLjava/lang/Exception;)V

    .line 161
    return-void
.end method

.method public failedUrl(Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cost"    # J
    .param p4, "size"    # J
    .param p6, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 152
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v7, "urlObj":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/Fallback;->failedHost(Ljava/lang/String;JJLjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v7    # "urlObj":Ljava/net/URL;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/Fallback;
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    const-string v2, "net"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    .line 318
    const-string/jumbo v2, "ttl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    .line 319
    const-string v2, "pct"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/network/Fallback;->mPercent:D

    .line 320
    const-string/jumbo v2, "ts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/network/Fallback;->timestamp:J

    .line 321
    const-string v2, "city"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->city:Ljava/lang/String;

    .line 322
    const-string v2, "prv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->province:Ljava/lang/String;

    .line 323
    const-string v2, "cty"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->country:Ljava/lang/String;

    .line 324
    const-string v2, "isp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->isp:Ljava/lang/String;

    .line 325
    const-string v2, "ip"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->ip:Ljava/lang/String;

    .line 326
    const-string v2, "host"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->host:Ljava/lang/String;

    .line 327
    const-string/jumbo v2, "xf"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/network/Fallback;->xforward:Ljava/lang/String;

    .line 329
    const-string v2, "fbs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 330
    .local v1, "ja":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 331
    new-instance v2, Lcom/xiaomi/network/WeightedHost;

    invoke-direct {v2}, Lcom/xiaomi/network/WeightedHost;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/network/WeightedHost;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/WeightedHost;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/network/Fallback;->addHost(Lcom/xiaomi/network/WeightedHost;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    monitor-exit p0

    return-object p0

    .line 317
    .end local v0    # "i":I
    .end local v1    # "ja":Lorg/json/JSONArray;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getHosts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

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
    const/4 v4, 0x0

    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Lcom/xiaomi/network/WeightedHost;

    .line 182
    .local v3, "wHosts":[Lcom/xiaomi/network/WeightedHost;
    iget-object v5, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v4

    .line 187
    .local v2, "wHost":Lcom/xiaomi/network/WeightedHost;
    if-eqz p1, :cond_0

    .line 188
    iget-object v6, v2, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v6, v2, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "pos":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 192
    iget-object v6, v2, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 181
    .end local v0    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "pos":I
    .end local v2    # "wHost":Lcom/xiaomi/network/WeightedHost;
    .end local v3    # "wHosts":[Lcom/xiaomi/network/WeightedHost;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 194
    .restart local v0    # "hosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "pos":I
    .restart local v2    # "wHost":Lcom/xiaomi/network/WeightedHost;
    .restart local v3    # "wHosts":[Lcom/xiaomi/network/WeightedHost;
    :cond_1
    :try_start_1
    iget-object v6, v2, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 198
    .end local v1    # "pos":I
    .end local v2    # "wHost":Lcom/xiaomi/network/WeightedHost;
    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getISP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->mISP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->mISP:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_0
    monitor-exit p0

    return-object v0

    .line 257
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->isp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "hardcode_isp"

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->isp:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->province:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->city:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->ip:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/Fallback;->mISP:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->mISP:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrls(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "the url is empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    .local v4, "urlObj":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "host":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaomi/network/Fallback;->host:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v5, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/xiaomi/network/Fallback;->getHosts(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 122
    .local v3, "orderHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "fallback":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v7

    invoke-static {v0, v7}, Lcom/xiaomi/network/Host;->parse(Ljava/lang/String;I)Lcom/xiaomi/network/Host;

    move-result-object v2

    .line 124
    .local v2, "hostObj":Lcom/xiaomi/network/Host;
    new-instance v7, Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/xiaomi/network/Host;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/xiaomi/network/Host;->getPort()I

    move-result v10

    .line 125
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0    # "fallback":Ljava/lang/String;
    .end local v2    # "hostObj":Lcom/xiaomi/network/Host;
    .end local v3    # "orderHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "the url is not supported by the fallback"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 127
    .restart local v3    # "orderHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v5
.end method

.method public isEffective()Z
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/network/Fallback;->timestamp:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isExpired()Z
    .locals 8

    .prologue
    .line 96
    const-wide/32 v0, 0x337f9800

    .line 97
    .local v0, "maxDuration":J
    iget-wide v4, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    .line 101
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    .local v2, "now":J
    iget-wide v4, p0, Lcom/xiaomi/network/Fallback;->timestamp:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    iget-wide v4, p0, Lcom/xiaomi/network/Fallback;->timestamp:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    const-string v5, "WIFI-"

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    .line 102
    :goto_0
    return v4

    .line 103
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public match()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/network/HostManager;->getActiveNetworkLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public match(Lcom/xiaomi/network/Fallback;)Z
    .locals 2
    .param p1, "fbs"    # Lcom/xiaomi/network/Fallback;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/xiaomi/network/Fallback;->mDomain:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setEffectiveDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the duration is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-wide p1, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    .line 87
    return-void
.end method

.method public setPercent(D)V
    .locals 1
    .param p1, "percent"    # D

    .prologue
    .line 292
    iput-wide p1, p0, Lcom/xiaomi/network/Fallback;->mPercent:D

    .line 293
    return-void
.end method

.method public succeedHost(Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cost"    # J
    .param p4, "size"    # J

    .prologue
    .line 147
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/network/Fallback;->accessHost(Ljava/lang/String;IJJLjava/lang/Exception;)V

    .line 148
    return-void
.end method

.method public succeedUrl(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cost"    # J
    .param p4, "size"    # J

    .prologue
    .line 136
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    .local v6, "urlObj":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/network/Fallback;->succeedHost(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v6    # "urlObj":Ljava/net/URL;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 297
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "net"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string/jumbo v3, "ttl"

    iget-wide v4, p0, Lcom/xiaomi/network/Fallback;->effectDuration:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    const-string v3, "pct"

    iget-wide v4, p0, Lcom/xiaomi/network/Fallback;->mPercent:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 300
    const-string/jumbo v3, "ts"

    iget-wide v4, p0, Lcom/xiaomi/network/Fallback;->timestamp:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 301
    const-string v3, "city"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->city:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v3, "prv"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->province:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v3, "cty"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->country:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v3, "isp"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->isp:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v3, "ip"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->ip:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v3, "host"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->host:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string/jumbo v3, "xf"

    iget-object v4, p0, Lcom/xiaomi/network/Fallback;->xforward:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 309
    .local v0, "ja":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/network/WeightedHost;

    .line 310
    .local v2, "wh":Lcom/xiaomi/network/WeightedHost;
    invoke-virtual {v2}, Lcom/xiaomi/network/WeightedHost;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    .end local v0    # "ja":Lorg/json/JSONArray;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "wh":Lcom/xiaomi/network/WeightedHost;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 312
    .restart local v0    # "ja":Lorg/json/JSONArray;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v3, "fbs"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    monitor-exit p0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->networkLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/xiaomi/network/Fallback;->getISP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v2, p0, Lcom/xiaomi/network/Fallback;->fallbackHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/network/WeightedHost;

    .line 245
    .local v1, "wh":Lcom/xiaomi/network/WeightedHost;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1}, Lcom/xiaomi/network/WeightedHost;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    .end local v1    # "wh":Lcom/xiaomi/network/WeightedHost;
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

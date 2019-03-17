.class Lcom/xiaomi/network/WeightedHost;
.super Ljava/lang/Object;
.source "WeightedHost.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/network/WeightedHost;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessHistories:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/xiaomi/network/AccessHistory;",
            ">;"
        }
    .end annotation
.end field

.field host:Ljava/lang/String;

.field private touchedTime:J

.field protected weight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/network/WeightedHost;-><init>(Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "weight"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/network/WeightedHost;->touchedTime:J

    .line 42
    iput-object p1, p0, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    .line 44
    return-void
.end method


# virtual methods
.method protected declared-synchronized addAccessHistory(Lcom/xiaomi/network/AccessHistory;)V
    .locals 6
    .param p1, "ah"    # Lcom/xiaomi/network/AccessHistory;

    .prologue
    .line 56
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/network/AccessHistory;->getWeight()I

    move-result v2

    .line 60
    .local v2, "newWeight":I
    if-lez v2, :cond_1

    .line 61
    iget v4, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    invoke-virtual {p1}, Lcom/xiaomi/network/AccessHistory;->getWeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    .line 74
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_0

    .line 75
    iget-object v4, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/network/AccessHistory;

    .line 76
    .local v3, "removedAH":Lcom/xiaomi/network/AccessHistory;
    iget v4, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    invoke-virtual {v3}, Lcom/xiaomi/network/AccessHistory;->getWeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/xiaomi/network/WeightedHost;->weight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v2    # "newWeight":I
    .end local v3    # "removedAH":Lcom/xiaomi/network/AccessHistory;
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    .restart local v2    # "newWeight":I
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "cnt":I
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 65
    iget-object v4, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/network/AccessHistory;

    invoke-virtual {v4}, Lcom/xiaomi/network/AccessHistory;->getWeight()I

    move-result v4

    if-gez v4, :cond_2

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 64
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 71
    :cond_2
    iget v4, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    mul-int v5, v2, v0

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaomi/network/WeightedHost;->weight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "newWeight":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public compareTo(Lcom/xiaomi/network/WeightedHost;)I
    .locals 2
    .param p1, "another"    # Lcom/xiaomi/network/WeightedHost;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/xiaomi/network/WeightedHost;->weight:I

    iget v1, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/xiaomi/network/WeightedHost;

    invoke-virtual {p0, p1}, Lcom/xiaomi/network/WeightedHost;->compareTo(Lcom/xiaomi/network/WeightedHost;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/WeightedHost;
    .locals 6
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
    const-string/jumbo v3, "tt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/network/WeightedHost;->touchedTime:J

    .line 129
    const-string/jumbo v3, "wt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    .line 130
    const-string v3, "host"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    .line 131
    const-string v3, "ah"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 132
    .local v0, "ah":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 133
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 134
    .local v1, "ahObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    new-instance v4, Lcom/xiaomi/network/AccessHistory;

    invoke-direct {v4}, Lcom/xiaomi/network/AccessHistory;-><init>()V

    invoke-virtual {v4, v1}, Lcom/xiaomi/network/AccessHistory;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/AccessHistory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "ahObject":Lorg/json/JSONObject;
    :cond_0
    monitor-exit p0

    return-object p0

    .line 128
    .end local v0    # "ah":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "tt"

    iget-wide v4, p0, Lcom/xiaomi/network/WeightedHost;->touchedTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v3, "wt"

    iget v4, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v3, "host"

    iget-object v4, p0, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 120
    .local v1, "jsonArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/xiaomi/network/WeightedHost;->accessHistories:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/AccessHistory;

    .line 121
    .local v0, "ah":Lcom/xiaomi/network/AccessHistory;
    invoke-virtual {v0}, Lcom/xiaomi/network/AccessHistory;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "ah":Lcom/xiaomi/network/AccessHistory;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 123
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v3, "ah"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/network/WeightedHost;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/network/WeightedHost;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

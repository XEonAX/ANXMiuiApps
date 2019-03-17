.class public Lcom/xiaomi/network/AccessHistory;
.super Ljava/lang/Object;
.source "AccessHistory.java"


# instance fields
.field private cost:J

.field private exceptionName:Ljava/lang/String;

.field private size:J

.field private ts:J

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/network/AccessHistory;-><init>(IJJLjava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(IJJLjava/lang/Exception;)V
    .locals 2
    .param p1, "weight"    # I
    .param p2, "cost"    # J
    .param p4, "size"    # J
    .param p6, "e"    # Ljava/lang/Exception;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/xiaomi/network/AccessHistory;->weight:I

    .line 52
    iput-wide p2, p0, Lcom/xiaomi/network/AccessHistory;->cost:J

    .line 53
    iput-wide p4, p0, Lcom/xiaomi/network/AccessHistory;->size:J

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->ts:J

    .line 55
    if-eqz p6, :cond_0

    .line 56
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/AccessHistory;->exceptionName:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/network/AccessHistory;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "cost"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->cost:J

    .line 97
    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->size:J

    .line 98
    const-string/jumbo v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/network/AccessHistory;->ts:J

    .line 99
    const-string/jumbo v0, "wt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/network/AccessHistory;->weight:I

    .line 100
    const-string v0, "expt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/AccessHistory;->exceptionName:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/xiaomi/network/AccessHistory;->weight:I

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "cost"

    iget-wide v2, p0, Lcom/xiaomi/network/AccessHistory;->cost:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v1, "size"

    iget-wide v2, p0, Lcom/xiaomi/network/AccessHistory;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lcom/xiaomi/network/AccessHistory;->ts:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v1, "wt"

    iget v2, p0, Lcom/xiaomi/network/AccessHistory;->weight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "expt"

    iget-object v2, p0, Lcom/xiaomi/network/AccessHistory;->exceptionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    return-object v0
.end method

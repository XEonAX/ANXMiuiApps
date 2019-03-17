.class public abstract Lcom/xiaomi/mistatistic/sdk/data/e;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "CustomNumericEvent.java"


# instance fields
.field protected a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 24
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->a:J

    .line 32
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    const-string v1, "mistat_basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/data/e;->setAnonymous(I)V

    .line 35
    :cond_1
    if-nez p5, :cond_2

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;

    .line 44
    :goto_0
    return-void

    .line 39
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "CustomNumericEvent exception"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "json error"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 86
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 97
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/e;

    if-nez v1, :cond_2

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_2
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/e;

    .line 107
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    .line 108
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->a:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/e;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    .line 71
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->mTS:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/e;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    .line 73
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/xiaomi/mistatistic/sdk/data/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/e;->getAnonymous()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mAnonymous:I

    .line 76
    return-object v0
.end method

.method public valueToJSon()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v1, "category"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "key"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v1, "value"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "params"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/e;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_0
    return-object v0
.end method

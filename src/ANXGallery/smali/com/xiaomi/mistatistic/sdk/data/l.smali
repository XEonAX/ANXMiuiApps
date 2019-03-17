.class public Lcom/xiaomi/mistatistic/sdk/data/l;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "SessionEvent.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->a:J

    .line 18
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->b:J

    .line 19
    iput-object p5, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->c:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/data/l;->setAnonymous(I)V

    .line 23
    :cond_1
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "mistat_session"

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/l;->getCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    .line 45
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->a:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/l;->getAnonymous()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mAnonymous:I

    .line 50
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
    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v1, "category"

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/l;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v1, "start"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    const-string v1, "end"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    const-string v1, "env"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    return-object v0
.end method

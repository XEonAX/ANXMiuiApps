.class public Lcom/xiaomi/mistatistic/sdk/data/m;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "SessionExtraEvent.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    .line 23
    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->b:J

    .line 24
    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->a:J

    .line 25
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/data/m;->setAnonymous(I)V

    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "mistat_session_extra"

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/m;->getCategory()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    .line 48
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->mTS:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 49
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    .line 50
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mExtra:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/m;->getAnonymous()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mAnonymous:I

    .line 52
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
    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string v1, "category"

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/m;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v1, "start"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    const-string v1, "autoEnd"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/m;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    return-object v0
.end method

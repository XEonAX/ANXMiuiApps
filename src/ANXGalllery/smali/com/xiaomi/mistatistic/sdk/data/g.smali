.class public Lcom/xiaomi/mistatistic/sdk/data/g;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "CustomStringPropertyEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->c:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->a:Ljava/lang/String;

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

    .line 23
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/data/g;->setAnonymous(I)V

    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    instance-of v2, p1, Lcom/xiaomi/mistatistic/sdk/data/g;

    if-nez v2, :cond_2

    move v0, v1

    .line 61
    goto :goto_0

    .line 64
    :cond_2
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/g;

    .line 66
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/g;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    .line 67
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/g;->c:Ljava/lang/String;

    .line 68
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mCategory:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mKey:Ljava/lang/String;

    .line 47
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->mTS:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mTimeStamp:J

    .line 48
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mValue:Ljava/lang/String;

    .line 49
    const-string v1, "property"

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mType:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/g;->getAnonymous()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->mAnonymous:I

    .line 51
    return-object v0
.end method

.method public valueToJSon()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const-string v1, "category"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v1, "key"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string/jumbo v1, "type"

    const-string v2, "property"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v1, "value"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    return-object v0
.end method

.class public Lcom/alibaba/mtl/appmonitor/d/f;
.super Lcom/alibaba/mtl/appmonitor/d/g;
.source "AlarmSampling.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/d/g;-><init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    .line 13
    const-string v0, "AlarmSampling"

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->TAG:Ljava/lang/String;

    .line 14
    iput v1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 15
    iput v1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    .line 19
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 20
    iput p2, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->a(Lorg/json/JSONObject;)V

    .line 71
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 72
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    .line 74
    :try_start_0
    const-string v0, "successSampling"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 78
    :cond_0
    const-string v0, "failSampling"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->TAG:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "samplingSeed:"

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "isSuccess:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    const-string v5, "successSampling:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failSampling:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->r:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/h;

    .line 28
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/alibaba/mtl/appmonitor/d/d;

    if-eqz v3, :cond_0

    .line 29
    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/d;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/d/d;->a(ILjava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    if-ge p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 36
    :cond_2
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    if-ge p1, v0, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/f;->a(Lorg/json/JSONObject;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/f;->c(Lorg/json/JSONObject;)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 46
    :try_start_0
    const-string v0, "metrics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 49
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 50
    const-string v0, "module"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/f;->r:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/h;

    .line 54
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/alibaba/mtl/appmonitor/d/d;

    iget v5, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    iget v6, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/mtl/appmonitor/d/d;-><init>(Ljava/lang/String;II)V

    .line 56
    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/d/f;->r:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/d/h;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 66
    :cond_2
    return-void
.end method

.method public setSampling(I)V
    .locals 0
    .param p1, "sampling"    # I

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->setSampling(I)V

    .line 91
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->o:I

    .line 92
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/f;->p:I

    .line 93
    return-void
.end method

.class public Lcom/alibaba/mtl/appmonitor/d/d;
.super Lcom/alibaba/mtl/appmonitor/d/h;
.source "AlarmModuleSampling.java"


# instance fields
.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/d/h;-><init>(Ljava/lang/String;I)V

    .line 17
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    .line 18
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/h;->a(Lorg/json/JSONObject;)V

    .line 68
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    .line 69
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->n:I

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    .line 71
    :try_start_0
    const-string v0, "successSampling"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    .line 75
    :cond_0
    const-string v1, "failSampling"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    .line 79
    :cond_1
    const-string v1, "AlarmModuleSampling"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[updateSelfSampling]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "successSampling:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v3, "failSampling"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 22
    const-string v0, "AlarmModuleSampling"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "samplingSeed:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "isSuccess:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    const-string v3, "successSampling:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "failSampling:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->s:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/i;

    .line 25
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/mtl/appmonitor/d/e;

    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/e;

    invoke-virtual {v0, p1, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/e;->a(ILjava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/mtl/appmonitor/d/d;->a(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/String;Ljava/util/Map;)Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/d/h;->a(ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method protected a(IZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-eqz p2, :cond_2

    .line 60
    iget v2, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    if-ge p1, v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    iget v2, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    if-lt p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/d;->a(Lorg/json/JSONObject;)V

    .line 37
    :try_start_0
    const-string v0, "monitorPoints"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 40
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 41
    const-string v0, "monitorPoint"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/d;->s:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/i;

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alibaba/mtl/appmonitor/d/e;

    iget v5, p0, Lcom/alibaba/mtl/appmonitor/d/d;->o:I

    iget v6, p0, Lcom/alibaba/mtl/appmonitor/d/d;->p:I

    invoke-direct {v0, v4, v5, v6}, Lcom/alibaba/mtl/appmonitor/d/e;-><init>(Ljava/lang/String;II)V

    .line 47
    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/d/d;->s:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/d/i;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 57
    :cond_2
    return-void
.end method

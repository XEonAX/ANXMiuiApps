.class Lcom/alibaba/mtl/appmonitor/d/g;
.super Lcom/alibaba/mtl/appmonitor/d/a;
.source "EventTypeSampling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/mtl/appmonitor/d/a",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/alibaba/mtl/appmonitor/a/f;

.field protected q:I

.field protected r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/d/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p2}, Lcom/alibaba/mtl/appmonitor/d/a;-><init>(I)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->q:I

    .line 30
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/g;->e:Lcom/alibaba/mtl/appmonitor/a/f;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->r:Ljava/util/Map;

    .line 32
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->r:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/h;

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/h;->a(ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    .line 46
    :goto_0
    return v0

    .line 43
    :cond_0
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->n:I

    if-ge p1, v0, :cond_1

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->a(Lorg/json/JSONObject;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/d/g;->c(Lorg/json/JSONObject;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    :try_start_0
    const-string v0, "metrics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 59
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 60
    const-string v0, "module"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/f/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/g;->r:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/h;

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/alibaba/mtl/appmonitor/d/h;

    iget v5, p0, Lcom/alibaba/mtl/appmonitor/d/g;->n:I

    invoke-direct {v0, v4, v5}, Lcom/alibaba/mtl/appmonitor/d/h;-><init>(Ljava/lang/String;I)V

    .line 66
    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/d/g;->r:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/d/h;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 76
    :cond_2
    return-void
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 79
    const-string v0, "EventTypeSampling"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[updateEventTypeTriggerCount]"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    :try_start_0
    const-string v0, "cacheCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    if-lez v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/g;->e:Lcom/alibaba/mtl/appmonitor/a/f;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/g;->e:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a/f;->b(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "EventTypeSampling"

    const-string v2, "updateTriggerCount"

    invoke-static {v1, v2, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setSampling(I)V
    .locals 0
    .param p1, "sampling"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/alibaba/mtl/appmonitor/d/g;->n:I

    .line 102
    return-void
.end method

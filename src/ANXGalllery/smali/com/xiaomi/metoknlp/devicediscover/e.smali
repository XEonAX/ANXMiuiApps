.class final Lcom/xiaomi/metoknlp/devicediscover/e;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private final A:J

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/util/List;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:D

.field private final w:D

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:J


# direct methods
.method private constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/c;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->a(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->r:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->b(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->s:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->c(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->t:Ljava/lang/String;

    .line 119
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->d(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->u:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->e(Lcom/xiaomi/metoknlp/devicediscover/c;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->v:D

    .line 121
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->f(Lcom/xiaomi/metoknlp/devicediscover/c;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->w:D

    .line 122
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->g(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->x:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->h(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->y:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->i(Lcom/xiaomi/metoknlp/devicediscover/c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->z:J

    .line 125
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->j(Lcom/xiaomi/metoknlp/devicediscover/c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->A:J

    .line 126
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->k(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->B:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->l(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->C:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/xiaomi/metoknlp/devicediscover/c;->m(Lcom/xiaomi/metoknlp/devicediscover/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->D:Ljava/util/List;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/metoknlp/devicediscover/c;Lcom/xiaomi/metoknlp/devicediscover/h;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/devicediscover/e;-><init>(Lcom/xiaomi/metoknlp/devicediscover/c;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 156
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 161
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :cond_2
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public y()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string v0, "m"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->r:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "i"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->s:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v0, "a"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->t:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v0, "o"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->u:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "lg"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->v:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v0, "lt"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->w:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v0, "am"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->x:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v0, "as"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->y:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v0, "ast"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->z:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "ad"

    iget-wide v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->A:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v0, "ds"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->B:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v0, "dm"

    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->C:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/e;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 150
    :cond_0
    const-string v0, "devices"

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaomi/metoknlp/devicediscover/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return-object v1
.end method

.class public Lcom/xiaomi/stat/MiStatParams;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "MiStatParams"


# instance fields
.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 17
    return-void
.end method

.method constructor <init>(Lcom/xiaomi/stat/MiStatParams;)V
    .locals 1
    .param p1, "params"    # Lcom/xiaomi/stat/MiStatParams;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p1, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/xiaomi/stat/MiStatParams;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 139
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 143
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getParamsNumber()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    goto :goto_0

    .line 112
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v1, "MiStatParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put value error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    goto :goto_0

    .line 72
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "MiStatParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put value error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    goto :goto_0

    .line 38
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v1, "MiStatParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put value error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    goto :goto_0

    .line 55
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "MiStatParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put value error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xiaomi/stat/MiStatParams;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "MiStatParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put value error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

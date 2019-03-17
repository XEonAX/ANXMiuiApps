.class public Lcom/alibaba/mtl/appmonitor/d/j;
.super Ljava/lang/Object;
.source "SampleRules.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static a:Lcom/alibaba/mtl/appmonitor/d/j;


# instance fields
.field private A:Ljava/lang/String;

.field private r:I

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/mtl/appmonitor/a/f;",
            "Lcom/alibaba/mtl/appmonitor/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/d/j;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->t:Ljava/util/Map;

    .line 29
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 30
    sget-object v4, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    if-ne v3, v4, :cond_0

    .line 31
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/d/j;->t:Ljava/util/Map;

    new-instance v5, Lcom/alibaba/mtl/appmonitor/d/f;

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->e()I

    move-result v6

    invoke-direct {v5, v3, v6}, Lcom/alibaba/mtl/appmonitor/d/f;-><init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/d/j;->t:Ljava/util/Map;

    new-instance v5, Lcom/alibaba/mtl/appmonitor/d/g;

    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/a/f;->e()I

    move-result v6

    invoke-direct {v5, v3, v6}, Lcom/alibaba/mtl/appmonitor/d/g;-><init>(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 37
    :cond_1
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/appmonitor/d/j;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/alibaba/mtl/appmonitor/d/j;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alibaba/mtl/appmonitor/d/j;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/d/j;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/appmonitor/d/j;->a:Lcom/alibaba/mtl/appmonitor/d/j;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/a/f;",
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
    .line 61
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 66
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/d/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/d/j;->j()V

    .line 53
    return-void
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/a/f;I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/g;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p2}, Lcom/alibaba/mtl/appmonitor/d/g;->setSampling(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 113
    const-string v1, "SampleRules"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "config:"

    aput-object v3, v2, v0

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/f/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/j;->A:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/d/j;->A:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    monitor-exit p0

    .line 135
    :goto_0
    return-void

    .line 118
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 122
    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/a/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 123
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->t:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/g;

    .line 124
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 125
    sget-object v7, Lcom/alibaba/mtl/appmonitor/d/j;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/d/g;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/d/j;->A:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/a/f;",
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
    .line 79
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/g;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iget v1, p0, Lcom/alibaba/mtl/appmonitor/d/j;->r:I

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/d/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 96
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->t:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a/f;->a:Lcom/alibaba/mtl/appmonitor/a/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/g;

    .line 97
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/mtl/appmonitor/d/f;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/alibaba/mtl/appmonitor/d/f;

    iget v1, p0, Lcom/alibaba/mtl/appmonitor/d/j;->r:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/d/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 108
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/d/j;->r:I

    .line 109
    return-void
.end method

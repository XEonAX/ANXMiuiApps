.class public Lcom/alibaba/mtl/appmonitor/a/b;
.super Lcom/alibaba/mtl/appmonitor/a/d;
.source "CountEvent.java"


# instance fields
.field public count:I

.field public value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/a/d;->a()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 25
    :try_start_1
    const-string v1, "count"

    iget v2, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    const-string v1, "value"

    iget-wide v2, p0, Lcom/alibaba/mtl/appmonitor/a/b;->value:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    monitor-exit p0

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized a(D)V
    .locals 3

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->value:D

    .line 18
    iget v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized fill([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/a/d;->fill([Ljava/lang/Object;)V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->value:D

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mtl/appmonitor/a/b;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

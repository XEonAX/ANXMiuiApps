.class public abstract Lcom/miui/gallery/card/preprocess/ScenarioTask;
.super Lcom/miui/gallery/assistant/process/BaseImageTask;
.source "ScenarioTask.java"


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/process/BaseImageTask;-><init>(I)V

    .line 29
    return-void
.end method

.method private static parseRecordId(Lorg/json/JSONObject;)J
    .locals 2
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    .line 71
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "recordId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static post(ILjava/lang/String;J)V
    .locals 2
    .param p0, "taskType"    # I
    .param p1, "taskTag"    # Ljava/lang/String;
    .param p2, "recordId"    # J

    .prologue
    .line 75
    invoke-static {p2, p3}, Lcom/miui/gallery/card/preprocess/ScenarioTask;->wrapTaskData(J)Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    .local v0, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private static wrapTaskData(J)Lorg/json/JSONObject;
    .locals 4
    .param p0, "recordId"    # J

    .prologue
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "recordId"

    invoke-virtual {v1, v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "ScenarioTask"

    const-string/jumbo v3, "wrap task data error.\n"

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    return v0
.end method

.method protected abstract onProcess(Lorg/json/JSONObject;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public bridge synthetic process(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/card/preprocess/ScenarioTask;->process(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public final process(Lorg/json/JSONObject;)Z
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/miui/gallery/card/preprocess/ScenarioTask;->parseRecordId(Lorg/json/JSONObject;)J

    move-result-wide v0

    .line 34
    .local v0, "recordId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 35
    const-string v2, "ScenarioTask"

    const-string v3, "data parse failed"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v2, 0x0

    .line 38
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/card/preprocess/ScenarioTask;->onProcess(Lorg/json/JSONObject;J)Z

    move-result v2

    goto :goto_0
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public requireDeviceIdle()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

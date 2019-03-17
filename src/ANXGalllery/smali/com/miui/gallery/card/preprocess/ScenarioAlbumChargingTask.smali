.class public Lcom/miui/gallery/card/preprocess/ScenarioAlbumChargingTask;
.super Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;
.source "ScenarioAlbumChargingTask.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public onProcess(Lorg/json/JSONObject;J)Z
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "recordId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 30
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const-class v2, Lcom/miui/gallery/card/scenario/Record;

    invoke-virtual {v0, v2, p2, p3}, Lcom/miui/gallery/dao/base/EntityManager;->find(Ljava/lang/Class;J)Lcom/miui/gallery/dao/base/Entity;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/scenario/Record;

    .line 31
    .local v1, "record":Lcom/miui/gallery/card/scenario/Record;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/card/scenario/Record;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v4

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumChargingTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    const-string v2, "ScenarioAlbumChargingTask"

    const-string/jumbo v3, "task is cancelled"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string v2, "ScenarioAlbumChargingTask"

    const-string/jumbo v3, "start generate card"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/gallery/card/preprocess/ScenarioAlbumChargingTask;->generateCard(Lorg/json/JSONObject;Lcom/miui/gallery/card/scenario/Record;Z)Lcom/miui/gallery/card/preprocess/ScenarioAlbumTask$CardResult;

    goto :goto_0
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;
.super Lcom/miui/gallery/assistant/process/BaseImageTask;
.source "ExistImageFeatureTask.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/assistant/process/BaseImageTask;-><init>(I)V

    .line 38
    return-void
.end method

.method private initPowerState(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1, v0}, Lcom/miui/gallery/cloud/control/BatteryMonitor;->isPowerCanSync(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->setPowerCanSync(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method private recordTriggerEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v0

    .line 158
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Trigger_Date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/gallery/card/scenario/DateUtils;->getDateFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "assistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assistant_schedule_exist_image_task_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    return-void
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected getToProcessImages(Z)Ljava/util/List;
    .locals 9
    .param p1, "shouldHasLocalImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x64

    .line 121
    sget-object v5, Lcom/miui/gallery/card/scenario/ScenarioConstants;->ALL_IMAGE_BASE_SELECTION:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->queryMediaItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "allImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->getAllProcessedSuccessImages()Ljava/util/List;

    move-result-object v3

    .line 126
    .local v3, "processedSuccessImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v4, "toProcessImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v4

    .line 132
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 133
    .local v1, "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {v1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 135
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 142
    .end local v1    # "mediaFeatureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_4
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->TAG:Ljava/lang/String;

    const-string v6, "Processing %d images!"

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->queryNearByMediaItems(J)Ljava/util/List;

    move-result-object v2

    .line 149
    .local v2, "nearByImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v2}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 150
    invoke-static {v2}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->filterNearByImages(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->TAG:Ljava/lang/String;

    const-string v6, "Processing %d images after add previous images!"

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onGetImageDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/miui/gallery/sdk/download/DownloadType;->MICRO:Lcom/miui/gallery/sdk/download/DownloadType;

    return-object v0
.end method

.method public bridge synthetic process(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->process(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public process(Lorg/json/JSONObject;)Z
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->recordImageFeatureTaskInterval()V

    .line 63
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->initPowerState(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getPowerCanSync()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Sync;->getIsPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->TAG:Ljava/lang/String;

    const-string v1, "The power is weak and not charging,abort processing!"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "fail"

    invoke-direct {p0, v0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->recordTriggerEvent(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lcom/miui/gallery/assistant/process/ExistImageFeatureChargingTask;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v4, v1, v2}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    .line 73
    :goto_0
    return v3

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->TAG:Ljava/lang/String;

    const-string v1, "Start process exist images"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v4, v0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->processInternal(Lorg/json/JSONObject;II)V

    goto :goto_0
.end method

.method processInternal(Lorg/json/JSONObject;II)V
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "taskType"    # I
    .param p3, "hundredsCount"    # I

    .prologue
    const/4 v7, 0x1

    .line 77
    if-gtz p3, :cond_0

    .line 78
    const/4 p3, 0x1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->recordImageFeatureTaskInterval()V

    .line 82
    const-string/jumbo v3, "success"

    invoke-direct {p0, v3}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->recordTriggerEvent(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 84
    invoke-virtual {p0, v7}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->getToProcessImages(Z)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "toProcessImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    .end local v2    # "toProcessImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_1
    :goto_1
    return-void

    .line 88
    .restart local v2    # "toProcessImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->TAG:Ljava/lang/String;

    const-string v4, "process %d hundreds images\uff0cimage batch count:%d"

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v7, v3}, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->processImages(Lorg/json/JSONObject;Ljava/util/List;ZZ)Z

    move-result v1

    .line 90
    .local v1, "processResult":Z
    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "processResult":Z
    .end local v2    # "toProcessImages":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_3
    if-lez p2, :cond_1

    .line 96
    iget-object v3, p0, Lcom/miui/gallery/assistant/process/ExistImageFeatureTask;->TAG:Ljava/lang/String;

    const-string v4, "Have more un processed images,schedule next FeatureTask"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p2, v4, v5}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method recordImageFeatureTaskInterval()V
    .locals 14

    .prologue
    .line 166
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->getLastImageFeatureTaskTime()J

    move-result-wide v4

    .line 167
    .local v4, "lastImageFeatureTaskTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 168
    .local v6, "now":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_1

    .line 169
    invoke-static {}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->generatorCommonParams()Ljava/util/Map;

    move-result-object v8

    .line 171
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sub-long v10, v6, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    div-long v0, v10, v12

    .line 172
    .local v0, "days":J
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-nez v9, :cond_0

    .line 173
    sub-long v10, v6, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x36ee80

    div-long v2, v10, v12

    .line 174
    .local v2, "hours":J
    const-string v9, "assistant"

    const-string v10, "assistant_imagefeature_task_hours_interval"

    invoke-static {v9, v10, v2, v3}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 179
    .end local v2    # "hours":J
    :cond_0
    const-string v9, "assistant"

    const-string v10, "assistant_imagefeature_task_days_interval"

    invoke-static {v9, v10, v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 184
    .end local v0    # "days":J
    .end local v8    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {v6, v7}, Lcom/miui/gallery/preference/GalleryPreferences$Assistant;->setLastImageFeatureTaskTime(J)V

    .line 185
    return-void
.end method

.method public requireCharging()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public requireDeviceIdle()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

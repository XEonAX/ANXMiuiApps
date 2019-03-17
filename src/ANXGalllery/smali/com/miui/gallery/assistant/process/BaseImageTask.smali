.class public abstract Lcom/miui/gallery/assistant/process/BaseImageTask;
.super Lcom/miui/gallery/pendingtask/base/PendingTask;
.source "BaseImageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/pendingtask/base/PendingTask",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/pendingtask/base/PendingTask;-><init>(I)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/assistant/process/BaseImageTask;->TAG:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000(JLcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/assistant/process/BaseImageTask;->downloadImage(JLcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculateAllImageFeature(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Ljava/lang/String;)V
    .locals 10
    .param p1, "mediaFeatureItem"    # Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p1, :cond_3

    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 164
    const/4 v8, 0x0

    .line 165
    .local v8, "algorithmFlag":I
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    sget-object v2, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL_ARRAY:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget v9, v2, v1

    .line 167
    .local v9, "flag":I
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/miui/gallery/assistant/model/ImageFeature;->isFeatureDone(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    invoke-static {v8, v9}, Lcom/miui/gallery/util/assistant/FlagUtil;->setFlag(II)I

    move-result v8

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v9    # "flag":I
    :cond_1
    sget v8, Lcom/miui/gallery/assistant/algorithm/Algorithm;->FLAG_ALL:I

    .line 174
    :cond_2
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;->PRIORITY_NORMAL:Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;

    .line 175
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v2

    .line 176
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v5

    move-object v7, p2

    .line 174
    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->handleImageFileWithAlgorithmSync(Lcom/miui/gallery/assistant/manager/AlgorithmRequest$Priority;JLjava/lang/String;JLjava/lang/String;I)Lcom/miui/gallery/assistant/manager/result/BatchAlgorithmResult;

    .line 186
    .end local v8    # "algorithmFlag":I
    :cond_3
    :goto_1
    return-void

    .line 179
    :cond_4
    new-instance v0, Lcom/miui/gallery/assistant/model/ImageFeature;

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v1

    .line 180
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getSha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getDateTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/assistant/model/ImageFeature;-><init>(JLjava/lang/String;J)V

    .line 181
    .local v0, "imageFeature":Lcom/miui/gallery/assistant/model/ImageFeature;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/assistant/model/ImageFeature;->setImageType(I)V

    .line 182
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 183
    iget-object v1, p0, Lcom/miui/gallery/assistant/process/BaseImageTask;->TAG:Ljava/lang/String;

    const-string v2, "insert image %d feature, image path is null"

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/model/ImageFeature;->getImageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static downloadImage(JLcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;
    .locals 6
    .param p0, "id"    # J
    .param p2, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne p2, v3, :cond_1

    .line 210
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "network invalid."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/AccountCache;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    if-nez v3, :cond_2

    .line 215
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "no account."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/gallery/util/uil/CloudUriAdapter;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 220
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    invoke-direct {v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;-><init>()V

    .line 221
    invoke-static {p2}, Lcom/miui/gallery/Config$ImageDownload;->requireWLAN(Lcom/miui/gallery/sdk/download/DownloadType;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 222
    invoke-virtual {v3, v4}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequireCharging(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 223
    invoke-virtual {v3, v4}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->setRequirePower(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->build()Lcom/miui/gallery/sdk/download/DownloadOptions;

    move-result-object v1

    .line 225
    .local v1, "options":Lcom/miui/gallery/sdk/download/DownloadOptions;
    invoke-static {}, Lcom/miui/gallery/sdk/download/ImageDownloader;->getInstance()Lcom/miui/gallery/sdk/download/ImageDownloader;

    move-result-object v3

    invoke-virtual {v3, v2, p2, v1}, Lcom/miui/gallery/sdk/download/ImageDownloader;->loadSync(Landroid/net/Uri;Lcom/miui/gallery/sdk/download/DownloadType;Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/assist/DownloadedItem;

    move-result-object v0

    .line 226
    .local v0, "downloadedItem":Lcom/miui/gallery/sdk/download/assist/DownloadedItem;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/gallery/sdk/download/assist/DownloadedItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getImageFilePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;Z)Lcom/miui/gallery/threadpool/Future;
    .locals 2
    .param p0, "mediaFeatureItem"    # Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .param p1, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p2, "isDownloadCloudImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            "Lcom/miui/gallery/sdk/download/DownloadType;",
            "Z)",
            "Lcom/miui/gallery/threadpool/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;-><init>(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method

.method protected static getSelectedImages(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    const/4 v6, 0x0

    .line 137
    invoke-static {p0}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v5, "toProcessedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 142
    .local v3, "featureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 143
    invoke-virtual {v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getImageFeature()Lcom/miui/gallery/assistant/model/ImageFeature;

    move-result-object v2

    .line 144
    .local v2, "feature":Lcom/miui/gallery/assistant/model/ImageFeature;
    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->hasClusterFeature()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->isDocumentImage()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/model/ImageFeature;->isPoorImage()Z

    move-result v8

    if-nez v8, :cond_0

    .line 145
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v2    # "feature":Lcom/miui/gallery/assistant/model/ImageFeature;
    .end local v3    # "featureItem":Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    :cond_1
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateClusterGroupSync(Ljava/util/List;Z)Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    move-result-object v0

    .line 151
    .local v0, "clusteGroupResult":Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->getResultCode()I

    move-result v7

    if-nez v7, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->getClusters()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "clusters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/jni/cluster/Cluster;>;"
    new-instance v4, Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;

    invoke-direct {v4, v5, v1}, Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 154
    .local v4, "imageFeatureGroups":Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static {v4}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;->getSelectedImages()Ljava/util/List;

    move-result-object v6

    .line 157
    .end local v0    # "clusteGroupResult":Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
    .end local v1    # "clusters":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/jni/cluster/Cluster;>;"
    .end local v4    # "imageFeatureGroups":Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet;, "Lcom/miui/gallery/assistant/model/ImageFeatureGroupSet<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    .end local v5    # "toProcessedItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    :cond_2
    return-object v6
.end method

.method public static queryMediaItem(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "mixedDateTime ASC"

    new-instance v6, Lcom/miui/gallery/assistant/process/BaseImageTask$1;

    invoke-direct {v6}, Lcom/miui/gallery/assistant/process/BaseImageTask$1;-><init>()V

    move-object v3, p0

    .line 275
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected static queryMediaItemByIds(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/gallery/card/scenario/ScenarioConstants;->CAMERA_BASE_SELECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    .line 268
    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(localFlag NOT IN (11, 0, -1, 2) OR (localFlag=0 AND serverStatus=\'custom\'))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "selection":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/assistant/process/BaseImageTask;->queryMediaItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getAllProcessedSuccessImages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 231
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 233
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "imageId"

    aput-object v5, v2, v1

    .line 234
    .local v2, "projection":[Ljava/lang/String;
    sget-object v3, Lcom/miui/gallery/assistant/model/ImageFeature;->ALL_PROCESSED_SELECTION:Ljava/lang/String;

    .line 235
    .local v3, "selection":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/assistant/model/ImageFeature;

    const-string v7, "imageId ASC"

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/dao/base/EntityManager;->rawQuery(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 237
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 239
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "imageId"

    invoke-static {v9, v1}, Lcom/miui/gallery/assistant/model/ImageFeature;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    return-object v10
.end method

.method public abstract onGetImageDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;
.end method

.method public bridge synthetic parseData([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/process/BaseImageTask;->parseData([B)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final parseData([B)Lorg/json/JSONObject;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processImages(Lorg/json/JSONObject;Ljava/util/List;ZZ)Z
    .locals 16
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p3, "calculateClusterGroup"    # Z
    .param p4, "isDownloadCloudImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/assistant/model/MediaFeatureItem;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "mediaFeatureItems":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/assistant/model/MediaFeatureItem;>;"
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 86
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 87
    invoke-static {}, Lcom/miui/gallery/assistant/library/LibraryManager;->getInstance()Lcom/miui/gallery/assistant/library/LibraryManager;

    move-result-object v9

    sget-object v12, Lcom/miui/gallery/assistant/library/LibraryConstants;->sImageProcessLibraries:[Ljava/lang/Long;

    invoke-virtual {v9, v12}, Lcom/miui/gallery/assistant/library/LibraryManager;->loadLibrary([Ljava/lang/Long;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 88
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/assistant/process/BaseImageTask;->TAG:Ljava/lang/String;

    const-string v12, "processing %d images"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/assistant/process/BaseImageTask;->onGetImageDownloadType()Lcom/miui/gallery/sdk/download/DownloadType;

    move-result-object v3

    .line 90
    .local v3, "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    if-nez v3, :cond_0

    .line 91
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v12, "onGetImageDownloadType in Sub class return null!"

    invoke-direct {v9, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 93
    :cond_0
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    move/from16 v0, p4

    invoke-static {v9, v3, v0}, Lcom/miui/gallery/assistant/process/BaseImageTask;->getImageFilePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;Z)Lcom/miui/gallery/threadpool/Future;

    move-result-object v5

    .line 94
    .local v5, "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 95
    invoke-interface {v5}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 96
    .local v8, "path":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    move/from16 v0, p4

    invoke-static {v9, v3, v0}, Lcom/miui/gallery/assistant/process/BaseImageTask;->getImageFilePath(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;Z)Lcom/miui/gallery/threadpool/Future;

    move-result-object v5

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 98
    .local v10, "start":J
    add-int/lit8 v9, v6, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/miui/gallery/assistant/process/BaseImageTask;->calculateAllImageFeature(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/assistant/process/BaseImageTask;->TAG:Ljava/lang/String;

    const-string v13, "Image %d ImageFeature Algorithm time: %d"

    add-int/lit8 v9, v6, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v9}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v12, v13, v9, v14}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "start":J
    :cond_1
    invoke-interface {v5}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 102
    .restart local v8    # "path":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/miui/gallery/assistant/process/BaseImageTask;->calculateAllImageFeature(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Ljava/lang/String;)V

    .line 103
    if-eqz p3, :cond_2

    .line 104
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/card/CardUtil;->bindImageFeatures(Ljava/util/List;)V

    .line 105
    invoke-static {}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->getInstance()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    move-result-object v9

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v12}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;->calculateClusterGroupSync(Ljava/util/List;Z)Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;

    move-result-object v2

    .line 106
    .local v2, "clusteGroupResult":Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;->getResultCode()I

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    const/4 v9, 0x0

    .line 128
    .end local v2    # "clusteGroupResult":Lcom/miui/gallery/assistant/manager/result/ClusteGroupResult;
    .end local v3    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v5    # "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v8    # "path":Ljava/lang/String;
    :goto_1
    return v9

    .line 110
    .restart local v3    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .restart local v5    # "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    .restart local v6    # "i":I
    .restart local v8    # "path":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "downloadType":Lcom/miui/gallery/sdk/download/DownloadType;
    .end local v5    # "future":Lcom/miui/gallery/threadpool/Future;, "Lcom/miui/gallery/threadpool/Future<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v8    # "path":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/assistant/process/BaseImageTask;->TAG:Ljava/lang/String;

    const-string v12, "loadLibrary fail, schedule download task!"

    invoke-static {v9, v12}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "originalType"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/assistant/process/BaseImageTask;->getType()I

    move-result v12

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v9, "originalData"

    move-object/from16 v0, p1

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v9, "libraryIds"

    sget-object v12, Lcom/miui/gallery/assistant/library/LibraryConstants;->sImageProcessLibraries:[Ljava/lang/Long;

    .line 119
    invoke-static {v12}, Lcom/miui/gallery/util/GsonUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 118
    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_2
    invoke-static {}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->getInstance()Lcom/miui/gallery/pendingtask/PendingTaskManager;

    move-result-object v9

    const/4 v12, 0x7

    const-class v13, Lcom/miui/gallery/assistant/library/LibraryDownloadTask;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v7, v13}, Lcom/miui/gallery/pendingtask/PendingTaskManager;->postTask(ILjava/lang/Object;Ljava/lang/String;)V

    .line 125
    const/4 v9, 0x0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v4

    .line 121
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 128
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public bridge synthetic wrapData(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/process/BaseImageTask;->wrapData(Lorg/json/JSONObject;)[B

    move-result-object v0

    return-object v0
.end method

.method public final wrapData(Lorg/json/JSONObject;)[B
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

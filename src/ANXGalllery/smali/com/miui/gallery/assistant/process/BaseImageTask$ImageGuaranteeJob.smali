.class Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;
.super Ljava/lang/Object;
.source "BaseImageTask.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/process/BaseImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageGuaranteeJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDownloadType:Lcom/miui/gallery/sdk/download/DownloadType;

.field private final mIsDownloadCloudImage:Z

.field private final mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;


# direct methods
.method constructor <init>(Lcom/miui/gallery/assistant/model/MediaFeatureItem;Lcom/miui/gallery/sdk/download/DownloadType;Z)V
    .locals 0
    .param p1, "mediaFeatureItem"    # Lcom/miui/gallery/assistant/model/MediaFeatureItem;
    .param p2, "downloadType"    # Lcom/miui/gallery/sdk/download/DownloadType;
    .param p3, "isDownloadCloudImage"    # Z

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    .line 298
    iput-object p2, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mDownloadType:Lcom/miui/gallery/sdk/download/DownloadType;

    .line 299
    iput-boolean p3, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mIsDownloadCloudImage:Z

    .line 300
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/String;
    .locals 8
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 304
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    if-eqz v5, :cond_c

    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, "resultPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 307
    .local v1, "microThumbnailPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 308
    .local v4, "thumbnailPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 309
    .local v2, "originPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getMicroThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getMicroThumbnailPath()Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 315
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getOriginPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 316
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getOriginPath()Ljava/lang/String;

    move-result-object v2

    .line 319
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mDownloadType:Lcom/miui/gallery/sdk/download/DownloadType;

    sget-object v6, Lcom/miui/gallery/sdk/download/DownloadType;->ORIGIN:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v5, v6, :cond_5

    .line 320
    if-eqz v2, :cond_4

    .line 321
    move-object v3, v2

    .line 354
    .end local v1    # "microThumbnailPath":Ljava/lang/String;
    .end local v2    # "originPath":Ljava/lang/String;
    .end local v3    # "resultPath":Ljava/lang/String;
    .end local v4    # "thumbnailPath":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v3

    .line 322
    .restart local v1    # "microThumbnailPath":Ljava/lang/String;
    .restart local v2    # "originPath":Ljava/lang/String;
    .restart local v3    # "resultPath":Ljava/lang/String;
    .restart local v4    # "thumbnailPath":Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mIsDownloadCloudImage:Z

    if-eqz v5, :cond_3

    .line 323
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v6

    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mDownloadType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v6, v7, v5}, Lcom/miui/gallery/assistant/process/BaseImageTask;->access$000(JLcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v3

    .line 324
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5, v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setOriginPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ImageGuaranteeJob"

    const-string v6, "downloadImage occur error.\n"

    invoke-static {v5, v6, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mDownloadType:Lcom/miui/gallery/sdk/download/DownloadType;

    sget-object v6, Lcom/miui/gallery/sdk/download/DownloadType;->THUMBNAIL:Lcom/miui/gallery/sdk/download/DownloadType;

    if-ne v5, v6, :cond_8

    .line 327
    if-eqz v4, :cond_6

    .line 328
    move-object v3, v4

    goto :goto_0

    .line 329
    :cond_6
    if-eqz v2, :cond_7

    .line 330
    move-object v3, v2

    goto :goto_0

    .line 331
    :cond_7
    iget-boolean v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mIsDownloadCloudImage:Z

    if-eqz v5, :cond_3

    .line 332
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v6

    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mDownloadType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v6, v7, v5}, Lcom/miui/gallery/assistant/process/BaseImageTask;->access$000(JLcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v3

    .line 333
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5, v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setThumbnailPath(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_8
    if-eqz v1, :cond_9

    .line 338
    move-object v3, v1

    goto :goto_0

    .line 339
    :cond_9
    if-eqz v4, :cond_a

    .line 340
    move-object v3, v4

    goto :goto_0

    .line 341
    :cond_a
    if-eqz v2, :cond_b

    .line 342
    move-object v3, v2

    goto :goto_0

    .line 343
    :cond_b
    iget-boolean v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mIsDownloadCloudImage:Z

    if-eqz v5, :cond_3

    .line 344
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->getId()J

    move-result-wide v6

    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mDownloadType:Lcom/miui/gallery/sdk/download/DownloadType;

    invoke-static {v6, v7, v5}, Lcom/miui/gallery/assistant/process/BaseImageTask;->access$000(JLcom/miui/gallery/sdk/download/DownloadType;)Ljava/lang/String;

    move-result-object v3

    .line 345
    iget-object v5, p0, Lcom/miui/gallery/assistant/process/BaseImageTask$ImageGuaranteeJob;->mMediaFeatureItem:Lcom/miui/gallery/assistant/model/MediaFeatureItem;

    invoke-virtual {v5, v3}, Lcom/miui/gallery/assistant/model/MediaFeatureItem;->setMicroThumbnailPath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 354
    .end local v1    # "microThumbnailPath":Ljava/lang/String;
    .end local v2    # "originPath":Ljava/lang/String;
    .end local v3    # "resultPath":Ljava/lang/String;
    .end local v4    # "thumbnailPath":Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    goto :goto_0
.end method

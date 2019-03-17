.class public Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;
.super Ljava/lang/Object;
.source "GalleryErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/GalleryErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiCloudServerExceptionHandler"
.end annotation


# static fields
.field private static sMicloudServerException:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->sMicloudServerException:Ljava/lang/Exception;

    return-void
.end method

.method public static declared-synchronized checkMiCloudServerException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/gallery/cloud/GalleryMiCloudServerException;
        }
    .end annotation

    .prologue
    .line 496
    const-class v2, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->hasMiCloudServerException()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->getMiCloudServerException()Ljava/lang/Exception;

    move-result-object v0

    .line 498
    .local v0, "micloudServerException":Ljava/lang/Exception;
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->cleanMiCloudServerException()V

    .line 499
    new-instance v1, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;

    invoke-direct {v1, v0}, Lcom/miui/gallery/cloud/GalleryMiCloudServerException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 501
    .end local v0    # "micloudServerException":Ljava/lang/Exception;
    :cond_0
    monitor-exit v2

    return-void
.end method

.method private static cleanMiCloudServerException()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->sMicloudServerException:Ljava/lang/Exception;

    .line 485
    return-void
.end method

.method private static getMiCloudServerException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->sMicloudServerException:Ljava/lang/Exception;

    return-object v0
.end method

.method public static declared-synchronized handleMiCloudException(Ljava/lang/Exception;)Z
    .locals 5
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 488
    const-class v2, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;

    monitor-enter v2

    :try_start_0
    const-string v1, "MiCloudServerExceptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMiCloudException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sput-object p0, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->sMicloudServerException:Ljava/lang/Exception;

    .line 490
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 491
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 488
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static hasMiCloudServerException()Z
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/miui/gallery/cloud/GalleryErrorCode$MiCloudServerExceptionHandler;->sMicloudServerException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

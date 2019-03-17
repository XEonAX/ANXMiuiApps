.class public Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$ErrorHandler;
.super Ljava/lang/Object;
.source "SyncPeopleFaceFromServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorHandler"
.end annotation


# direct methods
.method private static cleanPeopleFaceTables()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 550
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getPeopleFaceTables()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    .local v0, "deleteRows":I
    .local v1, "tableName":Ljava/lang/String;
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3

    .line 551
    sget-object v7, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    .end local v0    # "deleteRows":I
    .end local v2    # "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 552
    invoke-virtual {v7, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 553
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-static {v2, v13, v13}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 554
    .restart local v0    # "deleteRows":I
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v7

    const-string/jumbo v8, "syncface"

    const-string v9, "clean %s finished, deleted rows=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v4

    const/4 v11, 0x1

    .line 555
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 554
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v13}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    :cond_0
    return-void
.end method

.method public static simpleCheckWhetherNeedCleanTables(Lorg/json/JSONObject;Landroid/accounts/Account;)Z
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 561
    if-nez p0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 565
    :cond_1
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 566
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v2

    const-string/jumbo v3, "syncface"

    const-string v4, "don\'t have json_tag_code"

    invoke-virtual {v2, v3, v4, v6}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 570
    :cond_2
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 571
    .local v0, "code":I
    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v2

    const-string/jumbo v3, "syncface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON_TAG_CODE is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    const v2, 0xcb20

    if-ne v0, v2, :cond_0

    .line 573
    invoke-static {}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$ErrorHandler;->cleanPeopleFaceTables()V

    .line 574
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncWatermark(Landroid/accounts/Account;J)V

    .line 575
    const-string v1, ""

    invoke-static {p1, v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 577
    const/4 v1, 0x1

    goto :goto_0
.end method

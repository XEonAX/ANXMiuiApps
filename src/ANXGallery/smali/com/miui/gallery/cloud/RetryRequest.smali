.class public Lcom/miui/gallery/cloud/RetryRequest;
.super Ljava/lang/Object;
.source "RetryRequest.java"


# direct methods
.method public static doUpDownDeleteItems(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "upDownloadCloud"    # Lcom/miui/gallery/cloud/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;",
            "Lcom/miui/gallery/cloud/Operation;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    .local p3, "requestItems":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/cloud/RequestItemBase;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v5, "requestItemsAGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "needAddInNewGroup":Z
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/RequestItemBase;

    .line 243
    .local v4, "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 244
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/cloud/RequestItemBase;

    invoke-virtual {v4, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->isInSameAlbum(Lcom/miui/gallery/cloud/RequestItemBase;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 245
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/RequestItemBase;->getRequestLimitAGroup()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 247
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_3

    .line 237
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_2
    const-string v7, "RetryRequest"

    const-string v8, "requestItem in this group, try this group and add this item later."

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v3, 0x1

    .line 255
    :cond_3
    const-string v7, "RetryRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "do "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " a group items:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v6, 0x0

    .line 259
    .local v6, "result":I
    invoke-virtual {v4}, Lcom/miui/gallery/cloud/RequestItemBase;->supportMultiRequest()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 262
    new-instance v2, Lcom/miui/gallery/cloud/RequestMultiItem;

    iget v7, v4, Lcom/miui/gallery/cloud/RequestItemBase;->priority:I

    invoke-direct {v2, v5, v7}, Lcom/miui/gallery/cloud/RequestMultiItem;-><init>(Ljava/util/ArrayList;I)V

    .line 263
    .local v2, "multRequestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, "multRequestGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-static {p1, p2, v1, p4}, Lcom/miui/gallery/cloud/RetryRequest;->tryAGroupItems(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    .line 271
    .end local v1    # "multRequestGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItemBase;>;"
    .end local v2    # "multRequestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    :goto_2
    if-eqz v6, :cond_5

    .line 283
    .end local v3    # "needAddInNewGroup":Z
    .end local v4    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    .end local v6    # "result":I
    :goto_3
    return v6

    .line 268
    .restart local v3    # "needAddInNewGroup":Z
    .restart local v4    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    .restart local v6    # "result":I
    :cond_4
    invoke-static {p1, p2, v5, p4}, Lcom/miui/gallery/cloud/RetryRequest;->tryAGroupItems(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/Operation;)I

    move-result v6

    goto :goto_2

    .line 275
    :cond_5
    const-string v7, "RetryRequest"

    const-string v8, "finish one loop for upload"

    invoke-static {v7, v8}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 277
    if-eqz v3, :cond_1

    .line 279
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    .end local v3    # "needAddInNewGroup":Z
    .end local v4    # "requestItem":Lcom/miui/gallery/cloud/RequestItemBase;
    .end local v6    # "result":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public static doUpDownDeleteItemsInBackground(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "upDownloadCloud"    # Lcom/miui/gallery/cloud/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/List",
            "<+",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;",
            "Lcom/miui/gallery/cloud/Operation;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    .local p3, "requestItems":Ljava/util/List;, "Ljava/util/List<+Lcom/miui/gallery/cloud/RequestItemBase;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/cloud/RetryRequest;->doUpDownDeleteItems(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/List;Lcom/miui/gallery/cloud/Operation;)I

    move-result v0

    return v0
.end method

.method private static setAllStatus(Ljava/util/Iterator;I)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/miui/gallery/cloud/RequestItemBase;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/RequestItemBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public static tryAGroupItems(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/Operation;)I
    .locals 8
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p3, "operation"    # Lcom/miui/gallery/cloud/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;",
            "Lcom/miui/gallery/cloud/Operation;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/miui/gallery/cloud/RequestItemBase;>;"
    const/4 v3, 0x1

    new-array v2, v3, [J

    .line 25
    .local v2, "retryAfter":[J
    const/4 v1, 0x0

    .line 26
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 27
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 28
    invoke-static {p0, p1, p2, p3, v2}, Lcom/miui/gallery/cloud/RetryRequest;->tryAGroupOnce(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/Operation;[J)I

    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 41
    :cond_0
    if-eqz v1, :cond_3

    .line 52
    .end local v1    # "result":I
    :goto_1
    return v1

    .line 35
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 37
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 26
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 46
    const/4 v1, 0x0

    goto :goto_1

    .line 50
    :cond_4
    const-string v3, "RetryRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remain count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V

    .line 52
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private static tryAGroupOnce(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/util/ArrayList;Lcom/miui/gallery/cloud/Operation;[J)I
    .locals 10
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "extToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p3, "operation"    # Lcom/miui/gallery/cloud/Operation;
    .param p4, "retryAfter"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/gallery/cloud/RequestItemBase;",
            ">;",
            "Lcom/miui/gallery/cloud/Operation;",
            "[J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/miui/gallery/cloud/RequestItemBase;>;"
    const/4 v5, 0x0

    .line 64
    .local v5, "retryItem":Lcom/miui/gallery/cloud/RequestItemBase;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 66
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/miui/gallery/cloud/RequestItemBase;>;"
    :goto_0
    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 67
    :cond_0
    if-eqz v5, :cond_1

    move-object v2, v5

    .line 69
    .local v2, "item":Lcom/miui/gallery/cloud/RequestItemBase;
    :goto_1
    const/4 v5, 0x0

    .line 72
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/RequestItemBase;->getStatus()I

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 74
    const-string v6, "RetryRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is canceled, status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/RequestItemBase;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v2    # "item":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/RequestItemBase;

    move-object v2, v6

    goto :goto_1

    .line 79
    .restart local v2    # "item":Lcom/miui/gallery/cloud/RequestItemBase;
    :cond_2
    invoke-interface {p3, v2}, Lcom/miui/gallery/cloud/Operation;->checkState(Lcom/miui/gallery/cloud/RequestItemBase;)I

    move-result v0

    .line 80
    .local v0, "checkState":I
    packed-switch v0, :pswitch_data_0

    .line 92
    :pswitch_0
    sget-object v4, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 95
    .local v4, "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->start(Lcom/miui/gallery/cloud/RequestItemBase;)V

    .line 97
    const/4 v6, 0x0

    invoke-interface {p3, p0, p1, v6, v2}, Lcom/miui/gallery/cloud/Operation;->execute(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Ljava/lang/String;Lcom/miui/gallery/cloud/RequestItemBase;)Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    move-result-object v4

    .line 100
    sget-object v6, Lcom/miui/gallery/cloud/RetryRequest$1;->$SwitchMap$com$miui$gallery$cloud$CheckResult$GallerySyncResult:[I

    invoke-virtual {v4}, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->ordinal()I

    move-result v7

    aget v6, v6, v7
    :try_end_0
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v6, :pswitch_data_1

    .line 207
    :cond_3
    :goto_2
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto :goto_0

    .line 85
    .end local v4    # "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :pswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 87
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V

    .line 211
    .end local v0    # "checkState":I
    .end local v2    # "item":Lcom/miui/gallery/cloud/RequestItemBase;
    :goto_3
    return v0

    .line 106
    .restart local v0    # "checkState":I
    .restart local v2    # "item":Lcom/miui/gallery/cloud/RequestItemBase;
    .restart local v4    # "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :pswitch_2
    :try_start_1
    iget v6, v2, Lcom/miui/gallery/cloud/RequestItemBase;->kssRetryTimes:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_4

    .line 107
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 109
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V
    :try_end_1
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/4 v0, 0x5

    .line 207
    .end local v0    # "checkState":I
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto :goto_3

    .line 114
    .restart local v0    # "checkState":I
    :cond_4
    move-object v5, v2

    .line 116
    goto :goto_2

    .line 119
    :pswitch_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 120
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z
    :try_end_2
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Lcom/xiaomi/opensdk/exception/RetriableException;
    :try_start_3
    const-string v6, "RetryRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " retriable exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 192
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    const/4 v0, 0x3

    .line 207
    .end local v0    # "checkState":I
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto :goto_3

    .line 126
    .end local v1    # "e":Lcom/xiaomi/opensdk/exception/RetriableException;
    .restart local v0    # "checkState":I
    :pswitch_4
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 127
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z
    :try_end_4
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 194
    :catch_1
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v6, "RetryRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " interrupt exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 198
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 199
    const/4 v0, 0x3

    .line 207
    .end local v0    # "checkState":I
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto/16 :goto_3

    .line 133
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "checkState":I
    :pswitch_5
    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_6
    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 135
    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V
    :try_end_6
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    const/4 v0, 0x3

    .line 207
    .end local v0    # "checkState":I
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto/16 :goto_3

    .line 143
    .restart local v0    # "checkState":I
    :pswitch_6
    :try_start_7
    iget v6, v2, Lcom/miui/gallery/cloud/RequestItemBase;->kssRetryTimes:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_5

    .line 144
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 146
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V
    :try_end_7
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 147
    const/4 v0, 0x5

    .line 207
    .end local v0    # "checkState":I
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto/16 :goto_3

    .line 150
    .restart local v0    # "checkState":I
    :cond_5
    :try_start_8
    iget v6, v2, Lcom/miui/gallery/cloud/RequestItemBase;->createRetryTimes:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    iget v6, v2, Lcom/miui/gallery/cloud/RequestItemBase;->commitRetryTimes:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    iget v6, v2, Lcom/miui/gallery/cloud/RequestItemBase;->otherRetryTimes:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_7

    .line 154
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 155
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z
    :try_end_8
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 200
    :catch_2
    move-exception v1

    .line 201
    .local v1, "e":Lcom/xiaomi/opensdk/exception/AuthenticationException;
    :try_start_9
    const-string v6, "RetryRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " authentication exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 204
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 205
    const/4 v0, 0x3

    .line 207
    .end local v0    # "checkState":I
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto/16 :goto_3

    .line 158
    .end local v1    # "e":Lcom/xiaomi/opensdk/exception/AuthenticationException;
    .restart local v0    # "checkState":I
    :cond_7
    const/4 v6, 0x0

    :try_start_a
    aget-wide v6, p4, v6

    iget-wide v8, v2, Lcom/miui/gallery/cloud/RequestItemBase;->retryAfter:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 160
    const/4 v6, 0x0

    iget-wide v8, v2, Lcom/miui/gallery/cloud/RequestItemBase;->retryAfter:J

    aput-wide v8, p4, v6
    :try_end_a
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 207
    :catchall_0
    move-exception v6

    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    throw v6

    .line 166
    :pswitch_7
    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_b
    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    .line 168
    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/miui/gallery/cloud/RetryRequest;->setAllStatus(Ljava/util/Iterator;I)V
    :try_end_b
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 169
    const/4 v0, 0x2

    .line 207
    .end local v0    # "checkState":I
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->getInstance()Lcom/miui/gallery/util/deviceprovider/UploadStatusController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/miui/gallery/util/deviceprovider/UploadStatusController;->end(Lcom/miui/gallery/cloud/RequestItemBase;)V

    goto/16 :goto_3

    .line 173
    .restart local v0    # "checkState":I
    :pswitch_8
    :try_start_c
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 174
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z

    goto/16 :goto_2

    .line 179
    :pswitch_9
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 180
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/miui/gallery/cloud/RequestItemBase;->compareAndSetStatus(II)Z
    :try_end_c
    .catch Lcom/xiaomi/opensdk/exception/RetriableException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/xiaomi/opensdk/exception/AuthenticationException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 211
    .end local v0    # "checkState":I
    .end local v2    # "item":Lcom/miui/gallery/cloud/RequestItemBase;
    .end local v4    # "result":Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 100
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

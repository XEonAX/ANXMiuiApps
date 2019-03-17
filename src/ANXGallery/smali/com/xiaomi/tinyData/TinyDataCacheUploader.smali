.class public Lcom/xiaomi/tinyData/TinyDataCacheUploader;
.super Ljava/lang/Object;
.source "TinyDataCacheUploader.java"


# direct methods
.method private static prepareTinyDataItems(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 55
    :cond_1
    return-object v2

    .line 44
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v2, "itemsUploading":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 47
    .local v0, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-static {p0, v0}, Lcom/xiaomi/tinyData/TinyDataCacheUploader;->verifyTinyDataUploadItemValue(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    .line 48
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getSourcePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 49
    .local v1, "itemData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    if-nez v1, :cond_3

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "itemData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .restart local v1    # "itemData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getSourcePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static upload(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/tinyData/TinyDataUploader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "itemsUploading":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;>;"
    const/4 v3, 0x0

    .line 82
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .line 85
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TinyData is uploaded immediately item size:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-virtual {v4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3, v6, v4}, Lcom/xiaomi/tinyData/TinyDataUploader;->upload(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "ignored":Ljava/lang/Exception;
    goto :goto_0

    .line 94
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;>;"
    .end local v2    # "ignored":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static uploadTinyData(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/tinyData/TinyDataUploader;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .line 22
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    invoke-static {p0, p2}, Lcom/xiaomi/tinyData/TinyDataCacheUploader;->prepareTinyDataItems(Landroid/content/Context;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 23
    .local v0, "itemsUploading":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TinyData TinyDataCacheUploader.uploadTinyData itemsUploading == null || itemsUploading.size() == 0  ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/tinyData/TinyDataCacheUploader;->upload(Landroid/content/Context;Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private static verifyTinyDataUploadItemValue(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 64
    iget-boolean v0, p1, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->fromSdk:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "push_sdk_channel"

    invoke-virtual {p1, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setChannel(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/xiaomi/push/service/TinyDataHelper;->nextTinyDataItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 70
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setTimestamp(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 71
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setSourcePackage(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setSourcePackage(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 77
    :cond_3
    return-void
.end method

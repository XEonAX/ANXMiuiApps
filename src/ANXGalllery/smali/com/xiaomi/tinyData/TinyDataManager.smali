.class public Lcom/xiaomi/tinyData/TinyDataManager;
.super Ljava/lang/Object;
.source "TinyDataManager.java"


# static fields
.field private static sInstance:Lcom/xiaomi/tinyData/TinyDataManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUploaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/tinyData/TinyDataUploader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mUploaders:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaomi/tinyData/TinyDataManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v0, "[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lcom/xiaomi/tinyData/TinyDataManager;->sInstance:Lcom/xiaomi/tinyData/TinyDataManager;

    if-nez v0, :cond_2

    .line 35
    const-class v1, Lcom/xiaomi/tinyData/TinyDataManager;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/xiaomi/tinyData/TinyDataManager;->sInstance:Lcom/xiaomi/tinyData/TinyDataManager;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/xiaomi/tinyData/TinyDataManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/tinyData/TinyDataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/tinyData/TinyDataManager;->sInstance:Lcom/xiaomi/tinyData/TinyDataManager;

    .line 39
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_2
    sget-object v0, Lcom/xiaomi/tinyData/TinyDataManager;->sInstance:Lcom/xiaomi/tinyData/TinyDataManager;

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "sourcePkgname"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "counter"    # J
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 135
    .local v0, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 136
    invoke-virtual {v0, p4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 137
    invoke-virtual {v0, p5, p6}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCounter(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 138
    invoke-virtual {v0, p7}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setData(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setFromSdk(Z)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 140
    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setChannel(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 141
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setSourcePackage(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TinyData TinyDataManager.upload item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/tinyData/TinyDataManager;->upload(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addUploader(Lcom/xiaomi/tinyData/TinyDataUploader;Ljava/lang/String;)V
    .locals 1
    .param p1, "uploader"    # Lcom/xiaomi/tinyData/TinyDataUploader;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string v0, "[TinyDataManager]: please do not add null mUploader to TinyDataManager."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "[TinyDataManager]: can not add a provider from unkown resource."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/tinyData/TinyDataManager;->getUploaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getUploader()Lcom/xiaomi/tinyData/TinyDataUploader;
    .locals 4

    .prologue
    .line 74
    iget-object v2, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mUploaders:Ljava/util/Map;

    const-string v3, "UPLOADER_PUSH_CHANNEL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/tinyData/TinyDataUploader;

    .line 75
    .local v1, "pushChannelUploader":Lcom/xiaomi/tinyData/TinyDataUploader;
    if-eqz v1, :cond_0

    .line 82
    .end local v1    # "pushChannelUploader":Lcom/xiaomi/tinyData/TinyDataUploader;
    :goto_0
    return-object v1

    .line 78
    .restart local v1    # "pushChannelUploader":Lcom/xiaomi/tinyData/TinyDataUploader;
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mUploaders:Ljava/util/Map;

    const-string v3, "UPLOADER_HTTP"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/tinyData/TinyDataUploader;

    .line 79
    .local v0, "httpUploader":Lcom/xiaomi/tinyData/TinyDataUploader;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getUploaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/tinyData/TinyDataUploader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mUploaders:Ljava/util/Map;

    return-object v0
.end method

.method public upload(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Ljava/lang/String;)Z
    .locals 2
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "pkgName is null or empty, upload ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-static {p1, v0}, Lcom/xiaomi/push/service/TinyDataHelper;->verify(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {}, Lcom/xiaomi/push/service/TinyDataHelper;->nextTinyDataItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 109
    :cond_2
    invoke-virtual {p1, p2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setPkgName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 110
    iget-object v0, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/TinyDataStorage;->cacheTinyData(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "counter"    # J
    .param p5, "data"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/tinyData/TinyDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/tinyData/TinyDataManager;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

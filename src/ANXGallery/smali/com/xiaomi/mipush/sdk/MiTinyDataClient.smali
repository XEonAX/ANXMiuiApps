.class public Lcom/xiaomi/mipush/sdk/MiTinyDataClient;
.super Ljava/lang/Object;
.source "MiTinyDataClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;
    }
.end annotation


# direct methods
.method public static upload(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient.upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->getInstance()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->alreadyInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->getInstance()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->init(Landroid/content/Context;)V

    .line 86
    :cond_0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->getInstance()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->processUploadRequest(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z

    move-result v0

    return v0
.end method

.method public static upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "counter"    # J
    .param p5, "data"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 71
    .local v0, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 72
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 73
    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCounter(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 74
    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setData(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setFromSdk(Z)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 76
    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setChannel(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 77
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient;->upload(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z

    move-result v1

    return v1
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "counter"    # J
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 60
    .local v0, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {v0, p0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 61
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 62
    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCounter(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 63
    invoke-virtual {v0, p4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setData(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 65
    invoke-static {}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->getInstance()Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$MiTinyDataClientImp;->processUploadRequest(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)Z

    move-result v1

    return v1
.end method

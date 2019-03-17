.class Lcom/xiaomi/push/service/LongConnUploader$1;
.super Lcom/xiaomi/push/service/XMPushService$Job;
.source "LongConnUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/service/LongConnUploader;->upload(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/service/LongConnUploader;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$sourcePkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/LongConnUploader;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/service/LongConnUploader;
    .param p2, "type"    # I

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->this$0:Lcom/xiaomi/push/service/LongConnUploader;

    iput-object p3, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$items:Ljava/util/List;

    iput-object p5, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$sourcePkgName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$Job;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "Send tiny data."

    return-object v0
.end method

.method public process()V
    .locals 12

    .prologue
    .line 36
    iget-object v7, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->this$0:Lcom/xiaomi/push/service/LongConnUploader;

    iget-object v8, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/xiaomi/push/service/LongConnUploader;->access$000(Lcom/xiaomi/push/service/LongConnUploader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "appId":Ljava/lang/String;
    iget-object v7, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$items:Ljava/util/List;

    iget-object v8, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$pkgName:Ljava/lang/String;

    const v9, 0x8000

    invoke-static {v7, v8, v0, v9}, Lcom/xiaomi/push/service/TinyDataHelper;->pack(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 39
    .local v6, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TinyData LongConnUploader.upload pack notifications "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  ts:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 40
    if-eqz v6, :cond_3

    .line 41
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 42
    .local v5, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    const-string/jumbo v8, "uploadWay"

    const-string v9, "longXMPushService"

    invoke-virtual {v5, v8, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->putToExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v8, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$pkgName:Ljava/lang/String;

    sget-object v9, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-static {v8, v0, v5, v9}, Lcom/xiaomi/push/service/MIPushHelper;->generateRequestContainer(Ljava/lang/String;Ljava/lang/String;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v1

    .line 47
    .local v1, "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    iget-object v8, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$sourcePkgName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$pkgName:Ljava/lang/String;

    iget-object v9, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$sourcePkgName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v8

    if-nez v8, :cond_0

    .line 49
    new-instance v3, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;-><init>()V

    .line 50
    .local v3, "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    const-string v8, "-1"

    invoke-virtual {v3, v8}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    .line 51
    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->setMetaInfo(Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 53
    .end local v3    # "metaInfo":Lcom/xiaomi/xmpush/thrift/PushMetaInfo;
    :cond_0
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->getMetaInfo()Lcom/xiaomi/xmpush/thrift/PushMetaInfo;

    move-result-object v8

    const-string v9, "ext_traffic_source_pkg"

    iget-object v10, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$sourcePkgName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/xiaomi/xmpush/thrift/PushMetaInfo;->putToInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v4

    .line 57
    .local v4, "msgBytes":[B
    iget-object v8, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->this$0:Lcom/xiaomi/push/service/LongConnUploader;

    invoke-static {v8}, Lcom/xiaomi/push/service/LongConnUploader;->access$100(Lcom/xiaomi/push/service/LongConnUploader;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$pkgName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v4, v10}, Lcom/xiaomi/push/service/XMPushService;->sendMessage(Ljava/lang/String;[BZ)V

    goto :goto_0

    .line 59
    .end local v1    # "container":Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .end local v4    # "msgBytes":[B
    .end local v5    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :cond_2
    iget-object v7, p0, Lcom/xiaomi/push/service/LongConnUploader$1;->val$items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 60
    .local v2, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TinyData LongConnUploader.upload uploaded by com.xiaomi.push.service.TinyDataUploader.  item"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  ts:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    .end local v2    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    :cond_3
    const-string v7, "TinyData LongConnUploader.upload Get a null XmPushActionNotification list when TinyDataHelper.pack() in XMPushService."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 65
    :cond_4
    return-void
.end method

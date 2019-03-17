.class public Lcom/xiaomi/push/service/TinyDataHelper;
.super Ljava/lang/Object;
.source "TinyDataHelper.java"


# static fields
.field private static dayPrefix:Ljava/lang/String;

.field private static idGen:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/xiaomi/push/service/TinyDataHelper;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/TinyDataHelper;->sdf:Ljava/text/SimpleDateFormat;

    .line 36
    sget-object v0, Lcom/xiaomi/push/service/TinyDataHelper;->sdf:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/TinyDataHelper;->dayPrefix:Ljava/lang/String;

    return-void
.end method

.method public static cacheTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "counter"    # J
    .param p5, "data"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;-><init>()V

    .line 161
    .local v0, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCategory(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 162
    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 163
    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setCounter(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 164
    invoke-virtual {v0, p5}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setData(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 165
    const-string v1, "push_sdk_channel"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setChannel(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setPkgName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setSourcePackage(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setFromSdk(Z)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setTimestamp(J)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 170
    invoke-static {}, Lcom/xiaomi/push/service/TinyDataHelper;->nextTinyDataItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->setId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 171
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/TinyDataStorage;->cacheTinyData(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    .line 172
    return-void
.end method

.method public static declared-synchronized nextTinyDataItemId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    const-class v2, Lcom/xiaomi/push/service/TinyDataHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/TinyDataHelper;->sdf:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "today":Ljava/lang/String;
    sget-object v1, Lcom/xiaomi/push/service/TinyDataHelper;->dayPrefix:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    sget-object v1, Lcom/xiaomi/push/service/TinyDataHelper;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 42
    sput-object v0, Lcom/xiaomi/push/service/TinyDataHelper;->dayPrefix:Ljava/lang/String;

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/service/TinyDataHelper;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static pack(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;>;"
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 58
    if-nez p0, :cond_1

    .line 59
    const-string v7, "requests can not be null in TinyDataHelper.transToThriftObj()."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-object v6

    .line 63
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 64
    const-string v7, "requests.length is 0 in TinyDataHelper.transToThriftObj()."

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v6, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;>;"
    new-instance v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;-><init>()V

    .line 71
    .local v1, "datas":Lcom/xiaomi/xmpush/thrift/ClientUploadData;
    const/4 v0, 0x0

    .line 72
    .local v0, "currentDataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 73
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;

    .line 75
    .local v3, "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    if-nez v3, :cond_3

    .line 72
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_3
    invoke-static {v3}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v7

    array-length v4, v7

    .line 80
    .local v4, "itemSize":I
    if-le v4, p3, :cond_4

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TinyData is too big, ignore upload request item:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_4
    add-int v7, v0, v4

    if-le v7, p3, :cond_5

    .line 87
    new-instance v5, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v7, "-1"

    invoke-direct {v5, v7, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 88
    .local v5, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 89
    invoke-virtual {v5, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 90
    sget-object v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadTinyData:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v7, v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 91
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->gZip([B)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 92
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/xiaomi/xmpush/thrift/ClientUploadData;

    .end local v1    # "datas":Lcom/xiaomi/xmpush/thrift/ClientUploadData;
    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;-><init>()V

    .line 95
    .restart local v1    # "datas":Lcom/xiaomi/xmpush/thrift/ClientUploadData;
    const/4 v0, 0x0

    .line 98
    .end local v5    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    :cond_5
    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->addToUploadDataItems(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;)V

    .line 99
    add-int/2addr v0, v4

    goto :goto_2

    .line 102
    .end local v3    # "item":Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .end local v4    # "itemSize":I
    :cond_6
    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/ClientUploadData;->getUploadDataItemsSize()I

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    new-instance v5, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v7, "-1"

    invoke-direct {v5, v7, v9}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 104
    .restart local v5    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    invoke-virtual {v5, p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 105
    invoke-virtual {v5, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setAppId(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 106
    sget-object v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->UploadTinyData:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v7, v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 107
    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->gZip([B)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 108
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static verify(Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;Z)Z
    .locals 4
    .param p0, "item"    # Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;
    .param p1, "ignoreChannel"    # Z

    .prologue
    const/16 v3, 0x2800

    const/4 v0, 0x1

    .line 122
    if-nez p0, :cond_0

    .line 123
    const-string v1, "item is null, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    .line 156
    :goto_0
    return v0

    .line 127
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->channel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "item.channel is null or empty, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const-string v1, "item.category is null or empty, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    const-string v1, "item.name is null or empty, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->category:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->checkAllAscii(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 143
    const-string v1, "item.category can only contain ascii char, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/XMStringUtils;->checkAllAscii(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    const-string v1, "item.name can only contain ascii char, verfiy ClientUploadDataItem failed."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item.data is too large("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/xmpush/thrift/ClientUploadDataItem;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), max size for data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , verfiy ClientUploadDataItem failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

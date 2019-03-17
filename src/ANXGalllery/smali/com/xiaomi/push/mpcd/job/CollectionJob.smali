.class public abstract Lcom/xiaomi/push/mpcd/job/CollectionJob;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "CollectionJob.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected period:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 45
    iput p2, p0, Lcom/xiaomi/push/mpcd/job/CollectionJob;->period:I

    .line 46
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/job/CollectionJob;->context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public static writeItemToFile(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/DataCollectionItem;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "collectionItem"    # Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .prologue
    .line 98
    invoke-static {}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getInstance()Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getCDActionProvider()Lcom/xiaomi/push/mpcd/CDActionProvider;

    move-result-object v0

    .line 99
    .local v0, "cdActionProvider":Lcom/xiaomi/push/mpcd/CDActionProvider;
    if-nez v0, :cond_1

    const-string v1, ""

    .line 100
    .local v1, "regSecret":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    :cond_0
    :goto_1
    return-void

    .line 99
    .end local v1    # "regSecret":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Lcom/xiaomi/push/mpcd/CDActionProvider;->getRegSecret()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 103
    .restart local v1    # "regSecret":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-static {p0, p1, v1}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->writeItemToFile(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/DataCollectionItem;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static writeItemToFile(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/DataCollectionItem;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "collectionItem"    # Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    .param p2, "regSecret"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v4

    .line 112
    .local v4, "itemBytes":[B
    invoke-static {p2, v4}, Lcom/xiaomi/push/mpcd/CDataHelper;->encryptData(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 113
    if-eqz v4, :cond_0

    array-length v9, v4

    if-nez v9, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    sget-object v10, Lcom/xiaomi/push/mpcd/Constants;->cDataLock4Thread:Ljava/lang/Object;

    monitor-enter v10

    .line 119
    const/4 v7, 0x0

    .line 120
    .local v7, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 121
    .local v5, "lock":Ljava/nio/channels/FileLock;
    const/4 v0, 0x0

    .line 125
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    const-string v11, "push_cdata.lock"

    invoke-direct {v6, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v6, "lockFile":Ljava/io/File;
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 127
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v8, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v8, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v5

    .line 141
    new-instance v3, Ljava/io/File;

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    const-string v11, "push_cdata.data"

    invoke-direct {v3, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v3, "file":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v9, v3, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 144
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    array-length v9, v4

    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/misc/ByteUtils;->parseInt(I)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 145
    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 146
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 150
    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    if-eqz v9, :cond_2

    .line 152
    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 157
    :cond_2
    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .line 160
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "lockFile":Ljava/io/File;
    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_6
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_3
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 150
    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    .line 152
    :try_start_9
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 157
    :cond_3
    :goto_5
    :try_start_a
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_6
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v11

    if-eqz v11, :cond_4

    .line 152
    :try_start_b
    invoke-virtual {v5}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 157
    :cond_4
    :goto_7
    :try_start_c
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 153
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "lockFile":Ljava/io/File;
    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v9

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    goto :goto_7

    .line 160
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 150
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_4
    move-exception v9

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 147
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_4
.end method


# virtual methods
.method protected checkPeriodAndRecord()Z
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xiaomi/push/mpcd/job/CollectionJob;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/push/mpcd/job/CollectionJob;->period:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/channel/commonutils/misc/JobMutualExclusor;->checkPeriodAndRecordWithFileLock(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method protected checkPermission()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public abstract collectInfo()Ljava/lang/String;
.end method

.method public abstract getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
.end method

.method public run()V
    .locals 6

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->checkPeriodAndRecord()Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getInstance()Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getCDActionProvider()Lcom/xiaomi/push/mpcd/CDActionProvider;

    move-result-object v0

    .line 62
    .local v0, "cdActionProvider":Lcom/xiaomi/push/mpcd/CDActionProvider;
    if-nez v0, :cond_2

    const-string v3, ""

    .line 63
    .local v3, "regSecret":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->checkPermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->collectInfo()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "info":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    new-instance v1, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;-><init>()V

    .line 77
    .local v1, "collectionItem":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setContent(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectedAt(J)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 79
    invoke-virtual {p0}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;->setCollectionType(Lcom/xiaomi/xmpush/thrift/ClientCollectionType;)Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    .line 81
    iget-object v4, p0, Lcom/xiaomi/push/mpcd/job/CollectionJob;->context:Landroid/content/Context;

    invoke-static {v4, v1, v3}, Lcom/xiaomi/push/mpcd/job/CollectionJob;->writeItemToFile(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/DataCollectionItem;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1    # "collectionItem":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    .end local v2    # "info":Ljava/lang/String;
    .end local v3    # "regSecret":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Lcom/xiaomi/push/mpcd/CDActionProvider;->getRegSecret()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

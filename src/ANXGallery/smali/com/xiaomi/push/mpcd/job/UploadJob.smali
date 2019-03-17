.class public Lcom/xiaomi/push/mpcd/job/UploadJob;
.super Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;
.source "UploadJob.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mOnlineConfig:Lcom/xiaomi/push/service/OnlineConfig;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/misc/ScheduledJobManager$Job;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    .line 52
    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 53
    invoke-static {p1}, Lcom/xiaomi/push/service/OnlineConfig;->getInstance(Landroid/content/Context;)Lcom/xiaomi/push/service/OnlineConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mOnlineConfig:Lcom/xiaomi/push/service/OnlineConfig;

    .line 54
    return-void
.end method

.method private readFromFile(Ljava/io/File;)Ljava/util/List;
    .locals 20
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/DataCollectionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getInstance()Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getCDActionProvider()Lcom/xiaomi/push/mpcd/CDActionProvider;

    move-result-object v3

    .line 197
    .local v3, "cdActionProvider":Lcom/xiaomi/push/mpcd/CDActionProvider;
    if-nez v3, :cond_0

    const-string v14, ""

    .line 198
    .local v14, "regSecret":Ljava/lang/String;
    :goto_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 199
    const/4 v15, 0x0

    .line 260
    :goto_1
    return-object v15

    .line 197
    .end local v14    # "regSecret":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Lcom/xiaomi/push/mpcd/CDActionProvider;->getRegSecret()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 202
    .restart local v14    # "regSecret":Ljava/lang/String;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v15, "result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/DataCollectionItem;>;"
    const/4 v5, 0x0

    .line 204
    .local v5, "fis":Ljava/io/FileInputStream;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v9, v0, [B

    .line 207
    .local v9, "lengthBuffer":[B
    const/4 v12, 0x0

    .line 208
    .local v12, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 210
    .local v10, "lock":Ljava/nio/channels/FileLock;
    sget-object v18, Lcom/xiaomi/push/mpcd/Constants;->cDataLock4Thread:Ljava/lang/Object;

    monitor-enter v18

    .line 213
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    const-string v19, "push_cdata.lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v11, "lockFile":Ljava/io/File;
    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 215
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v17, "rw"

    move-object/from16 v0, v17

    invoke-direct {v13, v11, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v13, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v10

    .line 218
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 221
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v6, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v16

    .line 222
    .local v16, "size":I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 250
    :cond_3
    if-eqz v10, :cond_4

    :try_start_3
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v17

    if-eqz v17, :cond_4

    .line 252
    :try_start_4
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 256
    :cond_4
    :goto_3
    :try_start_5
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v13}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v12, v13

    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v5, v6

    .line 259
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "lockFile":Ljava/io/File;
    .end local v16    # "size":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_4
    :try_start_6
    monitor-exit v18

    goto :goto_1

    :catchall_0
    move-exception v17

    :goto_5
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v17

    .line 227
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "size":I
    :cond_5
    :try_start_7
    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/misc/ByteUtils;->toInt([B)I

    move-result v8

    .line 230
    .local v8, "length":I
    new-array v2, v8, [B

    .line 231
    .local v2, "buffer":[B
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    .line 232
    move/from16 v0, v16

    if-ne v0, v8, :cond_3

    .line 237
    invoke-static {v14, v2}, Lcom/xiaomi/push/mpcd/CDataHelper;->decryptData(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 238
    .local v4, "decryptBytes":[B
    if-eqz v4, :cond_2

    array-length v0, v4

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 243
    new-instance v7, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;

    invoke-direct {v7}, Lcom/xiaomi/xmpush/thrift/DataCollectionItem;-><init>()V

    .line 244
    .local v7, "item":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    invoke-static {v7, v4}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertByteArrayToThriftObject(Lorg/apache/thrift/TBase;[B)V

    .line 245
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    .line 247
    .end local v2    # "buffer":[B
    .end local v4    # "decryptBytes":[B
    .end local v7    # "item":Lcom/xiaomi/xmpush/thrift/DataCollectionItem;
    .end local v8    # "length":I
    .end local v16    # "size":I
    :catch_0
    move-exception v17

    move-object v12, v13

    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v5, v6

    .line 250
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "lockFile":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v10, :cond_6

    :try_start_8
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v17

    if-eqz v17, :cond_6

    .line 252
    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 256
    :cond_6
    :goto_7
    :try_start_a
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    .line 250
    :catchall_1
    move-exception v17

    :goto_8
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v19

    if-eqz v19, :cond_7

    .line 252
    :try_start_b
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 256
    :cond_7
    :goto_9
    :try_start_c
    invoke-static {v5}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 253
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "size":I
    :catch_1
    move-exception v17

    goto :goto_3

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "lockFile":Ljava/io/File;
    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .end local v16    # "size":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v17

    goto :goto_7

    :catch_3
    move-exception v19

    goto :goto_9

    .line 259
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "size":I
    :catchall_2
    move-exception v17

    move-object v12, v13

    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 250
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .end local v16    # "size":I
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v17

    move-object v12, v13

    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_4
    move-exception v17

    move-object v12, v13

    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .line 247
    .end local v11    # "lockFile":Ljava/io/File;
    :catch_4
    move-exception v17

    goto :goto_6

    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v11    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v17

    move-object v12, v13

    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_6
.end method

.method private updateUpdateTimeStamp()V
    .locals 6

    .prologue
    .line 189
    iget-object v1, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_upload_data_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    return-void
.end method

.method private verify3GUploadData()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 153
    iget-object v8, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mOnlineConfig:Lcom/xiaomi/push/service/OnlineConfig;

    sget-object v9, Lcom/xiaomi/xmpush/thrift/ConfigKey;->Upload3GSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 154
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v5

    .line 155
    .local v5, "upload3GSwitch":Z
    if-nez v5, :cond_0

    .line 164
    :goto_0
    return v7

    .line 158
    :cond_0
    iget-object v8, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mOnlineConfig:Lcom/xiaomi/push/service/OnlineConfig;

    sget-object v9, Lcom/xiaomi/xmpush/thrift/ConfigKey;->Upload3GFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 159
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v9

    const v10, 0x69780

    invoke-virtual {v8, v9, v10}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v4

    .line 160
    .local v4, "period":I
    const v8, 0x15180

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 161
    iget-object v8, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "last_upload_data_timestamp"

    const-wide/16 v10, -0x1

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 162
    .local v2, "lastUpdateDataTimestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 164
    .local v0, "currentInSecond":J
    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    int-to-long v10, v4

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private verify4GUploadData()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 174
    iget-object v8, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mOnlineConfig:Lcom/xiaomi/push/service/OnlineConfig;

    sget-object v9, Lcom/xiaomi/xmpush/thrift/ConfigKey;->Upload4GSwitch:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 175
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lcom/xiaomi/push/service/OnlineConfig;->getBooleanValue(IZ)Z

    move-result v5

    .line 176
    .local v5, "upload4GSwitch":Z
    if-nez v5, :cond_0

    .line 185
    :goto_0
    return v7

    .line 179
    :cond_0
    iget-object v8, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mOnlineConfig:Lcom/xiaomi/push/service/OnlineConfig;

    sget-object v9, Lcom/xiaomi/xmpush/thrift/ConfigKey;->Upload4GFrequency:Lcom/xiaomi/xmpush/thrift/ConfigKey;

    .line 180
    invoke-virtual {v9}, Lcom/xiaomi/xmpush/thrift/ConfigKey;->getValue()I

    move-result v9

    const v10, 0x3f480

    invoke-virtual {v8, v9, v10}, Lcom/xiaomi/push/service/OnlineConfig;->getIntValue(II)I

    move-result v4

    .line 181
    .local v4, "period":I
    const v8, 0x15180

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 182
    iget-object v8, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "last_upload_data_timestamp"

    const-wide/16 v10, -0x1

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 183
    .local v2, "lastUpdateDataTimestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 185
    .local v0, "currentInSecond":J
    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    int-to-long v10, v4

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private verifyUploadDataWithoutWIFI()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 126
    iget-object v2, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->is4GConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/UploadJob;->verify4GUploadData()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 132
    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->is3GConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/UploadJob;->verify3GUploadData()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 136
    goto :goto_0

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/network/Network;->is2GConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 140
    goto :goto_0
.end method


# virtual methods
.method public getJobId()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 63
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const-string v8, "push_cdata.data"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v4, "file":Ljava/io/File;
    iget-object v7, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/network/Network;->isConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x1c7000

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/UploadJob;->verifyUploadDataWithoutWIFI()Z

    move-result v7

    if-nez v7, :cond_0

    .line 77
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    invoke-direct {p0, v4}, Lcom/xiaomi/push/mpcd/job/UploadJob;->readFromFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "dataCollectionItemList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/xmpush/thrift/DataCollectionItem;>;"
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/misc/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 87
    .local v6, "size":I
    const/16 v7, 0xfa0

    if-le v6, v7, :cond_2

    .line 88
    add-int/lit16 v7, v6, -0xfa0

    .line 89
    invoke-interface {v2, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 92
    :cond_2
    new-instance v3, Lcom/xiaomi/xmpush/thrift/XmPushActionCollectData;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/XmPushActionCollectData;-><init>()V

    .line 93
    .local v3, "dataMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionCollectData;
    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionCollectData;->setDataCollectionItems(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/XmPushActionCollectData;

    .line 96
    invoke-static {v3}, Lcom/xiaomi/xmpush/thrift/XmPushThriftSerializeUtils;->convertThriftObjectToBytes(Lorg/apache/thrift/TBase;)[B

    move-result-object v1

    .line 98
    .local v1, "data":[B
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->gZip([B)[B

    move-result-object v1

    .line 101
    new-instance v5, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    const-string v7, "-1"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>(Ljava/lang/String;Z)V

    .line 102
    .local v5, "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    sget-object v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->DataCollection:Lcom/xiaomi/xmpush/thrift/NotificationType;

    iget-object v7, v7, Lcom/xiaomi/xmpush/thrift/NotificationType;->value:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setType(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 103
    invoke-virtual {v5, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;->setBinaryExtra([B)Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    .line 105
    invoke-static {}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getInstance()Lcom/xiaomi/push/mpcd/CDActionProviderHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/push/mpcd/CDActionProviderHolder;->getCDActionProvider()Lcom/xiaomi/push/mpcd/CDActionProvider;

    move-result-object v0

    .line 106
    .local v0, "cdActionProvider":Lcom/xiaomi/push/mpcd/CDActionProvider;
    if-eqz v0, :cond_3

    .line 107
    sget-object v7, Lcom/xiaomi/xmpush/thrift/ActionType;->Notification:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-interface {v0, v5, v7, v9}, Lcom/xiaomi/push/mpcd/CDActionProvider;->uploadNotification(Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;Lcom/xiaomi/xmpush/thrift/ActionType;Lcom/xiaomi/xmpush/thrift/PushMetaInfo;)V

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/UploadJob;->updateUpdateTimeStamp()V

    .line 113
    .end local v0    # "cdActionProvider":Lcom/xiaomi/push/mpcd/CDActionProvider;
    .end local v1    # "data":[B
    .end local v3    # "dataMessage":Lcom/xiaomi/xmpush/thrift/XmPushActionCollectData;
    .end local v5    # "notification":Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;
    .end local v6    # "size":I
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 115
    iget-object v7, p0, Lcom/xiaomi/push/mpcd/job/UploadJob;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ltapn"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

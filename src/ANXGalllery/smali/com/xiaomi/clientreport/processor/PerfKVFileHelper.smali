.class public Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;
.super Ljava/lang/Object;
.source "PerfKVFileHelper.java"


# direct methods
.method private static buildPerfClientReport(Lcom/xiaomi/clientreport/data/PerfClientReport;Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;
    .locals 4
    .param p0, "perfClientReport"    # Lcom/xiaomi/clientreport/data/PerfClientReport;
    .param p1, "oldValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 275
    if-nez p0, :cond_0

    move-object p0, v1

    .line 282
    .end local p0    # "perfClientReport":Lcom/xiaomi/clientreport/data/PerfClientReport;
    :goto_0
    return-object p0

    .line 276
    .restart local p0    # "perfClientReport":Lcom/xiaomi/clientreport/data/PerfClientReport;
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->parseValueStr(Ljava/lang/String;)[J

    move-result-object v0

    .line 277
    .local v0, "values":[J
    if-nez v0, :cond_1

    move-object p0, v1

    .line 278
    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    .line 281
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    goto :goto_0
.end method

.method public static extractToDatas(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v10, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v10

    .line 195
    :cond_1
    const/4 v7, 0x0

    .line 196
    .local v7, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v4, 0x0

    .line 197
    .local v4, "lock":Ljava/nio/channels/FileLock;
    const/4 v5, 0x0

    .line 199
    .local v5, "lockFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".lock"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v5    # "lockFile":Ljava/io/File;
    .local v6, "lockFile":Ljava/io/File;
    :try_start_1
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 201
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v8, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v8, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v4

    .line 203
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 204
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 205
    .local v3, "line":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 206
    const-string v12, "%%%"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 207
    .local v11, "strs":[Ljava/lang/String;
    array-length v12, v11

    const/4 v13, 0x2

    if-lt v12, v13, :cond_2

    .line 208
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 209
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->spiltKeyForModel(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object v9

    .line 210
    .local v9, "perfClientReport":Lcom/xiaomi/clientreport/data/PerfClientReport;
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v9, v12}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->buildPerfClientReport(Lcom/xiaomi/clientreport/data/PerfClientReport;Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object v9

    .line 211
    if-eqz v9, :cond_2

    .line 212
    invoke-virtual {v9}, Lcom/xiaomi/clientreport/data/PerfClientReport;->toJsonString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 216
    .end local v9    # "perfClientReport":Lcom/xiaomi/clientreport/data/PerfClientReport;
    .end local v11    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v0, v1

    .line 217
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 221
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 226
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    if-eqz v5, :cond_0

    .line 229
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 219
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 221
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 226
    :cond_5
    :goto_4
    invoke-static {v8}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    if-eqz v6, :cond_8

    .line 229
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 222
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 222
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "lockFile":Ljava/io/File;
    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "lockFile":Ljava/io/File;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 221
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 226
    :cond_6
    :goto_6
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    if-eqz v5, :cond_7

    .line 229
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_7
    throw v12

    .line 222
    :catch_3
    move-exception v2

    .line 223
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "lockFile":Ljava/io/File;
    .restart local v6    # "lockFile":Ljava/io/File;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    goto :goto_5

    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v12

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 216
    .end local v3    # "line":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v5    # "lockFile":Ljava/io/File;
    .restart local v6    # "lockFile":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    goto :goto_2

    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "lockFile":Ljava/io/File;
    .end local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "lockFile":Ljava/io/File;
    .restart local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :cond_8
    move-object v5, v6

    .end local v6    # "lockFile":Ljava/io/File;
    .restart local v5    # "lockFile":Ljava/io/File;
    move-object v7, v8

    .end local v8    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "lockRandomFile":Ljava/io/RandomAccessFile;
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

.method public static generateKey(Lcom/xiaomi/clientreport/data/PerfClientReport;)Ljava/lang/String;
    .locals 2
    .param p0, "clientReport"    # Lcom/xiaomi/clientreport/data/PerfClientReport;

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->production:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->clientInterfaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget v1, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->reportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget v1, p0, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static parseValueStr(Ljava/lang/String;)[J
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 114
    new-array v2, v4, [J

    .line 116
    .local v2, "values":[J
    :try_start_0
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "strs":[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, v4, :cond_0

    .line 118
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 119
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "strs":[Ljava/lang/String;
    .end local v2    # "values":[J
    :cond_0
    :goto_0
    return-object v2

    .line 121
    .restart local v2    # "values":[J
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    .line 123
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;[Lcom/xiaomi/clientreport/data/BaseClientReport;)V
    .locals 20
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "baseClientReports"    # [Lcom/xiaomi/clientreport/data/BaseClientReport;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    if-lez v14, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v12, 0x0

    .line 51
    .local v12, "lockRandomFile":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .line 54
    .local v10, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".lock"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v11, "lockFile":Ljava/io/File;
    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->createFileQuietly(Ljava/io/File;)Z

    .line 56
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v14, "rw"

    invoke-direct {v13, v11, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v13, "lockRandomFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v10

    .line 59
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->readFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 61
    .local v2, "fileLines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    aget-object v8, p1, v15

    .line 62
    .local v8, "baseClientReport":Lcom/xiaomi/clientreport/data/BaseClientReport;
    if-eqz v8, :cond_2

    .line 63
    move-object v0, v8

    check-cast v0, Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-object v14, v0

    invoke-static {v14}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->generateKey(Lcom/xiaomi/clientreport/data/PerfClientReport;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "key":Ljava/lang/String;
    move-object v0, v8

    check-cast v0, Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-object v14, v0

    iget-wide v4, v14, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    .line 65
    .local v4, "perfCounts":J
    check-cast v8, Lcom/xiaomi/clientreport/data/PerfClientReport;

    .end local v8    # "baseClientReport":Lcom/xiaomi/clientreport/data/BaseClientReport;
    iget-wide v6, v8, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfLatencies:J

    .line 66
    .local v6, "perfLatencies":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v14, v4, v18

    if-lez v14, :cond_2

    const-wide/16 v18, 0x0

    cmp-long v14, v6, v18

    if-gez v14, :cond_3

    .line 61
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "perfCounts":J
    .end local v6    # "perfLatencies":J
    :cond_2
    :goto_2
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_1

    .line 69
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "perfCounts":J
    .restart local v6    # "perfLatencies":J
    :cond_3
    invoke-static/range {v2 .. v7}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->putInMemeory(Ljava/util/HashMap;Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 74
    .end local v2    # "fileLines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "perfCounts":J
    .end local v6    # "perfLatencies":J
    :catch_0
    move-exception v9

    move-object v12, v13

    .line 75
    .end local v11    # "lockFile":Ljava/io/File;
    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v9, "e":Ljava/lang/Throwable;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_2
    const-string v14, "failed to write perf to file "

    invoke-static {v14}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 79
    :try_start_3
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_4
    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 73
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "fileLines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->writeToFile(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 79
    :try_start_5
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 84
    :cond_6
    :goto_5
    invoke-static {v13}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v12, v13

    .line 85
    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 80
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v9

    .line 81
    .local v9, "e":Ljava/io/IOException;
    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 80
    .end local v2    # "fileLines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "lockFile":Ljava/io/File;
    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .local v9, "e":Ljava/lang/Throwable;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v9

    .line 81
    .local v9, "e":Ljava/io/IOException;
    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 77
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_6
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 79
    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 84
    :cond_7
    :goto_7
    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v14

    .line 80
    :catch_3
    move-exception v9

    .line 81
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-static {v9}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 77
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v11    # "lockFile":Ljava/io/File;
    .restart local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "lockRandomFile":Ljava/io/RandomAccessFile;
    .restart local v12    # "lockRandomFile":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 74
    .end local v11    # "lockFile":Ljava/io/File;
    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method private static putInMemeory(Ljava/util/HashMap;Ljava/lang/String;JJ)V
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # J
    .param p4, "latency"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "fileLines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 90
    .local v7, "oldValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 91
    .local v6, "newValue":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-virtual {p0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {v7}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->parseValueStr(Ljava/lang/String;)[J

    move-result-object v8

    .line 96
    .local v8, "oldValues":[J
    if-eqz v8, :cond_1

    const/4 v9, 0x0

    aget-wide v10, v8, v9

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    const/4 v9, 0x1

    aget-wide v10, v8, v9

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 97
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    :goto_1
    invoke-virtual {p0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_2
    const/4 v9, 0x0

    aget-wide v10, v8, v9

    add-long v2, p2, v10

    .line 100
    .local v2, "newCount":J
    const/4 v9, 0x1

    aget-wide v10, v8, v9

    add-long v4, p4, v10

    .line 101
    .local v4, "newLatence":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static readFromFile(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v4

    .line 170
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 172
    .local v3, "line":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 173
    const-string v6, "%%%"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "strs":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 175
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 176
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 181
    .end local v5    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 182
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 185
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 184
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 181
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static spiltKey(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static spiltKeyForModel(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/PerfClientReport;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, "perfClientReport":Lcom/xiaomi/clientreport/data/PerfClientReport;
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/clientreport/processor/PerfKVFileHelper;->spiltKey(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "strs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 252
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v2, v3

    .line 253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-static {}, Lcom/xiaomi/clientreport/data/PerfClientReport;->getBlankInstance()Lcom/xiaomi/clientreport/data/PerfClientReport;

    move-result-object v1

    .line 255
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/xiaomi/clientreport/data/PerfClientReport;->production:I

    .line 256
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/xiaomi/clientreport/data/PerfClientReport;->clientInterfaceId:Ljava/lang/String;

    .line 257
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/xiaomi/clientreport/data/PerfClientReport;->reportType:I

    .line 258
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/xiaomi/clientreport/data/PerfClientReport;->code:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "parse per key error"

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static writeToFile(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "fileLines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 136
    .local v6, "writer":Ljava/io/BufferedWriter;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 145
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 147
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 148
    .local v5, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 149
    .local v4, "line":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 151
    .restart local v5    # "value":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%%%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v7, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 155
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 156
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_3
    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v6, v7

    .line 159
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 158
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/file/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 155
    :catch_1
    move-exception v0

    goto :goto_2
.end method

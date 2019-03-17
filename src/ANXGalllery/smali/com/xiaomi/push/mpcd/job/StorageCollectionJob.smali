.class public Lcom/xiaomi/push/mpcd/job/StorageCollectionJob;
.super Lcom/xiaomi/push/mpcd/job/CollectionJob;
.source "StorageCollectionJob.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/CollectionJob;-><init>(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method private getNum(D)D
    .locals 5
    .param p1, "size"    # D

    .prologue
    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, "value":I
    :goto_0
    int-to-double v2, v0

    cmpg-double v1, v2, p1

    if-gez v1, :cond_0

    .line 99
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    int-to-double v2, v0

    return-wide v2
.end method

.method private getRamSize()Ljava/lang/String;
    .locals 16

    .prologue
    .line 45
    const-string v8, "0"

    .line 46
    .local v8, "ramSize":Ljava/lang/String;
    const-string v7, "/proc/meminfo"

    .line 47
    .local v7, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 52
    .local v5, "fileReader":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v2, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "memTotal":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 55
    const-string v9, "\\s+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v9, v0

    const/4 v12, 0x2

    if-lt v9, v12, :cond_1

    .line 57
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v10, v12, v14

    .line 58
    .local v10, "total_memory":D
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v9, v10, v12

    if-lez v9, :cond_0

    .line 59
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    .line 61
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 68
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v10    # "total_memory":D
    :cond_1
    if-eqz v2, :cond_2

    .line 70
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "memTotal":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "GB"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 64
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v8, "0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    if-eqz v1, :cond_2

    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v9

    goto :goto_0

    .line 68
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v1, :cond_3

    .line 70
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 72
    :cond_3
    :goto_3
    throw v9

    .line 71
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "memTotal":Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_0

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .end local v6    # "memTotal":Ljava/lang/String;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v12

    goto :goto_3

    .line 68
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 64
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getRomSize()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 81
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 82
    .local v0, "dataPath":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/xiaomi/push/mpcd/job/StorageCollectionJob;->getSize(Ljava/io/File;)J

    move-result-wide v2

    .line 83
    .local v2, "dataSize":J
    long-to-double v6, v2

    div-double/2addr v6, v8

    div-double/2addr v6, v8

    div-double v4, v6, v8

    .line 84
    .local v4, "size":D
    invoke-direct {p0, v4, v5}, Lcom/xiaomi/push/mpcd/job/StorageCollectionJob;->getNum(D)D

    move-result-wide v4

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "GB"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSize(Ljava/io/File;)J
    .locals 8
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 89
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 90
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v0, v7

    .line 91
    .local v0, "blockCount":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 92
    .local v2, "blockSize":J
    mul-long v4, v2, v0

    .line 93
    .local v4, "size":J
    return-wide v4
.end method


# virtual methods
.method public collectInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ram:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/StorageCollectionJob;->getRamSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    invoke-direct {p0}, Lcom/xiaomi/push/mpcd/job/StorageCollectionJob;->getRomSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "info":Ljava/lang/String;
    return-object v0
.end method

.method public getCollectionType()Lcom/xiaomi/xmpush/thrift/ClientCollectionType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ClientCollectionType;->Storage:Lcom/xiaomi/xmpush/thrift/ClientCollectionType;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x17

    return v0
.end method

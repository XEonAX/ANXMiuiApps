.class public Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;
.super Ljava/lang/Object;
.source "SearchStatStorageHelper.java"


# direct methods
.method public static clearSavedLogs()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->getLogFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "SearchStatStorageHelper"

    const-string v2, "Delete statistic log file"

    invoke-static {v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method private static getLogFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "search_log.json"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedLogs()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/search/statistics/SearchStatLogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v3, 0x0

    .line 65
    .local v3, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->getLogFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper$1;

    invoke-direct {v5}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper$1;-><init>()V

    .line 70
    invoke-virtual {v5}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 67
    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .local v2, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    :goto_0
    return-object v2

    .line 72
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "SearchStatStorageHelper"

    const-string v6, "Read saved logs from cache failed!"

    invoke-static {v5, v6}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 80
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 76
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 78
    :goto_4
    throw v5

    .line 77
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 75
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 72
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method public static saveLogItem(Lcom/miui/gallery/search/statistics/SearchStatLogItem;)I
    .locals 12
    .param p0, "logItem"    # Lcom/miui/gallery/search/statistics/SearchStatLogItem;

    .prologue
    const/4 v7, 0x0

    .line 27
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->getLogFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 30
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/io/File;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v8}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 31
    const-string v8, "SearchStatStorageHelper"

    const-string v9, "Clear former log file due to too many logs"

    invoke-static {v8, v9}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 39
    .local v5, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/search/statistics/SearchStatStorageHelper;->getSavedLogs()Ljava/util/ArrayList;

    move-result-object v4

    .line 40
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    if-nez v4, :cond_1

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    const/4 v8, 0x1

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    :cond_1
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "data":Ljava/lang/String;
    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .end local v5    # "writer":Ljava/io/OutputStreamWriter;
    .local v6, "writer":Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 49
    const-string v8, "SearchStatStorageHelper"

    const-string v9, "Insert item [%s] succeed, now total %d items"

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, p0, v10}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    .line 55
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    move-object v5, v6

    .line 59
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v5    # "writer":Ljava/io/OutputStreamWriter;
    :goto_2
    return v7

    .line 33
    .end local v5    # "writer":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "SearchStatStorageHelper"

    invoke-static {v8, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v1

    .line 52
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v8, "SearchStatStorageHelper"

    const-string v9, "Insert item [%s] failed"

    invoke-static {v8, v9}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 56
    :catch_2
    move-exception v8

    goto :goto_2

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 55
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 57
    :goto_5
    throw v7

    .line 56
    .end local v5    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v5    # "writer":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v8

    goto :goto_5

    .line 54
    .end local v5    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/search/statistics/SearchStatLogItem;>;"
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v5    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 51
    .end local v5    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "writer":Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v5    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

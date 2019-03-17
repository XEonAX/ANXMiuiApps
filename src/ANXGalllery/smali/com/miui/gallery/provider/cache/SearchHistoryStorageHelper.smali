.class public Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;
.super Ljava/lang/Object;
.source "SearchHistoryStorageHelper.java"


# direct methods
.method public static addHistoryItem(Lcom/miui/gallery/provider/cache/SearchHistoryItem;Ljava/util/List;)I
    .locals 2
    .param p0, "historyItem"    # Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "outHistories":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->getSavedHistories()Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-static {v0}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->saveHistories(Ljava/util/List;)I

    move-result v1

    return v1

    .line 37
    :cond_1
    invoke-static {v0, p0}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->removeDupHistoryItem(Ljava/util/List;Lcom/miui/gallery/provider/cache/SearchHistoryItem;)I

    goto :goto_0
.end method

.method public static clearSavedHistories()I
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->getHistoryFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "SearchHistoryStorageHelper"

    const-string v2, "Delete history log file"

    invoke-static {v1, v2}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x1

    .line 82
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getHistoryFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/gallery/util/StorageUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "search_histories.json"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedHistories()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 47
    .local v3, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->getHistoryFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 49
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper$1;

    invoke-direct {v5}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper$1;-><init>()V

    .line 52
    invoke-virtual {v5}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 49
    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .local v2, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    :goto_0
    return-object v2

    .line 54
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "SearchHistoryStorageHelper"

    const-string v6, "Read saved logs from cache failed!"

    invoke-static {v5, v6}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 62
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 58
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 60
    :goto_4
    throw v5

    .line 59
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
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

    .line 57
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 54
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method public static removeDupHistoryItem(Ljava/util/List;Lcom/miui/gallery/provider/cache/SearchHistoryItem;)I
    .locals 6
    .param p1, "historyItem"    # Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ">;",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "histories":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    const/4 v2, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "sameItem":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;

    .line 90
    .local v0, "oldItem":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    iget-object v4, v0, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->intentActionURI:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/gallery/provider/cache/SearchHistoryItem;->intentActionURI:Ljava/lang/String;

    .line 91
    invoke-static {v5}, Lcom/miui/gallery/util/StringUtils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    move-object v1, v0

    .line 96
    .end local v0    # "oldItem":Lcom/miui/gallery/provider/cache/SearchHistoryItem;
    :cond_1
    if-eqz v1, :cond_2

    .line 97
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 99
    :cond_2
    return v2
.end method

.method private static saveHistories(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/provider/cache/SearchHistoryItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "histories":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/provider/cache/SearchHistoryItem;>;"
    const/4 v5, 0x0

    .line 103
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v5

    .line 106
    :cond_1
    const/4 v3, 0x0

    .line 108
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 109
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "data":Ljava/lang/String;
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/miui/gallery/provider/cache/SearchHistoryStorageHelper;->getHistoryFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 113
    const-string v6, "SearchHistoryStorageHelper"

    const-string v7, "Save histories [%s] succeed"

    invoke-static {v6, v7, p0}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    const/4 v5, 0x1

    .line 119
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v6

    goto :goto_0

    .line 115
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "SearchHistoryStorageHelper"

    const-string v7, "Save histories [%s] failed"

    invoke-static {v6, v7, p0}, Lcom/miui/gallery/search/utils/SearchLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v6

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 119
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 121
    :goto_3
    throw v5

    .line 120
    :catch_3
    move-exception v6

    goto :goto_3

    .line 118
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 115
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method

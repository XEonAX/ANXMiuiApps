.class Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;
.super Landroid/os/AsyncTask;
.source "ShareComponentSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ShareComponentSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/ShareComponentSorter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter;Lcom/miui/gallery/util/ShareComponentSorter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;
    .param p2, "x1"    # Lcom/miui/gallery/util/ShareComponentSorter$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;-><init>(Lcom/miui/gallery/util/ShareComponentSorter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 251
    .local v4, "start":J
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v8}, Lcom/miui/gallery/util/ShareComponentSorter;->access$500(Lcom/miui/gallery/util/ShareComponentSorter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v3, "file":Ljava/io/File;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 254
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v8}, Lcom/miui/gallery/util/ShareComponentSorter;->access$800(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 255
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v8}, Lcom/miui/gallery/util/ShareComponentSorter;->access$800(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 256
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    invoke-static {v8}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->toJson(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 259
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 258
    :cond_0
    :try_start_1
    const-string v8, "ShareComponentSorter"

    const-string/jumbo v10, "write %d records to file"

    iget-object v11, p0, Lcom/miui/gallery/util/ShareComponentSorter$SaveTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v11}, Lcom/miui/gallery/util/ShareComponentSorter;->access$800(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    const/4 v6, 0x0

    .line 263
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_2
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v7, "writer":Ljava/io/FileWriter;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 269
    if-eqz v7, :cond_3

    .line 271
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v6, v7

    .line 277
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    const-string v8, "ShareComponentSorter"

    const-string/jumbo v9, "write to file: %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const/4 v8, 0x0

    return-object v8

    .line 272
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "ShareComponentSorter"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v7

    .line 274
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 267
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "ShareComponentSorter"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 269
    if-eqz v6, :cond_1

    .line 271
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 272
    :catch_2
    move-exception v1

    .line 273
    const-string v8, "ShareComponentSorter"

    invoke-static {v8, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 269
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    :goto_3
    if-eqz v6, :cond_2

    .line 271
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 274
    :cond_2
    :goto_4
    throw v8

    .line 272
    :catch_3
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "ShareComponentSorter"

    invoke-static {v9, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 269
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 266
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :cond_3
    move-object v6, v7

    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method

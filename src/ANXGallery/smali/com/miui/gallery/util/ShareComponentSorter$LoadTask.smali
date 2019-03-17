.class Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;
.super Landroid/os/AsyncTask;
.source "ShareComponentSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ShareComponentSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Lcom/miui/gallery/util/ShareComponentSorter$Tag;",
        "Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/ShareComponentSorter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter;Lcom/miui/gallery/util/ShareComponentSorter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;
    .param p2, "x1"    # Lcom/miui/gallery/util/ShareComponentSorter$1;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;-><init>(Lcom/miui/gallery/util/ShareComponentSorter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->doInBackground([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/Map;
    .locals 20
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/util/ShareComponentSorter$Tag;",
            "Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 141
    .local v14, "start":J
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v13, "records":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;>;"
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/ShareComponentSorter;->access$500(Lcom/miui/gallery/util/ShareComponentSorter;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 144
    const-string v16, "ShareComponentSorter"

    const-string v17, "no file found, create a empty record"

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-object v13

    .line 147
    :cond_0
    const-string v16, "ShareComponentSorter"

    const-string v17, "read records from file"

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 152
    .local v10, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .end local v10    # "reader":Ljava/io/FileReader;
    .local v11, "reader":Ljava/io/FileReader;
    const/16 v16, 0x200

    :try_start_1
    move/from16 v0, v16

    new-array v3, v0, [C

    .line 154
    .local v3, "buffer":[C
    :goto_1
    invoke-virtual {v11, v3}, Ljava/io/FileReader;->read([C)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 157
    .end local v3    # "buffer":[C
    :catch_0
    move-exception v5

    move-object v10, v11

    .line 158
    .end local v11    # "reader":Ljava/io/FileReader;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "reader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v16, "ShareComponentSorter"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    if-eqz v10, :cond_1

    .line 164
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 171
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "raw":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 173
    const-string v16, "ShareComponentSorter"

    const-string v17, "record file is empty, skip"

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v9    # "raw":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "buffer":[C
    .restart local v11    # "reader":Ljava/io/FileReader;
    :cond_2
    if-eqz v11, :cond_8

    .line 164
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, v11

    .line 167
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 165
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v5

    .line 166
    .local v5, "e":Ljava/io/IOException;
    const-string v16, "ShareComponentSorter"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v11

    .line 167
    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 165
    .end local v3    # "buffer":[C
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 166
    .local v5, "e":Ljava/io/IOException;
    const-string v16, "ShareComponentSorter"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 159
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 160
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v16, "ShareComponentSorter"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    if-eqz v10, :cond_1

    .line 164
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 165
    :catch_4
    move-exception v5

    .line 166
    const-string v16, "ShareComponentSorter"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_5
    if-eqz v10, :cond_3

    .line 164
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 167
    :cond_3
    :goto_6
    throw v16

    .line 165
    :catch_5
    move-exception v5

    .line 166
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v17, "ShareComponentSorter"

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 177
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v9    # "raw":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 179
    .local v8, "invalidFile":Z
    :try_start_8
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "array":Lorg/json/JSONArray;
    const-string v16, "ShareComponentSorter"

    const-string/jumbo v17, "start parsing %d records"

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    .line 182
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->fromJson(Lorg/json/JSONObject;)Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;

    move-result-object v12

    .line 183
    .local v12, "record":Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
    if-eqz v12, :cond_5

    .line 184
    new-instance v16, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    invoke-static {v12}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->access$600(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v12}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->access$700(Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    .line 181
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 186
    :cond_5
    const/4 v8, 0x1

    goto :goto_8

    .line 189
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v12    # "record":Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;
    :catch_6
    move-exception v5

    .line 190
    .local v5, "e":Lorg/json/JSONException;
    const/4 v8, 0x1

    .line 191
    const-string v16, "ShareComponentSorter"

    const-string v17, "read history failed, abort:"

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v16, "ShareComponentSorter"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_6
    if-eqz v8, :cond_7

    .line 196
    const-string v16, "ShareComponentSorter"

    const-string v17, "file is illegal, delete file: %b"

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    :cond_7
    const-string v16, "ShareComponentSorter"

    const-string v17, "read from file: %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 162
    .end local v8    # "invalidFile":Z
    .end local v9    # "raw":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v16

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_5

    .line 159
    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v11    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v5

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_4

    .line 157
    :catch_8
    move-exception v5

    goto/16 :goto_2

    .end local v10    # "reader":Ljava/io/FileReader;
    .restart local v3    # "buffer":[C
    .restart local v11    # "reader":Ljava/io/FileReader;
    :cond_8
    move-object v10, v11

    .end local v11    # "reader":Ljava/io/FileReader;
    .restart local v10    # "reader":Ljava/io/FileReader;
    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/util/ShareComponentSorter$Tag;",
            "Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "records":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 205
    const-string v3, "ShareComponentSorter"

    const-string v4, "initialized finish."

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v3, p1}, Lcom/miui/gallery/util/ShareComponentSorter;->access$802(Lcom/miui/gallery/util/ShareComponentSorter;Ljava/util/Map;)Ljava/util/Map;

    .line 207
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter;->access$900(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter;->access$900(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    const-string v3, "ShareComponentSorter"

    const-string v4, "has temp records, do transfer"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter;->access$900(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 211
    .local v2, "time":Ljava/lang/Long;
    iget-object v6, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->access$1000(Lcom/miui/gallery/util/ShareComponentSorter$Tag;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->access$200(Lcom/miui/gallery/util/ShareComponentSorter$Tag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v3, v8, v9}, Lcom/miui/gallery/util/ShareComponentSorter;->access$1100(Lcom/miui/gallery/util/ShareComponentSorter;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 216
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v2    # "time":Ljava/lang/Long;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter;->access$1200(Lcom/miui/gallery/util/ShareComponentSorter;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    const-string v3, "ShareComponentSorter"

    const-string v4, "requested save when initializing, do save"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-virtual {v3}, Lcom/miui/gallery/util/ShareComponentSorter;->save()V

    .line 219
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/gallery/util/ShareComponentSorter;->access$1202(Lcom/miui/gallery/util/ShareComponentSorter;Z)Z

    .line 222
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/util/ShareComponentSorter$LoadTask;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v3}, Lcom/miui/gallery/util/ShareComponentSorter;->access$1300(Lcom/miui/gallery/util/ShareComponentSorter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;

    .line 223
    .local v1, "listener":Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;
    invoke-interface {v1}, Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;->onInitialized()V

    goto :goto_1

    .line 225
    .end local v1    # "listener":Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;
    :cond_3
    return-void
.end method

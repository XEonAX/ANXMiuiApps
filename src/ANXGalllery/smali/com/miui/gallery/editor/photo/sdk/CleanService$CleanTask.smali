.class Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;
.super Landroid/os/AsyncTask;
.source "CleanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/sdk/CleanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/job/JobParameters;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/editor/photo/sdk/CleanService;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/editor/photo/sdk/CleanService;Lcom/miui/gallery/editor/photo/sdk/CleanService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/editor/photo/sdk/CleanService;
    .param p2, "x1"    # Lcom/miui/gallery/editor/photo/sdk/CleanService$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;-><init>(Lcom/miui/gallery/editor/photo/sdk/CleanService;)V

    return-void
.end method

.method private delete(Ljava/io/File;)Z
    .locals 18
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "file can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v15, 0x1

    .line 107
    .local v15, "success":Z
    :goto_0
    const-string v2, "CleanService.CleanTask"

    const-string v3, "deleting file: %s. deleted: %b"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .end local v15    # "success":Z
    :cond_2
    :goto_1
    return v15

    .line 106
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 111
    const-wide/16 v12, -0x1

    .line 113
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 115
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    .line 113
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 116
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 118
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v12

    .line 122
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_6
    const-string v2, "CleanService.CleanTask"

    const-string v3, "cleaning directory(%d)"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 128
    .local v11, "mediaItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_9

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;

    invoke-virtual {v2}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const-string v5, "parent=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 131
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    .line 129
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 132
    const-string v3, "CleanService.CleanTask"

    const-string v4, "mark children of %d, count: %d"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-nez v9, :cond_7

    const/4 v2, -0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    if-eqz v9, :cond_9

    .line 135
    :goto_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 139
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 122
    .end local v11    # "mediaItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 132
    .restart local v11    # "mediaItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_2

    .line 139
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_9
    const/4 v15, 0x1

    .line 145
    .restart local v15    # "success":Z
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_2

    aget-object v10, v3, v2

    .line 146
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, "path":Ljava/lang/String;
    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "external"

    .line 149
    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "_data=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    .line 148
    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 151
    .local v8, "count":I
    const-string v5, "CleanService.CleanTask"

    const-string v6, "deleted %d item from MediaProvider"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    if-lez v8, :cond_a

    .line 153
    invoke-interface {v11, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->delete(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v15, v5

    .line 145
    .end local v8    # "count":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 156
    .restart local v8    # "count":I
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 159
    .end local v8    # "count":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->delete(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v15, v5

    goto :goto_5

    .line 164
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "mediaItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "id":J
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "success":Z
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Landroid/app/job/JobParameters;

    .prologue
    const/4 v4, 0x0

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "failed":Z
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;

    aget-object v5, p1, v4

    invoke-static {v3, v5}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->access$100(Lcom/miui/gallery/editor/photo/sdk/CleanService;Landroid/app/job/JobParameters;)Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v3, "CleanService.CleanTask"

    const-string/jumbo v5, "start clean files: %s"

    invoke-static {v3, v5, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 84
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->delete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 89
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    const-string v3, "CleanService.CleanTask"

    const-string v5, "job finish, reschedule ? %b"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;

    aget-object v4, p1, v4

    invoke-virtual {v3, v4, v0}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 91
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;->this$0:Lcom/miui/gallery/editor/photo/sdk/CleanService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/editor/photo/sdk/CleanService;->access$202(Lcom/miui/gallery/editor/photo/sdk/CleanService;Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;)Lcom/miui/gallery/editor/photo/sdk/CleanService$CleanTask;

    .line 98
    return-void
.end method

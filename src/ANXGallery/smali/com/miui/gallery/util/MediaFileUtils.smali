.class public Lcom/miui/gallery/util/MediaFileUtils;
.super Ljava/lang/Object;
.source "MediaFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/MediaFileUtils$FileType;
    }
.end annotation


# direct methods
.method private static varargs deleteFile(I[Ljava/io/File;)I
    .locals 13
    .param p0, "deleteStrategy"    # I
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 145
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v5

    .line 149
    :cond_1
    and-int/lit8 v6, p0, 0x2

    if-lez v6, :cond_6

    .line 150
    array-length v7, p1

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_6

    aget-object v1, p1, v6

    .line 151
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_3

    .line 150
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/gallery/data/LocalUbifocus;->isUbifocusImage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 158
    invoke-static {v2}, Lcom/miui/gallery/data/LocalUbifocus;->getUbifocusSubFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 161
    .local v4, "subFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/LocalUbifocus$SubFile;

    .line 162
    .local v3, "subFile":Lcom/miui/gallery/data/LocalUbifocus$SubFile;
    invoke-virtual {v3}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 163
    sget-object v9, Lcom/miui/gallery/util/MediaFileUtils$FileType;->UBI_SUB_FILE:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    new-array v10, v12, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_4

    .line 164
    const-string v9, "MediaFileUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Delete ubi sub file failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/miui/gallery/data/LocalUbifocus$SubFile;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 170
    .end local v3    # "subFile":Lcom/miui/gallery/data/LocalUbifocus$SubFile;
    .end local v4    # "subFiles":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/data/LocalUbifocus$SubFile;>;"
    :cond_5
    invoke-static {v2}, Lcom/miui/gallery/util/FileUtils;->getImageRelativeDngFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "dngFile":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 172
    new-array v8, v12, [Ljava/io/File;

    aput-object v0, v8, v5

    invoke-static {v5, v8}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile(I[Ljava/io/File;)I

    move-result v8

    if-gtz v8, :cond_2

    .line 173
    const-string v8, "MediaFileUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delete dng file failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 179
    .end local v0    # "dngFile":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_6
    and-int/lit8 v5, p0, 0x1

    if-lez v5, :cond_7

    .line 180
    invoke-static {p1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileFromMediaProvider([Ljava/io/File;)I

    move-result v5

    goto/16 :goto_0

    .line 183
    :cond_7
    invoke-static {p1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    move-result v5

    goto/16 :goto_0
.end method

.method public static varargs deleteFile([Ljava/io/File;)I
    .locals 7
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "count":I
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, p0, v5

    .line 294
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 293
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 300
    goto :goto_1

    .line 303
    :cond_1
    invoke-static {v1}, Lcom/miui/gallery/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v2

    .line 304
    .local v2, "result":Z
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 306
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "result":Z
    :cond_3
    return v0
.end method

.method private static varargs deleteFileFromMediaProvider([Ljava/io/File;)I
    .locals 11
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    const/16 v10, 0x64

    .line 192
    if-eqz p0, :cond_0

    array-length v5, p0

    if-gtz v5, :cond_2

    .line 193
    :cond_0
    const/4 v3, 0x0

    .line 212
    :cond_1
    :goto_0
    return v3

    .line 196
    :cond_2
    const/4 v3, 0x0

    .line 197
    .local v3, "rows":I
    array-length v5, p0

    if-gt v5, v10, :cond_3

    .line 198
    invoke-static {p0}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileFromMediaProviderBatch([Ljava/io/File;)I

    move-result v3

    goto :goto_0

    .line 200
    :cond_3
    const/4 v1, 0x0

    .line 201
    .local v1, "batchStartPosition":I
    :goto_1
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 202
    move v4, v1

    .line 203
    .local v4, "startPosition":I
    array-length v5, p0

    sub-int/2addr v5, v4

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 204
    .local v2, "executeCount":I
    add-int v1, v4, v2

    .line 206
    const-string v5, "MediaFileUtils"

    const-string v6, "Execute from %d to %d, total %d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-static {p0, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 208
    .local v0, "batchFiles":[Ljava/io/File;
    invoke-static {v0}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileFromMediaProviderBatch([Ljava/io/File;)I

    move-result v5

    add-int/2addr v3, v5

    .line 209
    const-string v5, "MediaFileUtils"

    const-string v6, "Done execute from %d to %d, total %d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static varargs deleteFileFromMediaProviderBatch([Ljava/io/File;)I
    .locals 24
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    .line 216
    const-string v17, "MediaFileUtils"

    const-string v18, "Start batch deleting %s files from media provider"

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const/4 v4, 0x0

    .line 218
    .local v4, "deleteFileCount":I
    const/4 v3, 0x0

    .line 219
    .local v3, "checkedDeleteFileCount":I
    const/4 v15, 0x0

    .line 221
    .local v15, "rowCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v11, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    move-result v4

    .line 231
    const-string v17, "external"

    invoke-static/range {v17 .. v17}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 232
    .local v16, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v7, "fileSelectionBuilder":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v10, "logBuilder":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 235
    .local v9, "isFirst":Z
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v6, p0, v17

    .line 236
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_0

    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 238
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 239
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    const-string v20, "%s LIKE \'%s%\'"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "_data"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 240
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    .line 241
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    .line 239
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v19, "directory:["

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "],"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 244
    :cond_1
    if-eqz v9, :cond_2

    .line 245
    const/4 v9, 0x0

    .line 249
    :goto_2
    const-string v19, "\'"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 247
    :cond_2
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 254
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 255
    const/16 v17, 0x0

    const-string v18, "_data IN ("

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 257
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    .line 258
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    .line 256
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 264
    :try_start_0
    const-string v17, "MediaFileUtils"

    const-string v18, "Start deleting %s"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v17

    .line 266
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "media"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v14

    .line 268
    .local v14, "results":[Landroid/content/ContentProviderResult;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 269
    aget-object v13, v14, v8

    .line 270
    .local v13, "result":Landroid/content/ContentProviderResult;
    iget-object v0, v13, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-gtz v17, :cond_5

    .line 271
    const-string v17, "MediaFileUtils"

    const-string v18, "No rows affected while executing operation [%s]"

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 273
    :cond_5
    iget-object v0, v13, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    add-int v15, v15, v17

    goto :goto_4

    .line 276
    .end local v8    # "i":I
    .end local v13    # "result":Landroid/content/ContentProviderResult;
    .end local v14    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v5

    .line 278
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "MediaFileUtils"

    const-string v18, "delete from provider error %s, %s"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v5}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    new-instance v12, Ljava/util/HashMap;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 280
    .local v12, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "deleteFileCount"

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v17, "errorMsg"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v17, "file_handle"

    const-string v18, "error_execute_media_provider"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string v17, "MediaFileUtils"

    const-string v18, "Done deleting %s files from provider, deleted %s files, check delete result %s\nOperation count %s,  affected %s rows"

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    .line 287
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    .line 286
    invoke-static/range {v17 .. v19}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return v15
.end method

.method public static varargs deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I
    .locals 4
    .param p0, "fileType"    # Lcom/miui/gallery/util/MediaFileUtils$FileType;
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p0, :cond_0

    .line 117
    sget-object p0, Lcom/miui/gallery/util/MediaFileUtils$FileType;->NORMAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    .line 120
    :cond_0
    sget-object v1, Lcom/miui/gallery/util/MediaFileUtils$1;->$SwitchMap$com$miui$gallery$util$MediaFileUtils$FileType:[I

    invoke-virtual {p0}, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    const-string v1, "MediaFileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported file type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return v0

    .line 122
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile(I[Ljava/io/File;)I

    move-result v0

    goto :goto_0

    .line 129
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile(I[Ljava/io/File;)I

    move-result v0

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-static {v0, p1}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFile(I[Ljava/io/File;)I

    move-result v0

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static varargs deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/lang/String;)I
    .locals 4
    .param p0, "fileType"    # Lcom/miui/gallery/util/MediaFileUtils$FileType;
    .param p1, "filePaths"    # [Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 91
    :cond_0
    const/4 v2, 0x0

    .line 101
    :goto_0
    return v2

    .line 93
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Ljava/io/File;

    .line 94
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 95
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_2
    new-instance v2, Ljava/io/File;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    goto :goto_2

    .line 101
    :cond_3
    invoke-static {p0, v0}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    move-result v2

    goto :goto_0
.end method

.method public static varargs triggerMediaScan(Z[Ljava/io/File;)V
    .locals 8
    .param p0, "onlySystemScan"    # Z
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 83
    :cond_0
    return-void

    .line 65
    :cond_1
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 66
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_2

    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    const-string v4, "MediaFileUtils"

    const-string v5, "%s is directory, skip"

    invoke-static {v4, v5, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 77
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.miui.gallery.extra.trigger_scan"

    invoke-virtual {v1, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    const-string v4, "MediaFileUtils"

    const-string v5, "Trigger media scan for file %s, on system scan %s"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

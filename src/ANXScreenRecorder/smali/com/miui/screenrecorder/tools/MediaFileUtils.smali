.class public Lcom/miui/screenrecorder/tools/MediaFileUtils;
.super Ljava/lang/Object;
.source "MediaFileUtils.java"


# static fields
.field private static final MEDIA_URL:Ljava/lang/String; = "content://media/"

.field private static final SCREEN_RECORDER_DIR:Ljava/lang/String; = "ScreenRecorder"

.field private static final TAG:Ljava/lang/String; = "MediaFileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTmpFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    invoke-static {p0}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->convertTmpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "newFilePath":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method public static convertTmpFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 163
    :cond_0
    const-string v2, ""

    .line 169
    :goto_0
    return-object v2

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "fileSb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ge v1, v2, :cond_2

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public static varargs deleteFile([Ljava/io/File;)I
    .locals 7
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "count":I
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v1, p0, v5

    .line 112
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 111
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    move-result v2

    .line 134
    .local v2, "result":Z
    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :goto_3
    add-int/2addr v0, v3

    goto :goto_1

    .line 128
    .end local v2    # "result":Z
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 129
    .restart local v2    # "result":Z
    if-nez v2, :cond_2

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_2

    :cond_4
    move v3, v4

    .line 134
    goto :goto_3

    .line 136
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "result":Z
    :cond_5
    return v0
.end method

.method private static getExtSDCardPaths()Ljava/util/List;
    .locals 25
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v15, "resultPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 237
    .local v11, "mainPath":Ljava/lang/String;
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x1c

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v15

    .line 244
    :cond_1
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "storage"

    .line 245
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    .line 247
    .local v10, "mStorageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    const-string v21, "android.os.storage.StorageVolume"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 248
    .local v19, "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-string v22, "getVolumeList"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 249
    .local v6, "getVolumeList":Ljava/lang/reflect/Method;
    const-string v21, "getPath"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 250
    .local v4, "getPath":Ljava/lang/reflect/Method;
    const-string v21, "isRemovable"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 251
    .local v8, "isRemovable":Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 252
    .local v14, "result":Ljava/lang/Object;
    invoke-static {v14}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    .line 253
    .local v9, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_0

    .line 254
    invoke-static {v14, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v20

    .line 255
    .local v20, "storageVolumeElement":Ljava/lang/Object;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 256
    .local v12, "path":Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 257
    .local v13, "removable":Z
    if-eqz v13, :cond_2

    .line 258
    const-string v21, "android.os.storage.StorageManager"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 259
    .local v18, "storageManagerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v21, "getVolumeState"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 261
    .local v5, "getState":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "storage"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageManager;

    .line 262
    .local v17, "storageManager":Landroid/os/storage/StorageManager;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v12, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 263
    .local v16, "state":Ljava/lang/String;
    const-string v21, "mounted"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 264
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v5    # "getState":Ljava/lang/reflect/Method;
    .end local v16    # "state":Ljava/lang/String;
    .end local v17    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v18    # "storageManagerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 268
    .end local v4    # "getPath":Ljava/lang/reflect/Method;
    .end local v6    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v7    # "i":I
    .end local v8    # "isRemovable":Ljava/lang/reflect/Method;
    .end local v9    # "length":I
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "removable":Z
    .end local v14    # "result":Ljava/lang/Object;
    .end local v19    # "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "storageVolumeElement":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 269
    .local v3, "e":Ljava/lang/Exception;
    const-string v21, "MediaFileUtils"

    const-string v22, "getSDPath() failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method private static getExternalStorage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getExtSDCardPaths()Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "externalStorageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 215
    invoke-static {}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getConfig()Lcom/miui/screenrecorder/config/ScreenRecorderConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/screenrecorder/config/ScreenRecorderConfig;->getStorageLocation()I

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 218
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getMediaDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getExternalStorage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "dcimDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "dcim":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const-string v3, "MediaFileUtils"

    const-string v4, "DCIM directory is created"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "ScreenRecorder"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v2, "srDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    const-string v3, "MediaFileUtils"

    const-string v4, "Method - getMediaDir() : MI Log directory is created"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    :goto_1
    return-object v2

    .line 69
    .end local v2    # "srDir":Ljava/io/File;
    :cond_2
    const-string v3, "MediaFileUtils"

    const-string v4, "DCIM directory create fail"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .restart local v2    # "srDir":Ljava/io/File;
    :cond_3
    const-string v3, "MediaFileUtils"

    const-string v4, "Method - getMediaDir() : MI Log directory create fail"

    invoke-static {v3, v4}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getMediaDirList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, "srDirLists":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getExtSDCardPaths()Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "externalStorageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "externalStorage":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "dcimDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v6, "ScreenRecorder"

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v3, "srDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    const-string v6, "MediaFileUtils"

    const-string v7, "Method - getMediaDir() : MI Log directory is created"

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_1
    const-string v6, "MediaFileUtils"

    const-string v7, "Method - getMediaDir() : MI Log directory create fail"

    invoke-static {v6, v7}, Lcom/miui/screenrecorder/tools/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local v0    # "dcimDir":Ljava/lang/String;
    .end local v1    # "externalStorage":Ljava/lang/String;
    .end local v3    # "srDir":Ljava/io/File;
    :cond_2
    return-object v4
.end method

.method public static getMediaDirStrList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getMediaDirList()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "fileStringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method private static getSaveFile()Ljava/io/File;
    .locals 10

    .prologue
    .line 44
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getMediaDir()Ljava/io/File;

    move-result-object v6

    .line 45
    .local v6, "srDir":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 46
    .local v2, "millis":J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 48
    .local v5, "sf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screenrecorder-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    rem-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v4, "newSRFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_0

    .line 53
    const-string v7, "MediaFileUtils"

    const-string v8, "create screen recorder file failed."

    invoke-static {v7, v8}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v4    # "newSRFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 54
    .restart local v4    # "newSRFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "MediaFileUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create screen recorder file failed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getSavePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getSaveFile()Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "srDir":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 40
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isExtraSd()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getExtSDCardPaths()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "externalStorageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOverMaxFileSize(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, "isOverMaxFileSize":Z
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 202
    .local v2, "size":J
    const-wide v4, 0xed800000L

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 203
    const/4 v1, 0x1

    .line 208
    .end local v2    # "size":J
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MediaFileUtils"

    const-string v5, "The file parameter is illegality!"

    invoke-static {v4, v5}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isVideoUri(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "newFilePath"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "originFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "lastFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "MediaFileUtils"

    const-string v3, "originfile.renameTo success"

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v2, "MediaFileUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originfile.renameTo fail originfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lastfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/screenrecorder/tools/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveToCloud(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.gallery.SAVE_TO_CLOUD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.miui.gallery"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 190
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 192
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.miui.gallery"

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 194
    :cond_0
    const-string v3, "extra_file_path"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public static scanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "scanIntent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    return-void
.end method

.method public static scanFolder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "scanIntent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

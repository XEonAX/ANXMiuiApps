.class public Lcom/miui/gallery/util/FileCompressTask;
.super Ljava/lang/Object;
.source "FileCompressTask.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;
    }
.end annotation


# instance fields
.field private mCompressFolder:Ljava/lang/String;

.field private mCompressItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCompressListener:Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;Ljava/lang/String;)V
    .locals 2
    .param p2, "listener"    # Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;
    .param p3, "compressFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/gallery/util/FileCompressTask;->mCompressItems:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 26
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 27
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/util/FileCompressTask;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 28
    iput-object p2, p0, Lcom/miui/gallery/util/FileCompressTask;->mCompressListener:Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    .line 29
    iput-object p3, p0, Lcom/miui/gallery/util/FileCompressTask;->mCompressFolder:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/util/FileCompressTask;)Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/util/FileCompressTask;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/gallery/util/FileCompressTask;->mCompressListener:Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    return-object v0
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 22
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressItems:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressItems:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .line 36
    .local v15, "totalSize":I
    const/4 v10, 0x0

    .line 37
    .local v10, "handledSize":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v12, "success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v7, "fails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressFolder:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/util/StorageUtils;->getSafePathInPriorStorageForUnadapted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v5, "compressFolder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 42
    sget-object v17, Lcom/miui/gallery/util/MediaFileUtils$FileType;->FOLDER:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 44
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v5, v0}, Lcom/miui/gallery/util/FileUtils;->createFolder(Ljava/io/File;Z)Z

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressItems:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 46
    .local v16, "uri":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/threadpool/ThreadPool$JobContext;->isCancelled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 47
    const/16 v17, 0x0

    .line 90
    .end local v5    # "compressFolder":Ljava/io/File;
    .end local v7    # "fails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "handledSize":I
    .end local v12    # "success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "totalSize":I
    .end local v16    # "uri":Ljava/lang/String;
    :goto_1
    return-object v17

    .line 49
    .restart local v5    # "compressFolder":Ljava/io/File;
    .restart local v7    # "fails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "handledSize":I
    .restart local v12    # "success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "totalSize":I
    .restart local v16    # "uri":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v18

    sget-object v19, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 50
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/miui/gallery/util/BitmapUtils;->isValidate(Landroid/graphics/Bitmap;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 51
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 52
    .local v14, "title":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v13, "tarFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 54
    new-instance v13, Ljava/io/File;

    .end local v13    # "tarFile":Ljava/io/File;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .restart local v13    # "tarFile":Ljava/io/File;
    :cond_3
    const/4 v8, 0x0

    .line 58
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x5a

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 60
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    invoke-static {v9}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 66
    add-int/lit8 v10, v10, 0x1

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressListener:Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 68
    const/high16 v18, 0x3f800000    # 1.0f

    int-to-float v0, v10

    move/from16 v19, v0

    mul-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 69
    .local v11, "progress":F
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v18

    new-instance v19, Lcom/miui/gallery/util/FileCompressTask$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/miui/gallery/util/FileCompressTask$1;-><init>(Lcom/miui/gallery/util/FileCompressTask;F)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 62
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "progress":F
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 63
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 66
    add-int/lit8 v10, v10, 0x1

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressListener:Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 68
    const/high16 v18, 0x3f800000    # 1.0f

    int-to-float v0, v10

    move/from16 v19, v0

    mul-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 69
    .restart local v11    # "progress":F
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v18

    new-instance v19, Lcom/miui/gallery/util/FileCompressTask$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/miui/gallery/util/FileCompressTask$1;-><init>(Lcom/miui/gallery/util/FileCompressTask;F)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "progress":F
    .end local v13    # "tarFile":Ljava/io/File;
    .end local v14    # "title":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 65
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "tarFile":Ljava/io/File;
    .restart local v14    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :goto_3
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 66
    add-int/lit8 v10, v10, 0x1

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressListener:Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 68
    const/high16 v18, 0x3f800000    # 1.0f

    int-to-float v0, v10

    move/from16 v19, v0

    mul-float v18, v18, v19

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 69
    .restart local v11    # "progress":F
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v18

    new-instance v19, Lcom/miui/gallery/util/FileCompressTask$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/miui/gallery/util/FileCompressTask$1;-><init>(Lcom/miui/gallery/util/FileCompressTask;F)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .end local v11    # "progress":F
    :cond_5
    throw v17

    .line 80
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "tarFile":Ljava/io/File;
    .end local v14    # "title":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/util/FileCompressTask;->mCompressListener:Lcom/miui/gallery/util/FileCompressTask$OnCompressListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 81
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v17

    new-instance v18, Lcom/miui/gallery/util/FileCompressTask$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v7}, Lcom/miui/gallery/util/FileCompressTask$2;-><init>(Lcom/miui/gallery/util/FileCompressTask;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 90
    .end local v5    # "compressFolder":Ljava/io/File;
    .end local v7    # "fails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "handledSize":I
    .end local v12    # "success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "totalSize":I
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 65
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "compressFolder":Ljava/io/File;
    .restart local v7    # "fails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "handledSize":I
    .restart local v12    # "success":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "tarFile":Ljava/io/File;
    .restart local v14    # "title":Ljava/lang/String;
    .restart local v15    # "totalSize":I
    .restart local v16    # "uri":Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 62
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

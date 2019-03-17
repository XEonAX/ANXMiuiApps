.class public Lcom/miui/gallery/cleaner/slim/SlimController;
.super Ljava/lang/Object;
.source "SlimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/slim/SlimController$OnSlimDoneListener;,
        Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;,
        Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;,
        Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;,
        Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;,
        Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorker;
    }
.end annotation


# static fields
.field public static final TIME_COST_STAGE:[I

.field private static instance:Lcom/miui/gallery/cleaner/slim/SlimController;


# instance fields
.field private mIds:[J

.field private volatile mIsRemainItemsToInit:Z

.field private mObserverHolder:Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

.field private mReleaseSize:J

.field private mRemainCount:I

.field private mRemainItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainItemsLock:Ljava/lang/Object;

.field private mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/cleaner/slim/SlimController;->TIME_COST_STAGE:[I

    return-void

    :array_0
    .array-data 4
        0x5
        0xa
        0xf
        0x19
        0x28
        0x3c
        0xb4
        0x12c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mObserverHolder:Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItemsLock:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/cleaner/slim/SlimController;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mReleaseSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/cleaner/slim/SlimController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mReleaseSize:J

    return-wide p1
.end method

.method static synthetic access$1110(Lcom/miui/gallery/cleaner/slim/SlimController;)I
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/cleaner/slim/SlimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->onSlimPaused()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/cleaner/slim/SlimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->onSlimResumed()V

    return-void
.end method

.method static synthetic access$1602(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;)Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p1, "x1"    # Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/cleaner/slim/SlimController;)Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mObserverHolder:Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/cleaner/slim/SlimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIsRemainItemsToInit:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/cleaner/slim/SlimController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIsRemainItemsToInit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItemsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/cleaner/slim/SlimController;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItems:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/cleaner/slim/SlimController;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItems:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/cleaner/slim/SlimController;)[J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIds:[J

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/cleaner/slim/SlimController;[J)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p1, "x1"    # [J

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/gallery/cleaner/slim/SlimController;->queryMediaItem([J)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/cleaner/slim/SlimController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miui/gallery/cleaner/slim/SlimController;->onSlimProgress(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;Ljava/util/ArrayList;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/slim/SlimController;
    .param p1, "x1"    # Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cleaner/slim/SlimController;->handleSlim(Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static buildThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/gallery/cloud/ThumbnailMetaWriter;)Ljava/io/File;
    .locals 22
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "localFilePath"    # Ljava/lang/String;
    .param p3, "serverType"    # I
    .param p4, "writer"    # Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    .prologue
    .line 418
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 419
    :cond_0
    const-string v18, "SlimController"

    const-string v19, "illegal args: fileName=%s, sha1=%s, localFilePath=%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    const/16 v16, 0x0

    .line 488
    :cond_1
    :goto_0
    return-object v16

    .line 423
    :cond_2
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v10, "localFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v18

    if-nez v18, :cond_3

    .line 425
    const-string v18, "SlimController"

    const-string v19, "file not exists: %s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    const/16 v16, 0x0

    goto :goto_0

    .line 430
    :cond_3
    const-string v6, "jpg"

    .line 431
    .local v6, "THUMBNAIL_EXT":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 432
    .local v17, "thumbnailFileName":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v16, "thumbnailFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 437
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentData(Ljava/lang/String;)Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-result-object v7

    .line 438
    .local v7, "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;

    move-result-object v9

    .line 439
    .local v9, "exifSha1":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 441
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 443
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/miui/gallery/util/FileUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 445
    new-instance v16, Ljava/io/File;

    .end local v16    # "thumbnailFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v7    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v9    # "exifSha1":Ljava/lang/String;
    .restart local v16    # "thumbnailFile":Ljava/io/File;
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 455
    .local v15, "tempThumbnailName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 456
    .local v14, "tempThumbnailFilePath":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 458
    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v18

    .line 457
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v15, v3}, Lcom/miui/gallery/cloud/CloudUtils;->buildBigThumbnailForImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/cloud/ThumbnailMetaWriter;)Ljava/lang/String;

    move-result-object v14

    .line 464
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 465
    const-string v18, "SlimController"

    const-string v19, "fail to build thumbnail. args: fileName=%s, sha1=%s, localFilePath=%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 438
    .end local v14    # "tempThumbnailFilePath":Ljava/lang/String;
    .end local v15    # "tempThumbnailName":Ljava/lang/String;
    .restart local v7    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 447
    .end local v7    # "data":Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .end local v16    # "thumbnailFile":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 448
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 471
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v14    # "tempThumbnailFilePath":Ljava/lang/String;
    .restart local v15    # "tempThumbnailName":Ljava/lang/String;
    .restart local v16    # "thumbnailFile":Ljava/io/File;
    :cond_7
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .local v13, "tempThumbnailFile":Ljava/io/File;
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/miui/gallery/util/FileUtils;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 475
    const-string v18, "SlimController"

    const-string v19, "fail to rename %s to %s!"

    invoke-virtual {v13}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    sget-object v18, Lcom/miui/gallery/util/MediaFileUtils$FileType;->TEMP:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 478
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v12, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 481
    .local v11, "movePart":Z
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 482
    invoke-static/range {p2 .. p2}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_8

    const/4 v11, 0x1

    .line 486
    :goto_2
    const-string v18, "move_part"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string/jumbo v18, "slim"

    const-string/jumbo v19, "slim_error"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 488
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 482
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 484
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/miui/gallery/util/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v11

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/cleaner/slim/SlimController;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/miui/gallery/cleaner/slim/SlimController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/cleaner/slim/SlimController;->instance:Lcom/miui/gallery/cleaner/slim/SlimController;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController;

    invoke-direct {v0}, Lcom/miui/gallery/cleaner/slim/SlimController;-><init>()V

    sput-object v0, Lcom/miui/gallery/cleaner/slim/SlimController;->instance:Lcom/miui/gallery/cleaner/slim/SlimController;

    .line 58
    :cond_0
    sget-object v0, Lcom/miui/gallery/cleaner/slim/SlimController;->instance:Lcom/miui/gallery/cleaner/slim/SlimController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleSlim(Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;Ljava/util/ArrayList;)J
    .locals 24
    .param p1, "item"    # Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/util/deleterecorder/DeleteRecord;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 349
    .local p2, "deleteRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/gallery/util/deleterecorder/DeleteRecord;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    const-wide/16 v16, 0x0

    .line 405
    :cond_0
    :goto_0
    return-wide v16

    .line 353
    :cond_1
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v4, "localFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 355
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 362
    .local v14, "localFileSize":J
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->sha1:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 363
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v13, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 365
    .local v18, "thumbnailFileSize":J
    const-string v5, "SlimController"

    const-string/jumbo v6, "thumbnail file already exits %s"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 367
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 368
    const-string v5, "SlimController"

    const-string v6, "delete localFile: %s"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    new-instance v5, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v6, 0x2d

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    const-string v8, "SlimController"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_3
    move-object/from16 v0, p1

    iget v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->id:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/cleaner/slim/SlimController;->saveToDB(ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    sub-long v16, v14, v18

    goto/16 :goto_0

    .line 376
    .end local v13    # "thumbnailFile":Ljava/io/File;
    .end local v18    # "thumbnailFileSize":J
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/gallery/util/FileUtils;->getSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->sha1:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 377
    move-object/from16 v0, p1

    iget v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->id:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/cleaner/slim/SlimController;->saveToDB(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 381
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->fileName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->sha1:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->serverType:I

    move/from16 v23, v0

    new-instance v5, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->sha1:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->fileName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->mixDateTime:J

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->dateTime:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->gpsDateStamp:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->gpsTimeStamp:Ljava/lang/String;

    invoke-direct/range {v5 .. v12}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3, v5}, Lcom/miui/gallery/cleaner/slim/SlimController;->buildThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/gallery/cloud/ThumbnailMetaWriter;)Ljava/io/File;

    move-result-object v13

    .line 385
    .restart local v13    # "thumbnailFile":Ljava/io/File;
    if-eqz v13, :cond_7

    .line 386
    new-instance v5, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;

    const/16 v6, 0x2d

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    const-string v8, "SlimController"

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/gallery/util/deleterecorder/DeleteRecord;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 389
    sget-object v5, Lcom/miui/gallery/util/MediaFileUtils$FileType;->ORIGINAL:Lcom/miui/gallery/util/MediaFileUtils$FileType;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->deleteFileType(Lcom/miui/gallery/util/MediaFileUtils$FileType;[Ljava/io/File;)I

    .line 390
    const-string v5, "SlimController"

    const-string v6, "delete localFile: %s"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    :cond_6
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    .line 393
    const-string v5, "SlimController"

    const-string/jumbo v6, "successfully slim %s to %s"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    move-object/from16 v0, p1

    iget v5, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->id:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->thumbnailFilePath:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/cleaner/slim/SlimController;->saveToDB(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    invoke-static {v5, v6}, Lcom/miui/gallery/util/MediaFileUtils;->triggerMediaScan(Z[Ljava/io/File;)V

    .line 397
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 398
    .restart local v18    # "thumbnailFileSize":J
    sub-long v16, v14, v18

    .line 399
    .local v16, "slimSize":J
    const-wide/16 v6, 0x0

    cmp-long v5, v16, v6

    if-gtz v5, :cond_0

    .line 400
    const-string v5, "SlimController"

    const-string/jumbo v6, "slim size < 0: %s"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->localFilePath:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 405
    .end local v16    # "slimSize":J
    .end local v18    # "thumbnailFileSize":J
    :cond_7
    const-wide/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private onSlimPaused()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/slim/SlimController$2;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method private onSlimProgress(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 178
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/cleaner/slim/SlimController$1;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;I)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private onSlimResumed()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cleaner/slim/SlimController$3;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    invoke-static {v0}, Lcom/miui/gallery/threadpool/ThreadManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private queryMediaItem([J)Ljava/util/LinkedList;
    .locals 10
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;->PROJECTION:[Ljava/lang/String;

    const-string v3, "%s IN (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string v8, ","

    .line 332
    invoke-static {p1}, Lcom/miui/gallery/util/MiscUtil;->arrayToList([J)Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/miui/gallery/cleaner/slim/SlimController$4;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cleaner/slim/SlimController$4;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;)V

    move-object v5, v4

    .line 330
    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedList;

    .line 345
    .local v7, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/miui/gallery/cleaner/slim/SlimController$MediaItem;>;"
    return-object v7
.end method

.method private static saveToDB(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "thumbnailFilePath"    # Ljava/lang/String;
    .param p2, "localFilePath"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "thumbnailFile"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "localFile"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 414
    return-void
.end method


# virtual methods
.method public declared-synchronized getReleaseSize()J
    .locals 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mReleaseSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemainCount()I
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSlimCount()I
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->getTotalCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->getRemainCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTime()J
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalCount()I
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIds:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIds:[J

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSlimPaused()Z
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->isPaused()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSlimStarted()Z
    .locals 4

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->isSlimming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->getReleaseSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSlimming()Z
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->pause()V

    .line 95
    const-string v0, "SlimController"

    const-string v1, "pause slim"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerObserver(Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mObserverHolder:Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->resume()V

    .line 88
    const-string v0, "SlimController"

    const-string v1, "resume slim"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start([J)V
    .locals 2
    .param p1, "ids"    # [J

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/cleaner/slim/SlimController;->stop()V

    .line 71
    if-eqz p1, :cond_0

    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_1
    const-string v0, "SlimController"

    const-string/jumbo v1, "start slim"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIds:[J

    .line 76
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIds:[J

    array-length v0, v0

    iput v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainCount:I

    .line 77
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItemsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIsRemainItemsToInit:Z

    .line 79
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    :try_start_3
    new-instance v0, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;-><init>(Lcom/miui/gallery/cleaner/slim/SlimController;Lcom/miui/gallery/cleaner/slim/SlimController$1;)V

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->start()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mStartTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "SlimController"

    const-string/jumbo v1, "stop slim"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mSlimWorkerPool:Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;

    invoke-virtual {v0}, Lcom/miui/gallery/cleaner/slim/SlimController$SlimWorkerPool;->stop()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIds:[J

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainCount:I

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mReleaseSize:J

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mStartTime:J

    .line 112
    iget-object v1, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItemsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItems:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItems:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 116
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mRemainItems:Ljava/util/LinkedList;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mIsRemainItemsToInit:Z

    .line 118
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterObserver(Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserver;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/cleaner/slim/SlimController;->mObserverHolder:Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;

    iget-object v0, v0, Lcom/miui/gallery/cleaner/slim/SlimController$SpaceSlimObserverHolder;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

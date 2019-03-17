.class public Lcom/miui/gallery/cloud/ThumbnailMetaWriter;
.super Ljava/lang/Object;
.source "ThumbnailMetaWriter.java"


# instance fields
.field private final mDateTime:Ljava/lang/String;

.field private final mGPSDateStamp:Ljava/lang/String;

.field private final mGPSTimeStamp:Ljava/lang/String;

.field private final mMixDateTime:J

.field private final mOriginalFileName:Ljava/lang/String;

.field private final mSha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/DBImage;)V
    .locals 2
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;-><init>(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/DBImage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dbImage"    # Lcom/miui/gallery/data/DBImage;
    .param p2, "sha1"    # Ljava/lang/String;
    .param p3, "originalFileName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mOriginalFileName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getMixedDateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    .line 42
    const-string v0, "dateTime"

    invoke-virtual {p1, v0}, Lcom/miui/gallery/data/DBImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    .line 43
    const-string v0, "GPSDateStamp"

    invoke-virtual {p1, v0}, Lcom/miui/gallery/data/DBImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    .line 44
    const-string v0, "GPSTimeStamp"

    invoke-virtual {p1, v0}, Lcom/miui/gallery/data/DBImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "originalFileName"    # Ljava/lang/String;
    .param p3, "mixDateTime"    # J
    .param p5, "dateTime"    # Ljava/lang/String;
    .param p6, "gpsDateStamp"    # Ljava/lang/String;
    .param p7, "gpsTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mOriginalFileName:Ljava/lang/String;

    .line 51
    iput-wide p3, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    .line 52
    iput-object p5, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)Z
    .locals 18
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "exception":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 71
    .local v8, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 72
    .local v5, "exif":Landroid/media/ExifInterface;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/DocumentProviderUtils;->needUseDocumentProvider(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 74
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v11

    .line 73
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/miui/gallery/util/DocumentProviderUtils;->openFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 75
    if-nez v8, :cond_0

    .line 76
    const-string v11, "ThumbnailMetaWriter"

    const-string v14, "Failed to open file descriptor  of %s"

    move-object/from16 v0, p1

    invoke-static {v11, v14, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const/4 v11, 0x0

    .line 132
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    :goto_0
    return v11

    .line 79
    :cond_0
    :try_start_1
    sget-object v11, Lcom/miui/gallery/util/ExifUtil;->sMediaExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-interface {v11, v14}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/io/FileDescriptor;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/media/ExifInterface;

    move-object v5, v0

    .line 83
    :goto_1
    new-instance v11, Lcom/miui/gallery/util/ExifUtil$UserCommentData;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mOriginalFileName:Ljava/lang/String;

    .line 84
    invoke-static {v15}, Lcom/miui/gallery/util/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v5, v11}, Lcom/miui/gallery/util/ExifUtil;->setUserCommentData(Landroid/media/ExifInterface;Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V

    .line 93
    const-wide/16 v12, -0x1

    .line 94
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 95
    const-string v11, "GPSDateStamp"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    invoke-virtual {v5, v11, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v11, "GPSTimeStamp"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    invoke-virtual {v5, v11, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSDateStamp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mGPSTimeStamp:Ljava/lang/String;

    invoke-static {v11, v14}, Lcom/miui/gallery/util/GalleryTimeUtils;->getGpsDateTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 99
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/miui/gallery/util/ExifUtil;->setDateTime(Landroid/media/ExifInterface;Ljava/lang/String;)V

    .line 101
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gez v11, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    invoke-static {v11}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDateTime(Ljava/lang/String;)J

    move-result-wide v12

    .line 107
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mDateTime:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v5}, Lcom/miui/gallery/util/ExifUtil;->getDateTime(Landroid/media/ExifInterface;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v11, v14, v16

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-ltz v11, :cond_4

    .line 108
    :cond_3
    invoke-static {}, Lcom/miui/gallery/util/GalleryTimeUtils;->getDefaultDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v11

    new-instance v14, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "dateTime":Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/miui/gallery/util/ExifUtil;->setDateTime(Landroid/media/ExifInterface;Ljava/lang/String;)V

    .line 110
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gez v11, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mMixDateTime:J

    .line 114
    .end local v2    # "dateTime":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "newSha1":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/gallery/cloud/ThumbnailMetaWriter;->mSha1:Ljava/lang/String;

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 119
    :cond_6
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-ltz v11, :cond_7

    .line 120
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v10, "thumbnailFile":Ljava/io/File;
    invoke-virtual {v10, v12, v13}, Ljava/io/File;->setLastModified(J)Z

    move-result v9

    .line 122
    .local v9, "succ":Z
    if-nez v9, :cond_7

    .line 123
    const-string v11, "ThumbnailMetaWriter"

    const-string v14, "failed to set last modified for thumbnail"

    invoke-static {v11, v14}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v9    # "succ":Z
    .end local v10    # "thumbnailFile":Ljava/io/File;
    :cond_7
    const/4 v11, 0x1

    .line 132
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 81
    .end local v6    # "newSha1":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_8
    :try_start_2
    sget-object v11, Lcom/miui/gallery/util/ExifUtil;->sMediaExifCreator:Lcom/miui/gallery/util/ExifUtil$ExifCreator;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/miui/gallery/util/ExifUtil$ExifCreator;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/media/ExifInterface;

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 132
    .restart local v6    # "newSha1":Ljava/lang/String;
    .restart local v12    # "time":J
    :cond_9
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 135
    .end local v6    # "newSha1":Ljava/lang/String;
    .end local v12    # "time":J
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "model"

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v7, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v11, "version"

    sget-object v14, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v7, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v11, "path"

    move-object/from16 v0, p1

    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v14, "exception"

    if-eqz v4, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-interface {v7, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v11, "exif_parser"

    const-string v14, "exif_write_error"

    invoke-static {v11, v14, v7}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 128
    .end local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v3

    .line 130
    :try_start_3
    const-string v11, "ThumbnailMetaWriter"

    invoke-static {v11, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    .line 139
    .restart local v7    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string v11, ""

    goto :goto_3
.end method

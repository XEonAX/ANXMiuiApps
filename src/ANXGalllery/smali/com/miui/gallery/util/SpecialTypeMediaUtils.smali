.class public Lcom/miui/gallery/util/SpecialTypeMediaUtils;
.super Ljava/lang/Object;
.source "SpecialTypeMediaUtils.java"


# static fields
.field private static final DEBUG_ENABLE:Z

.field private static final SPECIAL_TYPE_MEDIA_STRATEGY:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "SpecialTypeMedia"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->DEBUG_ENABLE:Z

    .line 33
    new-instance v0, Lcom/miui/gallery/util/SpecialTypeMediaUtils$1;

    invoke-direct {v0}, Lcom/miui/gallery/util/SpecialTypeMediaUtils$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->SPECIAL_TYPE_MEDIA_STRATEGY:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->DEBUG_ENABLE:Z

    return v0
.end method

.method private static extractFrameRate(Ljava/lang/String;)I
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    .line 129
    :cond_0
    :goto_0
    return v3

    .line 106
    :cond_1
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 107
    .local v1, "extractor":Landroid/media/MediaExtractor;
    const/4 v3, 0x0

    .line 109
    .local v3, "frameRate":I
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    .line 111
    .local v6, "numTracks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 112
    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 113
    .local v2, "format":Landroid/media/MediaFormat;
    const-string v7, "mime"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "mime":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "video/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 115
    const-string v7, "frame-rate"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    const-string v7, "frame-rate"

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 124
    .end local v2    # "format":Landroid/media/MediaFormat;
    .end local v5    # "mime":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 126
    .end local v4    # "i":I
    .end local v6    # "numTracks":I
    :goto_2
    sget-boolean v7, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->DEBUG_ENABLE:Z

    if-eqz v7, :cond_0

    .line 127
    const-string v7, "SpecialTypeMediaUtils"

    const-string v8, "path [%s] frameRate [%d]"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, p0, v9}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    .restart local v2    # "format":Landroid/media/MediaFormat;
    .restart local v4    # "i":I
    .restart local v5    # "mime":Ljava/lang/String;
    .restart local v6    # "numTracks":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 121
    .end local v2    # "format":Landroid/media/MediaFormat;
    .end local v4    # "i":I
    .end local v5    # "mime":Ljava/lang/String;
    .end local v6    # "numTracks":I
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    throw v7
.end method

.method private static is960FpsVideo(Ljava/lang/String;)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 92
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/jcodec/movtool/MetadataEditor;->createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;

    move-result-object v1

    .line 93
    .local v1, "editor":Lorg/jcodec/movtool/MetadataEditor;
    invoke-virtual {v1}, Lorg/jcodec/movtool/MetadataEditor;->getKeyedMeta()Ljava/util/Map;

    move-result-object v2

    .line 94
    .local v2, "keyedMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jcodec/containers/mp4/boxes/MetaValue;>;"
    if-eqz v2, :cond_0

    .line 95
    const-string v5, "com.xiaomi.capture_framerate"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jcodec/containers/mp4/boxes/MetaValue;

    .line 96
    .local v3, "metadata":Lorg/jcodec/containers/mp4/boxes/MetaValue;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->getInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x3c0

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    .line 101
    .end local v1    # "editor":Lorg/jcodec/movtool/MetadataEditor;
    .end local v2    # "keyedMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jcodec/containers/mp4/boxes/MetaValue;>;"
    .end local v3    # "metadata":Lorg/jcodec/containers/mp4/boxes/MetaValue;
    :cond_0
    :goto_0
    return v4

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMotionPhoto(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specialTypeFlags"    # J

    .prologue
    .line 138
    const-wide/16 v0, 0x20

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->isDeviceSupportMotionPhoto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRefocusSupported(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specialTypeFlags"    # J

    .prologue
    .line 133
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/miui/extraphoto/sdk/ExtraPhotoSDK;->isDeviceSupportRefocus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFlagsForImage(Ljava/lang/String;)J
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 47
    .local v4, "start":J
    const-wide/16 v2, 0x0

    .line 48
    .local v2, "specialTypeFlags":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/util/FileMimeUtil;->hasExif(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    :try_start_0
    new-instance v1, Lcom/miui/gallery3d/exif/ExifInterface;

    invoke-direct {v1}, Lcom/miui/gallery3d/exif/ExifInterface;-><init>()V

    .line 51
    .local v1, "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    invoke-virtual {v1, p0}, Lcom/miui/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Lcom/miui/gallery/util/ExifUtil;->supportRefocus(Lcom/miui/gallery3d/exif/ExifInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 53
    const-wide/16 v6, 0x1

    or-long/2addr v2, v6

    .line 61
    .end local v1    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->DEBUG_ENABLE:Z

    if-eqz v6, :cond_1

    .line 62
    const-string v6, "SpecialTypeMediaUtils"

    const-string v7, "parseFlagsForImage costs [%dms], path [%s]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, v8, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    :cond_1
    return-wide v2

    .line 54
    .restart local v1    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/miui/gallery/util/ExifUtil;->isMotionPhoto(Lcom/miui/gallery3d/exif/ExifInterface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    const-wide/16 v6, 0x20

    or-long/2addr v2, v6

    goto :goto_0

    .line 57
    .end local v1    # "exif":Lcom/miui/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseFlagsForVideo(Ljava/lang/String;)J
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "start":J
    const-wide/16 v2, 0x0

    .line 70
    .local v2, "specialTypeFlags":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 71
    sget-object v7, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->SPECIAL_TYPE_MEDIA_STRATEGY:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v7}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    .line 72
    .local v6, "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    invoke-static {p0}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->extractFrameRate(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "frameRate":I
    int-to-long v8, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->getHfr120FpsLowerBound()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    int-to-long v8, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->getHfr120FpsUpperBound()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_2

    .line 74
    const-wide/16 v8, 0x4

    or-long/2addr v2, v8

    .line 84
    .end local v0    # "frameRate":I
    .end local v6    # "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    :cond_0
    :goto_0
    sget-boolean v7, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->DEBUG_ENABLE:Z

    if-eqz v7, :cond_1

    .line 85
    const-string v7, "SpecialTypeMediaUtils"

    const-string v8, "parseFlagsForVideo costs [%dms], flags [%d], path [%s]"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v8, v9, v10, p0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    :cond_1
    return-wide v2

    .line 75
    .restart local v0    # "frameRate":I
    .restart local v6    # "strategy":Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;
    :cond_2
    int-to-long v8, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->getHfr240FpsLowerBound()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    int-to-long v8, v0

    invoke-virtual {v6}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->getHfr240FpsUpperBound()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_3

    .line 76
    const-wide/16 v8, 0x8

    or-long/2addr v2, v8

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {p0}, Lcom/miui/gallery/util/FileMimeUtil;->getMimeTypeByParseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v7, "video/mp4"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/util/SpecialTypeMediaUtils;->is960FpsVideo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    const-wide/16 v8, 0x10

    or-long/2addr v2, v8

    goto :goto_0
.end method

.method public static tryGetHFRIndicatorResId(J)I
    .locals 6
    .param p0, "specialTypeFlags"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "resId":I
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v2, 0x8

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 146
    :cond_0
    const v0, 0x7f0202e2

    .line 150
    :cond_1
    :goto_0
    return v0

    .line 147
    :cond_2
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 148
    const v0, 0x7f0202e0

    goto :goto_0
.end method

.class public Lcom/miui/gallery/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;,
        Lcom/miui/gallery/util/GalleryUtils$QueryHandler;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInternalCacheDir:Ljava/io/File;


# direct methods
.method static synthetic access$000(Landroid/content/ContentProviderClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->releaseSilently(Landroid/content/ContentProviderClient;)V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    .line 123
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static concatAll(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "splitter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/GalleryUtils;->concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatAll(Ljava/util/Collection;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;)Ljava/lang/String;
    .locals 5
    .param p1, "splitter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/util/GalleryUtils$ConcatConverter",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "converter":Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;, "Lcom/miui/gallery/util/GalleryUtils$ConcatConverter<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    :cond_0
    const-string v3, ""

    .line 396
    :goto_0
    return-object v3

    .line 379
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 381
    .local v0, "c":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    .line 384
    if-eqz p2, :cond_4

    invoke-interface {p2, v0}, Lcom/miui/gallery/util/GalleryUtils$ConcatConverter;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "str":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 389
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 390
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 384
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 396
    .end local v0    # "c":Ljava/lang/Object;, "TT;"
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v4, 0x0

    .line 131
    const v0, 0x19000

    .line 132
    .local v0, "BUFFER_SIZE":I
    const v5, 0x19000

    new-array v1, v5, [B

    .line 133
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 135
    .local v2, "byteread":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 136
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 147
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return v4

    .line 138
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    const/4 v4, 0x1

    .line 143
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 144
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static getInternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/miui/gallery/util/GalleryUtils;->sInternalCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/util/GalleryUtils;->sInternalCacheDir:Ljava/io/File;

    .line 177
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/GalleryUtils;->sInternalCacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static needImpunityDeclaration()Z
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/miui/os/FeatureHelper;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static putMixedDateTime(Landroid/content/ContentValues;)V
    .locals 12
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v6, 0x0

    .line 194
    const-string v4, "exifGPSDateStamp"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "exifGpsDateStamp":Ljava/lang/String;
    const-string v4, "exifGPSTimeStamp"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "exifGpsTimeStamp":Ljava/lang/String;
    const-string v4, "exifDateTime"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "exifDateTime":Ljava/lang/String;
    const-string v4, "dateTaken"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 198
    .local v8, "dateTaken":Ljava/lang/Long;
    const-string v4, "dateModified"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 199
    .local v0, "dateModified":Ljava/lang/Long;
    if-eqz v8, :cond_1

    .line 201
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 199
    :cond_0
    invoke-static/range {v1 .. v7}, Lcom/miui/gallery/util/GalleryTimeUtils;->getTakenDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)J

    move-result-wide v10

    .line 203
    .local v10, "mixedDateTime":J
    const-string v4, "mixedDateTime"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    return-void

    .end local v10    # "mixedDateTime":J
    :cond_1
    move-wide v4, v6

    .line 201
    goto :goto_0
.end method

.method public static queryToCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 261
    .local v9, "context":Landroid/content/Context;
    if-nez v9, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 301
    :goto_0
    return-object v1

    .line 265
    :cond_0
    const/4 v7, 0x0

    .line 267
    .local v7, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->isCloudUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.miui.gallery.cloud.provider"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v7

    .line 271
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    .line 272
    .local v0, "provider":Landroid/content/ContentProvider;
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 274
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 275
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 276
    invoke-static {v7}, Lcom/miui/gallery/util/GalleryUtils;->releaseSilently(Landroid/content/ContentProviderClient;)V

    .line 277
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    :cond_1
    move-object v8, v7

    .line 281
    .local v8, "constClient":Landroid/content/ContentProviderClient;
    new-instance v1, Lcom/miui/gallery/util/GalleryUtils$1;

    invoke-direct {v1, v10, v8}, Lcom/miui/gallery/util/GalleryUtils$1;-><init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v0    # "provider":Landroid/content/ContentProvider;
    .end local v8    # "constClient":Landroid/content/ContentProviderClient;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 298
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/miui/gallery/util/GalleryUtils;->releaseSilently(Landroid/content/ContentProviderClient;)V

    .line 299
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const/4 v1, 0x0

    goto :goto_0

    .line 292
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v0    # "provider":Landroid/content/ContentProvider;
    :cond_2
    :try_start_1
    invoke-static {v7}, Lcom/miui/gallery/util/GalleryUtils;->releaseSilently(Landroid/content/ContentProviderClient;)V

    .line 295
    .end local v0    # "provider":Landroid/content/ContentProvider;
    :cond_3
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "actions"    # [Ljava/lang/String;

    .prologue
    .line 462
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/ReceiverUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method private static releaseSilently(Landroid/content/ContentProviderClient;)V
    .locals 1
    .param p0, "client"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 305
    if-eqz p0, :cond_0

    .line 307
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static runOnMainThreadPostDelay(Ljava/lang/Runnable;I)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # I

    .prologue
    .line 496
    if-eqz p0, :cond_1

    .line 497
    sget-object v0, Lcom/miui/gallery/util/GalleryUtils;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/gallery/util/GalleryUtils;->sHandler:Landroid/os/Handler;

    .line 500
    :cond_0
    sget-object v0, Lcom/miui/gallery/util/GalleryUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    sget-object v0, Lcom/miui/gallery/util/GalleryUtils;->sHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    :cond_1
    return-void
.end method

.method public static sIsStorageReady(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 506
    invoke-static {p0}, Lcom/miui/gallery/util/StorageUtils;->isPrimaryStorageWritable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static safeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "outPadding"    # Landroid/graphics/Rect;
    .param p2, "opts"    # Lcom/miui/gallery/data/DecodeUtils$GalleryOptions;

    .prologue
    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 403
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 409
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    .line 412
    :goto_0
    return-object v2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v3, "GalleryUtils"

    const-string v4, "safeDecodeFileDescriptor() failed OOM: "

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 406
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "GalleryUtils"

    const-string v4, "safeDecodeFileDescriptor() failed: "

    invoke-static {v3, v4, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "url"    # Landroid/net/Uri;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 242
    invoke-virtual {v1, p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 245
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static safeExec(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/provider/GalleryDBHelper;->execSQL(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p0, "url"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 186
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static safeInsertImage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p0, "url"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->putMixedDateTime(Landroid/content/ContentValues;)V

    .line 208
    invoke-static {p0, p1}, Lcom/miui/gallery/util/GalleryUtils;->safeInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 319
    .local p5, "handler":Lcom/miui/gallery/util/GalleryUtils$QueryHandler;, "Lcom/miui/gallery/util/GalleryUtils$QueryHandler<TT;>;"
    const/4 v0, 0x0

    .line 321
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/util/GalleryUtils;->queryToCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 322
    invoke-interface {p5, v0}, Lcom/miui/gallery/util/GalleryUtils$QueryHandler;->handle(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_0
    :goto_0
    return-object v2

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 326
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static safeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;
    .locals 12
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/util/GalleryUtils$QueryHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 335
    .local p5, "handler":Lcom/miui/gallery/util/GalleryUtils$QueryHandler;, "Lcom/miui/gallery/util/GalleryUtils$QueryHandler<TT;>;"
    const/4 v10, 0x0

    .line 337
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getInstance()Lcom/miui/gallery/provider/GalleryDBHelper;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/miui/gallery/provider/GalleryDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 339
    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Lcom/miui/gallery/util/GalleryUtils$QueryHandler;->handle(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 343
    if-eqz v10, :cond_0

    .line 344
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_0
    :goto_0
    return-object v1

    .line 340
    :catch_0
    move-exception v11

    .line 341
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    if-eqz v10, :cond_1

    .line 344
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 343
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_2

    .line 344
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 458
    invoke-static {p0, p1}, Lcom/miui/gallery/util/ReceiverUtils;->safeUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    move-result v0

    return v0
.end method

.method public static safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 232
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static safeUpdateImage(Landroid/content/ContentValues;Lcom/miui/gallery/data/DBImage;)I
    .locals 10
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "targetItem"    # Lcom/miui/gallery/data/DBImage;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 212
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->putMixedDateTime(Landroid/content/ContentValues;)V

    .line 214
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getLocalFile()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "localFile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    const-string/jumbo v3, "sha1"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "sha1":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/ExifUtil;->getUserCommentSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "sha1InExif":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const-string v3, "localFile"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 223
    .end local v1    # "sha1":Ljava/lang/String;
    .end local v2    # "sha1InExif":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s=?"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "_id"

    aput-object v7, v6, v8

    .line 224
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBImage;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 223
    invoke-static {v3, p0, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p0, :cond_0

    .line 162
    :goto_0
    return v0

    .line 156
    :cond_0
    const/16 v1, 0x5a

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-static {p2}, Lcom/miui/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/miui/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lcom/miui/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static showProgressDialog(Landroid/content/Context;IIIZ)Landroid/app/ProgressDialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "progressMax"    # I
    .param p4, "cancelable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 439
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, "dialog":Landroid/app/ProgressDialog;
    if-nez p1, :cond_2

    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 441
    if-nez p2, :cond_3

    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 443
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 444
    if-eqz p4, :cond_0

    .line 445
    const/4 v2, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 447
    :cond_0
    if-le p3, v4, :cond_1

    .line 448
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 449
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 451
    :cond_1
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 452
    return-object v0

    .line 440
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
